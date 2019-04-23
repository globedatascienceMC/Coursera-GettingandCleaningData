# Tidy Data Codebook
This is the codebook explaining the data and variables for tidydata.txt
This is the given information about the dataset from the original source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Subject
30 Subjects labelled with unique identifiers from 1-30

## Activity
Subjects performed 6 activities while wearing the smartphone:
- WALKING  
- WALKING_UPSTAIRS  
- WALKING_DOWNSTAIRS  
- SITTING  
- STANDING  
- LAYING  

## Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and tGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleromete-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrquenceBodyAccelerometerJerk-XYZ, FrquenceBodyGyroscope-XYZ, FrquenceBodyAccelerometerJerkMagnitude, FrquenceBodyGyroscopeMagnitude, FrquenceBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In this dataset, the set of variables that were estimated from these signals are the mean, standard deviation and mean frequency (weighted average of the frequency components to obtain a mean frequency).

The complete list of features for this dataset are:
- "TimeBodyAccelerometerMeanX"                                  
- "TimeBodyAccelerometerMeanY"                                  
- "TimeBodyAccelerometerMeanZ"                                  
- "TimeBodyAccelerometerStandarddeviationX"                     
- "TimeBodyAccelerometerStandarddeviationY"                     
- "TimeBodyAccelerometerStandarddeviationZ"                     
- "TimeGravityAccelerometerMeanX"                               
- "TimeGravityAccelerometerMeanY"                               
- "TimeGravityAccelerometerMeanZ"                               
- "TimeGravityAccelerometerStandarddeviationX"                  
- "TimeGravityAccelerometerStandarddeviationY"                  
- "TimeGravityAccelerometerStandarddeviationZ"                  
- "TimeBodyAccelerometerJerkMeanX"                              
- "TimeBodyAccelerometerJerkMeanY"                              
- "TimeBodyAccelerometerJerkMeanZ"                              
- "TimeBodyAccelerometerJerkStandarddeviationX"                 
- "TimeBodyAccelerometerJerkStandarddeviationY"                 
- "TimeBodyAccelerometerJerkStandarddeviationZ"                 
- "TimeBodyGyroscopeMeanX"                                      
- "TimeBodyGyroscopeMeanY"                                      
- "TimeBodyGyroscopeMeanZ"                                      
- "TimeBodyGyroscopeStandarddeviationX"                         
- "TimeBodyGyroscopeStandarddeviationY"                         
- "TimeBodyGyroscopeStandarddeviationZ"                         
- "TimeBodyGyroscopeJerkMeanX"                                  
- "TimeBodyGyroscopeJerkMeanY"                                  
- "TimeBodyGyroscopeJerkMeanZ"                                  
- "TimeBodyGyroscopeJerkStandarddeviationX"                     
- "TimeBodyGyroscopeJerkStandarddeviationY"                     
- "TimeBodyGyroscopeJerkStandarddeviationZ"                     
- "TimeBodyAccelerometerMagnitudeMean"                          
- "TimeBodyAccelerometerMagnitudeStandarddeviation"             
- "TimeGravityAccelerometerMagnitudeMean"                       
- "TimeGravityAccelerometerMagnitudeStandarddeviation"          
- "TimeBodyAccelerometerJerkMagnitudeMean"                      
- "TimeBodyAccelerometerJerkMagnitudeStandarddeviation"         
- "TimeBodyGyroscopeMagnitudeMean"                              
- "TimeBodyGyroscopeMagnitudeStandarddeviation"                 
- "TimeBodyGyroscopeJerkMagnitudeMean"                          
- "TimeBodyGyroscopeJerkMagnitudeStandarddeviation"             
- "FrequencyBodyAccelerometerMeanX"                             
- "FrequencyBodyAccelerometerMeanY"                             
- "FrequencyBodyAccelerometerMeanZ"                             
- "FrequencyBodyAccelerometerStandarddeviationX"                
- "FrequencyBodyAccelerometerStandarddeviationY"                
- "FrequencyBodyAccelerometerStandarddeviationZ"                
- "FrequencyBodyAccelerometerMeanfrequencyX"                    
- "FrequencyBodyAccelerometerMeanfrequencyY"                    
- "FrequencyBodyAccelerometerMeanfrequencyZ"                    
- "FrequencyBodyAccelerometerJerkMeanX"                         
- "FrequencyBodyAccelerometerJerkMeanY"                         
- "FrequencyBodyAccelerometerJerkMeanZ"                         
- "FrequencyBodyAccelerometerJerkStandarddeviationX"            
- "FrequencyBodyAccelerometerJerkStandarddeviationY"            
- "FrequencyBodyAccelerometerJerkStandarddeviationZ"            
- "FrequencyBodyAccelerometerJerkMeanfrequencyX"                
- "FrequencyBodyAccelerometerJerkMeanfrequencyY"                
- "FrequencyBodyAccelerometerJerkMeanfrequencyZ"                
- "FrequencyBodyGyroscopeMeanX"                                 
- "FrequencyBodyGyroscopeMeanY"                                 
- "FrequencyBodyGyroscopeMeanZ"                                 
- "FrequencyBodyGyroscopeStandarddeviationX"                    
- "FrequencyBodyGyroscopeStandarddeviationY"                    
- "FrequencyBodyGyroscopeStandarddeviationZ"                    
- "FrequencyBodyGyroscopeMeanfrequencyX"                        
- "FrequencyBodyGyroscopeMeanfrequencyY"                        
- "FrequencyBodyGyroscopeMeanfrequencyZ"                        
- "FrequencyBodyAccelerometerMagnitudeMean"                     
- "FrequencyBodyAccelerometerMagnitudeStandarddeviation"        
- "FrequencyBodyAccelerometerMagnitudeMeanfrequency"            
- "FrequencyBodyBodyAccelerometerJerkMagnitudeMean"             
- "FrequencyBodyBodyAccelerometerJerkMagnitudeStandarddeviation"
- "FrequencyBodyBodyAccelerometerJerkMagnitudeMeanfrequency"    
- "FrequencyBodyBodyGyroscopeMagnitudeMean"        
- "FrequencyBodyBodyGyroscopeMagnitudeStandarddeviation"
- "FrequencyBodyBodyGyroscopeMagnitudeMeanfrequency"            
- "FrequencyBodyBodyGyroscopeJerkMagnitudeMean"                 
- "FrequencyBodyBodyGyroscopeJerkMagnitudeStandarddeviation"    
- "FrequencyBodyBodyGyroscopeJerkMagnitudeMeanfrequency" 