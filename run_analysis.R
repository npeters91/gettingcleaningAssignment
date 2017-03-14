# Assignment coursera Course: "Getting and Cleaning Data" by Johns Hopkins University
# Author: Niek Alexander Peters

# Load Dependencies
if (!("data.table" %in% rownames(installed.packages()))) {install.packages("data.table")}
suppressMessages(library(data.table))
if (!("reshape2" %in% rownames(installed.packages()))) {install.packages("reshape2")}
suppressMessages(library(reshape2))
if (!("dplyr" %in% rownames(installed.packages()))) {install.packages("dplyr")}
suppressMessages(library(dplyr))

# Download file, unzip and load data
dataSet <- "dataset.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists(dataSet)) {
        download.file(fileUrl, dataSet, method = "auto")
        unzip(dataSet)
}


subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merges the training and the test data sets to create one dataset
subject <- rbind(subjectTest, subjectTrain)
x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)

# Appropriately labels the data set with descriptive variable names.
colnames(subject) <- "subject"
colnames(x) <- features[,2]

# Extracts only the measurements on the mean and standard deviation for each measurement. 
meanStdCol <- grep("-mean|-std", colnames(x))
xMeanStd <- x[, meanStdCol]

# Uses descriptive activity names to name the activities in the data set
activityLabel <- merge(y, activityLabels, by=1)[,2]

# A second, independent tidy data set with the average of each variable for each activity
# and each subject.
dataSet <- cbind(subject, activityLabel, xMeanStd)
melted <- melt(dataSet, id.var = c("subject", "activityLabel"))
dataAverages <- dcast(melted , subject + activityLabel ~ variable, fun.aggregate = mean)
write.table(dataAverages, file="tidy_averages.txt", row.names=FALSE)

dataAverages