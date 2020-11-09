# Getting_and_Cleaning_Data
This repository is to complete the project for the Coursera course "Getting and Cleaning Data"

## Repository Files
`RunAnalysis.R` has the R script that will first download and read the untidy data. It will then save two tidy data files in a txt format. Those files are also in this repo and will be described below.

`Human_Activity_Data.txt`contains all the data for the mean and standard deviation measurement of the subjects and activities(laying, sitting, standing, walking, walking downstairs, walking upstairs) which were part of the expirement.

`Human_Activity_Data_Avg.txt`consists of the data for average of the mean and standard deviation measurements grouped by subject and activity type.

`CodeBook.md` describes the varaibles, data, and any transformations that occured to the data to make the tidy versions.


## Instructions for the project:

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
