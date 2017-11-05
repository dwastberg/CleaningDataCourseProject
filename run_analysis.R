library(dplyr)
library(tidyr)
library(readr)

DATADIR <- "UCI HAR Dataset"


load_data <- function(data_file,subject_file,activity_file,features) {
  data <- read_table(file.path(DATADIR,data_file),col_names = FALSE)
  data <- select(data,features)
  names(data) <- mean_std_lables
  
  #add subject and activity data to data frame
  subject_data <- read_table(file.path(DATADIR,subject_file),col_names = c("subject"))
  data <- bind_cols(subject_data,data)
  activity_data <- read_table(file.path(DATADIR,activity_file),col_names = c("activity"))
  bind_cols(data,activity_data)
  
}


#get index of feature lables that containt "mean()" or "std()"
feature_lables <- read_delim(file.path(DATADIR,"features.txt")," ", col_names = FALSE)
feature_lables <- feature_lables$X2
mean_std_features <- grep("(mean\\(\\)|std\\(\\))",feature_lables)

#clean up column lables
mean_std_lables <- feature_lables[mean_std_features]
mean_std_lables <- gsub('\\(\\)',"",mean_std_lables)
mean_std_lables <- gsub('-',"",mean_std_lables)

#get names of actvities
activities <- read_delim(file.path(DATADIR,"activity_labels.txt")," ",col_names = FALSE)
activity_lables <- activities$X2


#load test and training data
training_data <- load_data(file.path("train","X_train.txt"),file.path("train","subject_train.txt"),
                           file.path("train","y_train.txt"),mean_std_features)

test_data <- load_data(file.path("test","X_test.txt"),file.path("test","subject_test.txt"),
                       file.path("test","y_test.txt"),mean_std_features)


#combine training and test data
merged_data <- bind_rows(training_data,test_data)

#subject and actvity are factors.  Give activites names
merged_data <- mutate(merged_data,subject=factor(subject),activity=factor(activity,labels = activity_lables))

#save tidy data to disk
write.table(merged_data,"UCI_HAR_tidy_data.txt",row.names = FALSE)

#get average for each each variable grouped by activity
avg_by_subject_activity <- merged_data %>% group_by(subject,activity) %>% summarise_all(funs(mean)) 
write.table(avg_by_subject_activity,"UCI_HAR_avg_by_subject_activity.txt",row.names = FALSE)

