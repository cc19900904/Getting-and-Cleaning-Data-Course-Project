#Code Book

##Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Attribute Information

For each record in the dataset it is provided:
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.


##Below summarizes the resulting data fields in tidydata.txt.
##Identifiers

subject - The ID of the test subject
activity - The type of activity performed when the corresponding measurements were taken

##Measurements

timeBodyAccelerometerMeanX
timeBodyAccelerometerMeanY
timeBodyAccelerometerMeanZ
timeBodyAccelerometerStdX
timeBodyAccelerometerStdY
timeBodyAccelerometerStdZ
timeGravityAccelerometerMeanX
timeGravityAccelerometerMeanY
timeGravityAccelerometerMeanZ
timeGravityAccelerometerStdX
timeGravityAccelerometerStdY
timeGravityAccelerometerStdZ
timeBodyAccelerometerJerkMeanX
timeBodyAccelerometerJerkMeanY
timeBodyAccelerometerJerkMeanZ
timeBodyAccelerometerJerkStdX
timeBodyAccelerometerJerkStdY
timeBodyAccelerometerJerkStdZ
timeBodyGyroscopeMeanX
timeBodyGyroscopeMeanY
timeBodyGyroscopeMeanZ
timeBodyGyroscopeStdX
timeBodyGyroscopeStdY
timeBodyGyroscopeStdZ
timeBodyGyroscopeJerkMeanX
timeBodyGyroscopeJerkMeanY
timeBodyGyroscopeJerkMeanZ
timeBodyGyroscopeJerkStdX
timeBodyGyroscopeJerkStdY
timeBodyGyroscopeJerkStdZ
timeBodyAccelerometerMagnitudeMean
timeBodyAccelerometerMagnitudeStd
timeGravityAccelerometerMagnitudeMean
timeGravityAccelerometerMagnitudeStd
timeBodyAccelerometerJerkMagnitudeMean
timeBodyAccelerometerJerkMagnitudeStd
timeBodyGyroscopeMagnitudeMean
timeBodyGyroscopeMagnitudeStd
timeBodyGyroscopeJerkMagnitudeMean
timeBodyGyroscopeJerkMagnitudeStd
frequencyBodyAccelerometerMeanX
frequencyBodyAccelerometerMeanY
frequencyBodyAccelerometerMeanZ
frequencyBodyAccelerometerStdX
frequencyBodyAccelerometerStdY
frequencyBodyAccelerometerStdZ
frequencyBodyAccelerometerJerkMeanX
frequencyBodyAccelerometerJerkMeanY
frequencyBodyAccelerometerJerkMeanZ
frequencyBodyAccelerometerJerkStdX
frequencyBodyAccelerometerJerkStdY
frequencyBodyAccelerometerJerkStdZ
frequencyBodyGyroscopeMeanX
frequencyBodyGyroscopeMeanY
frequencyBodyGyroscopeMeanZ
frequencyBodyGyroscopeStdX
frequencyBodyGyroscopeStdY
frequencyBodyGyroscopeStdZ
frequencyBodyAccelerometerMagnitudeMean
frequencyBodyAccelerometerMagnitudeStd
frequencyBodyAccelerometerJerkMagnitudeMean
frequencyBodyAccelerometerJerkMagnitudeStd
frequencyBodyGyroscopeMagnitudeMean
frequencyBodyGyroscopeMagnitudeStd
frequencyBodyGyroscopeJerkMagnitudeMean
frequencyBodyGyroscopeJerkMagnitudeStd


WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test