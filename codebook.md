
Author: Andres Fernando Garcia

Feature Selection 
=================

The features selected for database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ (prefix 't' to denote time). The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ. (Note the 'f' to indicate frequency domain signals). 

The Database
=================

Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. Whis this databese a new tidy database was built. This tidy dataset (saved on the "tidy_set.txt" file) contains average of each variable for each activity and each subject.

### Activities
| Activitiy      |
|------------|
| WALKING|
| WALKING_UPSTAIRS|
| WALKING_DOWNSTAIRS|
| SITTING|
| STANDING|
| LAYING|

### Variables

Variable name       | Units
--------------------|------------
tBodyAcc-mean()-X   | standard gravity units 'g'
tBodyAcc-mean()-Y   | standard gravity units 'g'
tBodyAcc-mean()-Z   | standard gravity units 'g'
tGravityAcc-mean()-X    | standard gravity units 'g'
tGravityAcc-mean()-Y    | standard gravity units 'g'
tGravityAcc-mean()-Z    | standard gravity units 'g'
tBodyAccJerk-mean()-X   | standard gravity units 'g'
tBodyAccJerk-mean()-Y   | standard gravity units 'g'
tBodyAccJerk-mean()-Z   | standard gravity units 'g'
tBodyGyro-mean()-X  | radians/second
tBodyGyro-mean()-Y  | radians/second
tBodyGyro-mean()-Z  | radians/second
tBodyGyroJerk-mean()-X  | radians/second
tBodyGyroJerk-mean()-Y  | radians/second
tBodyGyroJerk-mean()-Z  | radians/second
tBodyAccMag-mean()  | standard gravity units 'g'
tGravityAccMag-mean()   | standard gravity units 'g'
tBodyAccJerkMag-mean()  | standard gravity units 'g'
tBodyGyroMag-mean() | radians/second
tBodyGyroJerkMag-mean() | radians/second
fBodyAcc-mean()-X   | standard gravity units 'g'
fBodyAcc-mean()-Y   | standard gravity units 'g'
fBodyAcc-mean()-Z   | standard gravity units 'g'
fBodyAcc-meanFreq()-X   | standard gravity units 'g'
fBodyAcc-meanFreq()-Y   | standard gravity units 'g'
fBodyAcc-meanFreq()-Z   | standard gravity units 'g'
fBodyAccJerk-mean()-X   | standard gravity units 'g'
fBodyAccJerk-mean()-Y   | standard gravity units 'g'
fBodyAccJerk-mean()-Z   | standard gravity units 'g'
fBodyAccJerk-meanFreq()-X   | standard gravity units 'g'
fBodyAccJerk-meanFreq()-Y   | standard gravity units 'g'
fBodyAccJerk-meanFreq()-Z   | standard gravity units 'g'
fBodyGyro-mean()-X  | radians/second
fBodyGyro-mean()-Y  | radians/second
fBodyGyro-mean()-Z  | radians/second
fBodyGyro-meanFreq()-X  | radians/second
fBodyGyro-meanFreq()-Y  | radians/second
fBodyGyro-meanFreq()-Z  | radians/second
fBodyAccMag-mean()  | standard gravity units 'g'
fBodyAccMag-meanFreq()  | standard gravity units 'g'
fBodyBodyAccJerkMag-mean()  | standard gravity units 'g'
fBodyBodyAccJerkMag-meanFreq()  | standard gravity units 'g'
fBodyBodyGyroMag-mean() | radians/second
fBodyBodyGyroMag-meanFreq() | radians/second
fBodyBodyGyroJerkMag-mean() | radians/second
tBodyAcc-std()-X    | standard gravity units 'g'
tBodyAcc-std()-Y    | standard gravity units 'g'
tBodyAcc-std()-Z    | standard gravity units 'g'
tGravityAcc-std()-X | standard gravity units 'g'
tGravityAcc-std()-Y | standard gravity units 'g'
tGravityAcc-std()-Z | standard gravity units 'g'
tBodyAccJerk-std()-X    | standard gravity units 'g'
tBodyAccJerk-std()-Y    | standard gravity units 'g'
tBodyAccJerk-std()-Z    | standard gravity units 'g'
tBodyGyro-std()-X   | radians/second
tBodyGyro-std()-Y   | radians/second
tBodyGyro-std()-Z   | radians/second
tBodyGyroJerk-std()-X   | radians/second
tBodyGyroJerk-std()-Y   | radians/second
tBodyGyroJerk-std()-Z   | radians/second
tBodyAccMag-std()   | standard gravity units 'g'
tGravityAccMag-std()    | standard gravity units 'g'
tBodyAccJerkMag-std()   | standard gravity units 'g'
tBodyGyroMag-std()  | radians/second
tBodyGyroJerkMag-std()  | radians/second
fBodyAcc-std()-X    | standard gravity units 'g'
fBodyAcc-std()-Y    | standard gravity units 'g'
fBodyAcc-std()-Z    | standard gravity units 'g'
fBodyAccJerk-std()-X    | standard gravity units 'g'
fBodyAccJerk-std()-Y    | standard gravity units 'g'
fBodyAccJerk-std()-Z    | standard gravity units 'g'
fBodyGyro-std()-X   | radians/second
fBodyGyro-std()-Y   | radians/second
fBodyGyro-std()-Z   | radians/second
fBodyAccMag-std()   | standard gravity units 'g'
fBodyBodyAccJerkMag-std()   | standard gravity units 'g'
fBodyBodyGyroMag-std()  | radians/second
fBodyBodyGyroJerkMag-std()  | radians/second


Notes: 
======
- Variables are normalized and bounded within [-1,1].
