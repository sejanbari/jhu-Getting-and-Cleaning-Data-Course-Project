jhu-Getting-and-Cleaning-Data-Course-Project READ ME
=====================================================

A. Instructions:

1. Download the UCI HAR Dataset from this link:
        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Extract the 'UCI HAR Dataset' folder from the zipfile of the dataset to the R working directory. The command to print the current working directory is getwd().
3. Run the run_analysis.r script that is included in this repo using R/R-studio
4. For the script to run properly, please make sure to install the dplyr package. The script makes a call to the library(dplyr) of whose 'verbs' has been used to calculate the means.


B. Code Book

Variables and Description 

Measures have are a compound carrying several meanings in their name:

    If the first letter is t then the measure is in Time domain
    If the first letter is f then the measure is in Frequency domain
    If it contains mean then the measure is the average value.
    If it contains std then the measure is the standard deviation.
    If it contains Gravity then the measure is due to the gravitational force.
    If it contains Body then the measure is due to the body motion.
    If it contains Acc then the signal originated from accelerometer.
    If it contains Gyro then the signal originated from gyroscope.
    If it contains Jerk then the body linear acceleration and angular velocity were derived in time to obtain the signal.
    If it contains Mag then the value represents the magnitued of the signal and has no axial components.

The measures in the accelerometer and gyroscope are floating point values that are normalized to the range of -1.0 to 1.0, hence do not have units

1. subject
•	Subjects that perform a set of activities
[1,30] . Integer values representing a person.

2. activity
•	Activities performed by the test and train subjects
[LAYING, SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS]. String values representing activities.

All other columns contain the average value of the measures for each activity and subject:
3. tBodyAcc_mean_X
4. tBodyAcc_mean_Y
5. tBodyAcc_mean_Z
6. tBodyAcc_std_X
7. tBodyAcc_std_Y
8. tBodyAcc_std_Z
9. tGravityAcc_mean_X
10. tGravityAcc_mean_Y
11.	tGravityAcc_mean_Z
12.	tGravityAcc_std_X
13.	tGravityAcc_std_Y
14.	tGravityAcc_std_Z
15.	tBodyAccJerk_mean_X
16.	tBodyAccJerk_mean_Y
17.	tBodyAccJerk_mean_Z
18.	tBodyAccJerk_std_X
19.	tBodyAccJerk_std_Y
20.	tBodyAccJerk_std_Z
21.	tBodyGyro_mean_X
22.	tBodyGyro_mean_Y
23.	tBodyGyro_mean_Z
24.	tBodyGyro_std_X
25.	tBodyGyro_std_Y
26.	tBodyGyro_std_Z
27.	tBodyGyroJerk_mean_X
28.	tBodyGyroJerk_mean_Y
29.	tBodyGyroJerk_mean_Z
30.	tBodyGyroJerk_std_X
31.	tBodyGyroJerk_std_Y
32.	tBodyGyroJerk_std_Z
33.	tBodyAccMag_mean
34.	tBodyAccMag_std
35.	tGravityAccMag_mean
36.	tGravityAccMag_std
37.	tBodyAccJerkMag_mean
38.	tBodyAccJerkMag_std
39.	tBodyGyroMag_mean
40.	tBodyGyroMag_std
41.	tBodyGyroJerkMag_mean
42.	tBodyGyroJerkMag_std
43.	fBodyAcc_mean_X
44.	fBodyAcc_mean_Y
45.	fBodyAcc_mean_Z
46.	fBodyAcc_std_X
47.	fBodyAcc_std_Y
48.	fBodyAcc_std_Z
49.	fBodyAccJerk_mean_X
50.	fBodyAccJerk_mean_Y
51.	fBodyAccJerk_mean_Z
52.	fBodyAccJerk_std_X
53.	fBodyAccJerk_std_Y
54.	fBodyAccJerk_std_Z
55.	fBodyGyro_mean_X
56.	fBodyGyro_mean_Y
57.	fBodyGyro_mean_Z
58.	fBodyGyro_std_X
59.	fBodyGyro_std_Y
60.	fBodyGyro_std_Z
61.	fBodyAccMag_mean
62.	fBodyAccMag_std
63.	fBodyBodyAccJerkMag_mean
64.	fBodyBodyAccJerkMag_std
65.	fBodyBodyGyroMag_mean
66.	fBodyBodyGyroMag_std
67.	fBodyBodyGyroJerkMag_mean
68.	fBodyBodyGyroJerkMag_std
















