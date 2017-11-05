## Preparing Human Activity Recognition Using Smartphones Dataset

The script run_analysis.R expects the data to be in a folder caller "UCI HAR Dataset".  If the data it somewhere else update the `DATADIR` variable at the top of the run_analysis.R file.  The script outputs two files "UCI_HAR_tidy_data.txt" which is the complete tidyed data set and "UCI_HAR_avg_by_subject_activity.txt" which is the average of each variable in the dataset grouped by subject and activity.

To use the run_analysis.R script you must have the following libraries installed: dplyr, tidyr and readr.

