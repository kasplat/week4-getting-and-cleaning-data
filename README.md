# week4-getting-and-cleaning-data
## Files in this repo

* README.md -- this file
* CodeBook.md -- codebook describing variables, the data and transformations
* run_analysis.R -- actual R code

#Intro
This script's purpose is to perform some introductory data cleaning for Week 4 of the online Coursera course "Getting and Cleaning Data".

This script was initially ran on a windows machine, but was moved to a linux machine running ubuntu because of issues with the dplyr package on this data set. If you get a "negative vector" error for the last step, you will need to test on a linux machine.

##Setup
The run_analysis.R script must be in the same directory as the "test" and "train" directories. 

##Script Process
###Merging the data
First the script is merged. This is done by reading in all of the training and testing data that will be used later. None of the files from the "Inertial Signal" folder are used because it is instructed that they should be removed in a later step anyways. They are combined using rbind, then combined with the labels using cbind. 

###Naming the data
The feature names are taken from the features.txt file. They are then mapped to the corresponding names on the dataset. 

###Extracing the data
The mean and standard deviation data are extracted using basic R extraction. a function is made to create the logical vector that describes whether or not the name of a column contains "mean" or "std" (the columns that will be mean and std columns). Then they are extracted.

###Renaming the activities
The activity labels are taken from the activity_labels.txt file. Then they are mapped properly using mutate and factor to the dataset.

###Renaming the variables
A variety of regular expressions were used to expand the variable names to make them more clear. Whitespace is trimmed at the end to make sure it is easy for later use. 

###Getting the means
The tidy data is just the mean of each activity and participant. Using the group_by and summarise_all will get the means of each variable by activity then ID.


## librarys used in run_analysis.R

* library(dplyr)
* library(data.table)
