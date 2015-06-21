# Data
From http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Features
_Exerpted from features\_info.txt from the original data set._

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
 
# Fields
Name                         | Description
---------------------------- | -----------
Subject ID                   | Test subject identifier
Activity Type                | WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, or SITTING
tBodyAcc-mean()-X            | Arithmatic mean of tBodyAcc, X component
tBodyAcc-mean()-Y            | Arithmatic mean of tBodyAcc, Y component
tBodyAcc-mean()-Z            | Arithmatic mean of tBodyAcc, Z component
tBodyAcc-std()-X             | Standard deviation of tBodyAcc, X component
tBodyAcc-std()-Y             | Standard deviation of tBodyAcc, Y component
tBodyAcc-std()-Z             | Standard deviation of tBodyAcc, Z component
tGravityAcc-mean()-X         | Arithmatic mean of tGravityAcc, X component
tGravityAcc-mean()-Y         | Arithmatic mean of tGravityAcc, Y component
tGravityAcc-mean()-Z         | Arithmatic mean of tGravityAcc, Z component
tGravityAcc-std()-X          | Standard deviation of tGravityAcc, X component
tGravityAcc-std()-Y          | Standard deviation of tGravityAcc, Y component
tGravityAcc-std()-Z          | Standard deviation of tGravityAcc, Z component
tBodyAccJerk-mean()-X        | Arithmatic mean of tBodyAccJerk, X component
tBodyAccJerk-mean()-Y        | Arithmatic mean of tBodyAccJerk, Y component
tBodyAccJerk-mean()-Z        | Arithmatic mean of tBodyAccJerk, Z component
tBodyAccJerk-std()-X         | Standard deviation of tBodyAccJerk, X component
tBodyAccJerk-std()-Y         | Standard deviation of tBodyAccJerk, Y component
tBodyAccJerk-std()-Z         | Standard deviation of tBodyAccJerk, Z component
tBodyGyro-mean()-X           | Arithmatic mean of tBodyGyro, X component
tBodyGyro-mean()-Y           | Arithmatic mean of tBodyGyro, Y component
tBodyGyro-mean()-Z           | Arithmatic mean of tBodyGyro, Z component
tBodyGyro-std()-X            | Standard deviation of tBodyGyro, X component
tBodyGyro-std()-Y            | Standard deviation of tBodyGyro, Y component
tBodyGyro-std()-Z            | Standard deviation of tBodyGyro, Z component
tBodyGyroJerk-mean()-X       | Arithmatic mean of tBodyGyroJerk, X component
tBodyGyroJerk-mean()-Y       | Arithmatic mean of tBodyGyroJerk, Y component
tBodyGyroJerk-mean()-Z       | Arithmatic mean of tBodyGyroJerk, Z component
tBodyGyroJerk-std()-X        | Standard deviation of tBodyGyroJerk, X component
tBodyGyroJerk-std()-Y        | Standard deviation of tBodyGyroJerk, Y component
tBodyGyroJerk-std()-Z        | Standard deviation of tBodyGyroJerk, Z component
tBodyAccMag-mean()           | Arithmatic mean of tBodyAccMag
tBodyAccMag-std()            | Standard deviation of tBodyAccMag
tGravityAccMag-mean()        | Arithmatic mean of tGravityAccMag
tGravityAccMag-std()         | Standard deviation of tGravityAccMag
tBodyAccJerkMag-mean()       | Arithmatic mean of tBodyAccJerkMag
tBodyAccJerkMag-std()        | Standard deviation of tBodyAccJerkMag
tBodyGyroMag-mean()          | Arithmatic mean of tBodyGyroMag
tBodyGyroMag-std()           | Standard deviation of tBodyGyroMag
tBodyGyroJerkMag-mean()      | Arithmatic mean of tBodyGyroJerkMag
tBodyGyroJerkMag-std()       | Standard deviation of tBodyGyroJerkMag
fBodyAcc-mean()-X            | Arithmatic mean of fBodyAcc, X component
fBodyAcc-mean()-Y            | Arithmatic mean of fBodyAcc, Y component
fBodyAcc-mean()-Z            | Arithmatic mean of fBodyAcc, Z component
fBodyAcc-std()-X             | Standard deviation of fBodyAcc, X component
fBodyAcc-std()-Y             | Standard deviation of fBodyAcc, Y component
fBodyAcc-std()-Z             | Standard deviation of fBodyAcc, Z component
fBodyAccJerk-mean()-X        | Arithmatic mean of fBodyAccJerk, X component
fBodyAccJerk-mean()-Y        | Arithmatic mean of fBodyAccJerk, Y component
fBodyAccJerk-mean()-Z        | Arithmatic mean of fBodyAccJerk, Z component
fBodyAccJerk-std()-X         | Standard deviation of fBodyAccJerk, X component
fBodyAccJerk-std()-Y         | Standard deviation of fBodyAccJerk, Y component
fBodyAccJerk-std()-Z         | Standard deviation of fBodyAccJerk, Z component
fBodyGyro-mean()-X           | Arithmatic mean of fBodyGyro, X component
fBodyGyro-mean()-Y           | Arithmatic mean of fBodyGyro, Y component
fBodyGyro-mean()-Z           | Arithmatic mean of fBodyGyro, Z component
fBodyGyro-std()-X            | Standard deviation of fBodyGyro, X component
fBodyGyro-std()-Y            | Standard deviation of fBodyGyro, Y component
fBodyGyro-std()-Z            | Standard deviation of fBodyGyro, Z component
fBodyAccMag-mean()           | Arithmatic mean of fBodyAccMag
fBodyAccMag-std()            | Standard deviation of fBodyAccMag
fBodyBodyAccJerkMag-mean()   | Arithmatic mean of fBodyBodyAccJerkMag
fBodyBodyAccJerkMag-std()    | Standard deviation of fBodyBodyAccJerkMag
fBodyBodyGyroMag-mean()      | Arithmatic mean of fBodyBodyGyroMag
fBodyBodyGyroMag-std()       | Standard deviation of fBodyBodyGyroMag
fBodyBodyGyroJerkMag-mean()  | Arithmatic mean of fBodyBodyGyroJerkMag
fBodyBodyGyroJerkMag-std()   | Standard deviation of fBodyBodyGyroJerkMag
 
# Variables used in run_analysis.R

Variable          | Purpose
----------------- | -------------
measurementType   | Labels for measurement types
activityLabels    | Activity labels by code
testSubject       | List of subject IDs
testID            | Stores unique test IDs
testMeasurements  | Measurements for test data set
testActivityCode  | Activity codes for test data set
trainSubject      | List of subject IDs
trainID           | Stores unique training IDs
trainMeasurements | Measurements for training data set
trainActivityCode | Activity codes for training data set
dataTest          | Data frame for test data set
dataTrain         | Data frame for training data set
data              | Combined data frame
tidyData          | Cleaned data frame