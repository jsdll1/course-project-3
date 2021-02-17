==================================================================
Human Activity Recognition Using Smartphones Dataset
==================================================================


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Each record has a total of 68 columns
======================================

- An activity column representing the activity done by the person for this record.
- A subject column that identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- A 66 feature vector with the mean and standard deviations of time and frequency domain variables. The readings are normalized and bounded within [-1,1] and representing one unit of gravity (9.81m/s2). The details are further listed below.


Feature Selection
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 'timeDomain) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing. (Note the 'FFT' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZaxis' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:

mean(): Mean value
standardDeviation(): Standard deviation

The complete list of variables of each feature vector are
[1] "activity"                                                    
[2] "subject"                                                     
[3] "timeDomainBodyAccelerometer-mean()-Xaxis"                    
[4] "timeDomainBodyAccelerometer-mean()-Yaxis"                    
[5] "timeDomainBodyAccelerometer-mean()-Zaxis"                    
[6] "timeDomainBodyAccelerometer-standardDeviation()-Xaxis"       
[7] "timeDomainBodyAccelerometer-standardDeviation()-Yaxis"       
[8] "timeDomainBodyAccelerometer-standardDeviation()-Zaxis"       
[9] "timeDomainGravityAccelerometer-mean()-Xaxis"                 
[10] "timeDomainGravityAccelerometer-mean()-Yaxis"                 
[11] "timeDomainGravityAccelerometer-mean()-Zaxis"                 
[12] "timeDomainGravityAccelerometer-standardDeviation()-Xaxis"    
[13] "timeDomainGravityAccelerometer-standardDeviation()-Yaxis"    
[14] "timeDomainGravityAccelerometer-standardDeviation()-Zaxis"    
[15] "timeDomainBodyAccelerometerJerk-mean()-Xaxis"                
[16] "timeDomainBodyAccelerometerJerk-mean()-Yaxis"                
[17] "timeDomainBodyAccelerometerJerk-mean()-Zaxis"                
[18] "timeDomainBodyAccelerometerJerk-standardDeviation()-Xaxis"   
[19] "timeDomainBodyAccelerometerJerk-standardDeviation()-Yaxis"   
[20] "timeDomainBodyAccelerometerJerk-standardDeviation()-Zaxis"   
[21] "timeDomainBodyGyroscope-mean()-Xaxis"                        
[22] "timeDomainBodyGyroscope-mean()-Yaxis"                        
[23] "timeDomainBodyGyroscope-mean()-Zaxis"                        
[24] "timeDomainBodyGyroscope-standardDeviation()-Xaxis"           
[25] "timeDomainBodyGyroscope-standardDeviation()-Yaxis"           
[26] "timeDomainBodyGyroscope-standardDeviation()-Zaxis"           
[27] "timeDomainBodyGyroscopeJerk-mean()-Xaxis"                    
[28] "timeDomainBodyGyroscopeJerk-mean()-Yaxis"                    
[29] "timeDomainBodyGyroscopeJerk-mean()-Zaxis"                    
[30] "timeDomainBodyGyroscopeJerk-standardDeviation()-Xaxis"       
[31] "timeDomainBodyGyroscopeJerk-standardDeviation()-Yaxis"       
[32] "timeDomainBodyGyroscopeJerk-standardDeviation()-Zaxis"       
[33] "timeDomainBodyAccelerometerMagnitude-mean()"                 
[34] "timeDomainBodyAccelerometerMagnitude-standardDeviation()"    
[35] "timeDomainGravityAccelerometerMagnitude-mean()"              
[36] "timeDomainGravityAccelerometerMagnitude-standardDeviation()"
[37] "timeDomainBodyAccelerometerJerkMagnitude-mean()"             
[38] "timeDomainBodyAccelerometerJerkMagnitude-standardDeviation()"
[39] "timeDomainBodyGyroscopeMagnitude-mean()"                     
[40] "timeDomainBodyGyroscopeMagnitude-standardDeviation()"        
[41] "timeDomainBodyGyroscopeJerkMagnitude-mean()"                 
[42] "timeDomainBodyGyroscopeJerkMagnitude-standardDeviation()"    
[43] "FFTBodyAccelerometer-mean()-Xaxis"                           
[44] "FFTBodyAccelerometer-mean()-Yaxis"                           
[45] "FFTBodyAccelerometer-mean()-Zaxis"                           
[46] "FFTBodyAccelerometer-standardDeviation()-Xaxis"              
[47] "FFTBodyAccelerometer-standardDeviation()-Yaxis"              
[48] "FFTBodyAccelerometer-standardDeviation()-Zaxis"              
[49] "FFTBodyAccelerometerJerk-mean()-Xaxis"                       
[50] "FFTBodyAccelerometerJerk-mean()-Yaxis"                       
[51] "FFTBodyAccelerometerJerk-mean()-Zaxis"                       
[52] "FFTBodyAccelerometerJerk-standardDeviation()-Xaxis"          
[53] "FFTBodyAccelerometerJerk-standardDeviation()-Yaxis"          
[54] "FFTBodyAccelerometerJerk-standardDeviation()-Zaxis"          
[55] "FFTBodyGyroscope-mean()-Xaxis"                               
[56] "FFTBodyGyroscope-mean()-Yaxis"                               
[57] "FFTBodyGyroscope-mean()-Zaxis"                               
[58] "FFTBodyGyroscope-standardDeviation()-Xaxis"                  
[59] "FFTBodyGyroscope-standardDeviation()-Yaxis"                  
[60] "FFTBodyGyroscope-standardDeviation()-Zaxis"                  
[61] "FFTBodyAccelerometerMagnitude-mean()"                        
[62] "FFTBodyAccelerometerMagnitude-standardDeviation()"           
[63] "FFTBodyBodyAccelerometerJerkMagnitude-mean()"                
[64] "FFTBodyBodyAccelerometerJerkMagnitude-standardDeviation()"   
[65] "FFTBodyBodyGyroscopeMagnitude-mean()"                        
[66] "FFTBodyBodyGyroscopeMagnitude-standardDeviation()"           
[67] "FFTBodyBodyGyroscopeJerkMagnitude-mean()"                    
[68] "FFTBodyBodyGyroscopeJerkMagnitude-standardDeviation()"
