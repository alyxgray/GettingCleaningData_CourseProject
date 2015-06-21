if (!file.exists("./dataset.zip")){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile = "./dataset.zip", method="curl")
  dateDownloaded <- date()
}

if (file.exists("./dataset.zip"))
{
  unzip ("./dataset.zip")
}

# Get labels for the 561 data measurements types
measurementType <- read.table("./UCI HAR Dataset/features.txt", col.names=c("index", "identifier"))

# Get Activity Code Chart
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ", col.names=c("ActivityCode", "DescriptiveLabel"))

# Get subject ID list for test data set
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="\n", col.names="TestSubjectID")

# Store unique occurrences of test subject IDs for later subsetting use
testID <- as.list(unique(testSubject$TestSubjectID))

# Get measurements for test data set
testMeasurements <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Get activity code for test data set measurements
testActivityCode <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="\n")


# Get subject ID list for train data set
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="\n", col.names="TrainSubjectID")

# Store train subject IDs for later subsetting use
trainID <- as.list(unique(trainSubject$TrainSubjectID))

# Get measurements for train data set
trainMeasurements <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Get activity code for train data set measurements
trainActivityCode <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="\n")

# Create data frame for test data set
dataTest <- data.frame(testSubject, testActivityCode, testMeasurements)
names(dataTest) <- c("Subject ID", "Activity Code", as.character(measurementType$identifier))

# Create data frame for train data set
dataTrain <- data.frame(trainSubject, trainActivityCode, trainMeasurements)
names(dataTrain) <- c("Subject ID", "Activity Code", as.character(measurementType$identifier))

# Combine test and train data into a single data frame
data <- rbind(dataTest, dataTrain)


# data$"Activity Type" <- activityLabels$DescriptiveLabel[as.factor(data$"Activity Code")]

# Re-order columns and only include measurements of the mean and standard deviations
data <- data[, c(1,2, grep("-(mean|std)\\(\\)", names(data)))]

# Take the average of each measurement for subjects in each activity type
tidyData <- aggregate(data, list(data$"Subject ID", data$"Activity Code"), mean)

# Make data more readable by getting rid of unneccessary columns
tidyData <- tidyData[,3:ncol(tidyData)]

# Add descriptive labels for activity types
tidyData$"Activity Code" <- activityLabels$DescriptiveLabel[as.factor(tidyData$"Activity Code")]

# Rename the activity code column to reflect use of descriptive labels for activities
names(tidyData)[names(tidyData) == "Activity Code"] <- "Activity Type"

# Write tidy data set to a text file
write.table (tidyData, file = "./tidydata.txt", row.name=FALSE, sep=" ")

