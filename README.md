# Getting and Cleaning Data Coursera
This repository contains the requirements to fulfill the Getting and Cleaning Data course.
The script does as following:
1)Merges the training and the test sets to create one data set.
2)Extracts only the measurements on the mean and standard deviation for each measurement.
3)Uses descriptive activity names to name the activities in the data set
4)Appropriately labels the data set with descriptive variable names.
5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Contents
This repository contains:
- README.md- explains what this repository is about
- run_analysis.R- contains the script I used to clean the original dataset given  
  1)Merges the training and the test sets to create one data set.
  2)Extracts only the measurements on the mean and standard deviation for each measurement.  
  3)Uses descriptive activity names to name the activities in the data set.  
  4)Appropriately labels the data set with descriptive variable names.  
  5)From the data set in step 4, creates a second, independent tidy data set with the average   of each variable for each activity and each subject.  
- tidydata.txt- the tidy data set produced by the run_analysis script  
- codebook.md- explains the variables and the data in the tidydata.txt  

# Instructions
Unzip the source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into your desired folder. Set this folder as your working directory.

Use the run_analysis.R script to clean the original dataset. Replace the file paths to reflect your folder.