#run_analysis.R
#Author: Kesavan Kushalnagar

library(dplyr)

#Merge X_test, y_test, and subject_test. The Inertial Signals folder is not merged as the data is supposed to be removed later in the process anyways.

#read in each item into different names
#get x_full
x_test <- read.table("test/X_test.txt", header = FALSE)
test_names <- read.table("test/subject_test.txt", header = FALSE)
x_test <- cbind(x_test, test_names)
x_train <- read.table("train/X_train.txt", header = FALSE)
train_names <- read.table("train/subject_train.txt", header = FALSE)
x_train <- cbind(x_train, train_names)
x_full <- rbind(x_test,x_train)

#get y_full
y_test <- read.table("test/Y_test.txt", header = FALSE)
y_train <- read.table("train/Y_train.txt", header = FALSE)
y_full <- rbind(y_test,y_train)

#combine the train and test vectors
full <- cbind(x_full, y_full)

#get the names and link them to the training set
features <- read.table("features.txt")
names(full) <- c(as.vector(features$V2), "ID", "activity_ID") #attach activity_ID at the end for the previously bound "Y" vector

#Extract the mean and std dev for each measurement
mean_or_std <- function(x) { return(grepl("mean", x) || grepl("std", x) || x == "activity_ID" || x == "ID")}
full_cleaned <- full[, sapply(names(full), mean_or_std)]

#Get the activity names
activity_names <- read.table("activity_labels.txt", header = FALSE)
full_cleaned <- mutate(full_cleaned, activity_ID = as.character(factor(activity_ID, levels = 1:6, labels = activity_names$V2)))

#rename the variables to make them descriptive
names(full_cleaned)
names(full_cleaned) <- sub("^t", "Time ", names(full_cleaned))
names(full_cleaned) <- sub("^f", "FFT ", names(full_cleaned))
names(full_cleaned) <- gsub("Body", "Body ", names(full_cleaned))
names(full_cleaned) <- sub("Acc", "Acceleration ", names(full_cleaned))
names(full_cleaned) <- sub("Gyro", "Gyroscope ", names(full_cleaned))
names(full_cleaned) <- sub("Jerk", "Jerk ", names(full_cleaned))
names(full_cleaned) <- sub("Mag", "Magnitude ", names(full_cleaned))
names(full_cleaned) <- sub("std", "Standard Deviation ", names(full_cleaned))
names(full_cleaned) <- sub("mean", "Mean ", names(full_cleaned))
names(full_cleaned) <- sub("Freq", "Frequency ", names(full_cleaned))
names(full_cleaned) <- sub("Gravity", "Gravity ", names(full_cleaned))
names(full_cleaned) <- gsub("[-()]", "", names(full_cleaned))
names(full_cleaned) <- trimws(names(full_cleaned))

full_cleaned <- ungroup(full_cleaned)

tidy <- full_cleaned%>%group_by(activity_ID, ID)%>%summarise_all(mean)

write.table(tidy, "TidyData.txt", row.name=FALSE)
