# Codebook Getting Data & Cleaning Data Assignment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The run_analysis.R scripts
======================================
The run_analysis.R does the following:
- Reads and prepares the data set.
- Extracts the mean and standard deviation for each measurement. 
- Creates a tidy data set with the average of each variable for each activity and each subject. 

The dataset includes the following files:
=========================================

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following variables are defined:
=====================================

## RT		1
	A total of 86 different types of measurements recorded for each subject and activity
	
### Activity

  Activity that was measured (e.g. Walking etc.)

### Subject_ID
  A unique ID ranging from 1 to 30 assigned to each of the 30 subjects who performed the activity

	
### AverageOf_ timeBodyAcc_mean_X
Average of the multiple readings taken for a given subject ID and Activity tBodyAcc-mean()-X
### AverageOf_ timeBodyAcc_mean_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyAcc-mean()-Y
### AverageOf_ timeBodyAcc_mean_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyAcc-mean()-Z
### AverageOf_ timeGravityAcc_mean_X
Average of the multiple readings taken for a given subject ID and Activity tGravityAcc-mean()-X
### AverageOf_ timeGravityAcc_mean_Y
Average of the multiple readings taken for a given subject ID and Activity tGravityAcc-mean()-Y
### AverageOf_ timeGravityAcc_mean_Z
Average of the multiple readings taken for a given subject ID and Activity tGravityAcc-mean()-Z
### AverageOf_ timeBodyAccJerk_mean_X
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerk-mean()-X
### AverageOf_ timeBodyAccJerk_mean_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerk-mean()-Y
### AverageOf_ timeBodyAccJerk_mean_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerk-mean()-Z
### AverageOf_ timeBodyGyro_mean_X
Average of the multiple readings taken for a given subject ID and Activity tBodyGyro-mean()-X
### AverageOf_ timeBodyGyro_mean_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyGyro-mean()-Y
### AverageOf_ timeBodyGyro_mean_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyGyro-mean()-Z
### AverageOf_ timeBodyGyroJerk_mean_X
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerk-mean()-X
### AverageOf_ timeBodyGyroJerk_mean_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerk-mean()-Y
### AverageOf_ timeBodyGyroJerk_mean_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerk-mean()-Z
### AverageOf_ timeBodyAccMag_mean
Average of the multiple readings taken for a given subject ID and Activity tBodyAccMag-mean()
### AverageOf_ timeGravityAccMag_mean
Average of the multiple readings taken for a given subject ID and Activity tGravityAccMag-mean()
### AverageOf_ timeBodyAccJerkMag_mean
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerkMag-mean()
### AverageOf_ timeBodyGyroMag_mean
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroMag-mean()
### AverageOf_ timeBodyGyroJerkMag_mean
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerkMag-mean()
### AverageOf_ freqBodyAcc_mean_X
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-mean()-X
### AverageOf_ freqBodyAcc_mean_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-mean()-Y
### AverageOf_ freqBodyAcc_mean_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-mean()-Z
### AverageOf_ freqBodyAcc_meanFreq_X
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-meanFreq()-X
### AverageOf_ freqBodyAcc_meanFreq_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-meanFreq()-Y
### AverageOf_ freqBodyAcc_meanFreq_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-meanFreq()-Z
### AverageOf_ freqBodyAccJerk_mean_X
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-mean()-X
### AverageOf_ freqBodyAccJerk_mean_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-mean()-Y
### AverageOf_ freqBodyAccJerk_mean_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-mean()-Z
### AverageOf_ freqBodyAccJerk_meanFreq_X
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-meanFreq()-X
### AverageOf_ freqBodyAccJerk_meanFreq_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-meanFreq()-Y
### AverageOf_ freqBodyAccJerk_meanFreq_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-meanFreq()-Z
### AverageOf_ freqBodyGyro_mean_X
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-mean()-X
### AverageOf_ freqBodyGyro_mean_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-mean()-Y
### AverageOf_ freqBodyGyro_mean_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-mean()-Z
### AverageOf_ freqBodyGyro_meanFreq_X
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-meanFreq()-X
### AverageOf_ freqBodyGyro_meanFreq_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-meanFreq()-Y
### AverageOf_ freqBodyGyro_meanFreq_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-meanFreq()-Z
### AverageOf_ freqBodyAccMag_mean
Average of the multiple readings taken for a given subject ID and Activity fBodyAccMag-mean()
### AverageOf_ freqBodyAccMag_meanFreq
Average of the multiple readings taken for a given subject ID and Activity fBodyAccMag-meanFreq()
### AverageOf_ freqBodyAccJerkMag_mean
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyAccJerkMag-mean()
### AverageOf_ freqBodyAccJerkMag_meanFreq
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyAccJerkMag-meanFreq()
### AverageOf_ freqBodyGyroMag_mean
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyGyroMag-mean()
### AverageOf_ freqBodyGyroMag_meanFreq
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyGyroMag-meanFreq()
### AverageOf_ freqBodyGyroJerkMag_mean
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyGyroJerkMag-mean()
### AverageOf_ freqBodyGyroJerkMag_meanFreq
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyGyroJerkMag-meanFreq()
### AverageOf_ angleTimeBodyBodyAccMean_gravity
Average of the multiple readings taken for a given subject ID and Activity angle(tBodyAccMean,gravity)
### AverageOf_ angleTimeBodyBodyAccJerkMean_gravityMean
Average of the multiple readings taken for a given subject ID and Activity angle(tBodyAccJerkMean),gravityMean)
### AverageOf_ angleTimeBodyBodyGyroMean_gravityMean
Average of the multiple readings taken for a given subject ID and Activity angle(tBodyGyroMean,gravityMean)
### AverageOf_ angleTimeBodyBodyGyroJerkMean_gravityMean
Average of the multiple readings taken for a given subject ID and Activity angle(tBodyGyroJerkMean,gravityMean)
### AverageOf_ angleX_gravityMean
Average of the multiple readings taken for a given subject ID and Activity angle(X,gravityMean)
### AverageOf_ angleY_gravityMean
Average of the multiple readings taken for a given subject ID and Activity angle(Y,gravityMean)
### AverageOf_ angleZ_gravityMean
Average of the multiple readings taken for a given subject ID and Activity angle(Z,gravityMean)
### AverageOf_ timeBodyAcc_std_X
Average of the multiple readings taken for a given subject ID and Activity tBodyAcc-std()-X
### AverageOf_ timeBodyAcc_std_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyAcc-std()-Y
### AverageOf_ timeBodyAcc_std_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyAcc-std()-Z
### AverageOf_ timeGravityAcc_std_X
Average of the multiple readings taken for a given subject ID and Activity tGravityAcc-std()-X
### AverageOf_ timeGravityAcc_std_Y
Average of the multiple readings taken for a given subject ID and Activity tGravityAcc-std()-Y
### AverageOf_ timeGravityAcc_std_Z
Average of the multiple readings taken for a given subject ID and Activity tGravityAcc-std()-Z
### AverageOf_ timeBodyAccJerk_std_X
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerk-std()-X
### AverageOf_ timeBodyAccJerk_std_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerk-std()-Y
### AverageOf_ timeBodyAccJerk_std_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerk-std()-Z
### AverageOf_ timeBodyGyro_std_X
Average of the multiple readings taken for a given subject ID and Activity tBodyGyro-std()-X
### AverageOf_ timeBodyGyro_std_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyGyro-std()-Y
### AverageOf_ timeBodyGyro_std_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyGyro-std()-Z
### AverageOf_ timeBodyGyroJerk_std_X
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerk-std()-X
### AverageOf_ timeBodyGyroJerk_std_Y
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerk-std()-Y
### AverageOf_ timeBodyGyroJerk_std_Z
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerk-std()-Z
### AverageOf_ timeBodyAccMag_std
Average of the multiple readings taken for a given subject ID and Activity tBodyAccMag-std()
### AverageOf_ timeGravityAccMag_std
Average of the multiple readings taken for a given subject ID and Activity tGravityAccMag-std()
### AverageOf_ timeBodyAccJerkMag_std
Average of the multiple readings taken for a given subject ID and Activity tBodyAccJerkMag-std()
### AverageOf_ timeBodyGyroMag_std
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroMag-std()
### AverageOf_ timeBodyGyroJerkMag_std
Average of the multiple readings taken for a given subject ID and Activity tBodyGyroJerkMag-std()
### AverageOf_ freqBodyAcc_std_X
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-std()-X
### AverageOf_ freqBodyAcc_std_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-std()-Y
### AverageOf_ freqBodyAcc_std_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyAcc-std()-Z
### AverageOf_ freqBodyAccJerk_std_X
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-std()-X
### AverageOf_ freqBodyAccJerk_std_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-std()-Y
### AverageOf_ freqBodyAccJerk_std_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyAccJerk-std()-Z
### AverageOf_ freqBodyGyro_std_X
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-std()-X
### AverageOf_ freqBodyGyro_std_Y
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-std()-Y
### AverageOf_ freqBodyGyro_std_Z
Average of the multiple readings taken for a given subject ID and Activity fBodyGyro-std()-Z
### AverageOf_ freqBodyAccMag_std
Average of the multiple readings taken for a given subject ID and Activity fBodyAccMag-std()
### AverageOf_ freqBodyAccJerkMag_std
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyAccJerkMag-std()
### AverageOf_ freqBodyGyroMag_std
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyGyroMag-std()
### AverageOf_ freqBodyGyroJerkMag_std
Average of the multiple readings taken for a given subject ID and Activity fBodyBodyGyroJerkMag-std()
### 
	

