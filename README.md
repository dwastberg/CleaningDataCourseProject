## Preparing Human Activity Recognition Using Smartphones Dataset

The script run\_analysis.R expects the data to be in a folder caller "UCI HAR Dataset".  If the data it somewhere else update the `DATADIR` variable at the top of the run\_analysis.R file.  The script outputs two files "UCI\_HAR\_tidy\_data.txt" which is the complete tidied data set and "UCI\_HAR\_avg\_by\_subject_activity.txt" which is the average of each variable in the data set grouped by subject and activity.

To use the run\_analysis.R script you must have the following libraries installed: dplyr, tidyr and readr.

