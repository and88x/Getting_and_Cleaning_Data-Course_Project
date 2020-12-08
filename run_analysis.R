##
## This scrip performs dataset cleanup from the project 
## develop on:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##
## The data linked to from the course website represent 
## data collected from the accelerometers from the Samsung 
## Galaxy S smartphone.
##
## The main task is to generate a tidy data set from the 
## information obtained in the project mentioned above.
##
## Components of a tidy dataset:
##  - Each variable you measure should be in one column. 
##  - Each different observation of that variable should 
##    be in a different row.
##  - There should be one table for each "kind" of variable.
##  - If I have multiple tables, they should be include a 
##    column in the table that allows them to be linked.
##
#*************************************************************
# Author: Andres Fernando Garcia Calle
# email: fernando.garcia@exatec.tec.mx
# date: 12/07/2020
#*************************************************************
library(data.table)
library(dplyr)
#
# Donwload the dataset
#
url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./getdata_projectfiles_UCI HAR Dataset.zip')){
  download.file(url,'./getdata_projectfiles_UCI HAR Dataset.zip', mode = 'wb')
  unzip("getdata_projectfiles_UCI HAR Dataset.zip", exdir = getwd())
}
#
#----------------------------------------------------------
# Task1: Merges the training and the test sets to create 
#        one data set.
#----------------------------------------------------------
# Loading the descriptive variable labels in workspace
#
activityLabels <- fread("UCI HAR Dataset/activity_labels.txt",
                        col.names = c("Code", "activity"))
featureLabels  <- fread("UCI HAR Dataset/features.txt",
                        col.names = c("Code", "Label"))
#
# Loading and labeling the data set with descriptive variable names
testSet        <- fread("./UCI HAR Dataset/test/X_test.txt",
                        col.names = featureLabels$Label)
trainSet       <- fread("./UCI HAR Dataset/train/X_train.txt",
                        col.names = featureLabels$Label)
#
# Creating the complete set (test set at the tail)
totalSet <- rbind(trainSet, testSet)
#
# Uses descriptive activity names to name the activities
testLabels  <- fread("./UCI HAR Dataset/test/y_test.txt")
trainLabels <- fread("./UCI HAR Dataset/train/y_train.txt")
totalLabels <- rbind(trainLabels, testLabels)
#
# (Adding the kind of activity in the first column of complete dataset)
totalSet    <- cbind(activityLabels[totalLabels[[1]],2], totalSet)
#
# (Delete variables that will no longer be useful)
variable_names <- featureLabels$Label
rm(list=setdiff(ls(), c("totalSet", "variable_names")))
#
#----------------------------------------------------------
# Task 2: Extracts only the measurements on the mean and standard 
#         deviation for each measurement.
#----------------------------------------------------------
mean_position <- grepl("mean",variable_names)
std_position  <- grepl("std",variable_names)
#
mean_matches  <- variable_names[mean_position]
std_matches   <- variable_names[std_position]
#
mean_std_Set  <- select(totalSet, activity, mean_matches, std_matches)
#
#----------------------------------------------------------
# Task 3: Uses descriptive activity names to name the activities 
#         in the data set
#----------------------------------------------------------
# Done in the task 1
#
#----------------------------------------------------------
# Task 4: Appropriately labels the data set with descriptive 
#         variable names.
#----------------------------------------------------------
# Done in the task 1
#
#----------------------------------------------------------
# Task 5: From the data set in step 4, creates a second, independent 
#         tidy data set with the average of each variable for each 
#         activity and each subject.
#----------------------------------------------------------
# Reading the subjects IDs that performed each experiment
#
subject_Test  <- fread("./UCI HAR Dataset/test/subject_test.txt",
                       col.names="subject")
subject_Train <- fread("./UCI HAR Dataset/train/subject_train.txt",
                       col.names='subject')
subject       <- rbind(subject_Train, subject_Test) # test set at the tail
# 
# Adding the subject to the first column of the extracted set
mean_std_Set  <- cbind(subject, mean_std_Set)
#
# Creating the final dataset
tidy_set <- aggregate(
              x   = select(mean_std_Set, -subject, -activity), 
              by  = list(mean_std_Set$subject, mean_std_Set$activity), 
              FUN = mean)
#
# The file tidy_set.txt have the final dataset
write.table(x = tidy_set, file = "tidy_set.txt", row.names = FALSE)