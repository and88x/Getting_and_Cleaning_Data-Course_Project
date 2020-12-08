# Getting_and_Cleaning_Data-Course_Project
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

### Necessary libraries
* data.table
* dplyr

### The `run_analysis.R` file
This file performs the follow tasks:

* Merges the training and the test sets from the [**Human Activity Recognition Using Smartphones Data Set**](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

* Extracts only the measurements on the mean and standard deviation for each measurement.
* Joins the descriptive activity names to name the activities to the data set.
* Labels the data set with the descriptive variable names.
* Creates a independent tidy data set with the average of each variable for each activity and each subject.