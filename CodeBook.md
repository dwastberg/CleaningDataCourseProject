# Codebook for subset of Human Activity Recognition Using Smartphones Dataset

Feature Selection 
=================

Each row represents the measurements of a given subject performing one of 6 activites:

subject: A number from 1-30 
activity: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING or LAYING

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ   

tGravityAccXYZ   

tBodyAccJerkXYZ   

tBodyGyroXYZ   

tBodyGyroJerkXYZ   

tBodyAccMag   

tGravityAccMag   

tBodyAccJerkMag   

tBodyGyroMag   

tBodyGyroJerkMag   

fBodyAccXYZ   

fBodyAccJerkXYZ   

fBodyGyroXYZ   

fBodyAccMag   

fBodyAccJerkMag   

fBodyGyroMag   

fBodyGyroJerkMag   

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

So, for example, the variable representing standard deviation of the fBody Accelecration in the X direction is fBodyAccmeanX.

The summarized dataset "UCI\_HAR\_avg\_by\_subject\_activity.txt"  contains the same variables, except each feature has the prefix "avg".  This is the average of all measurements of a given subject performing a given action.

The complete list of variables is as follows:

"subject"         

"tBodyAccmeanX"            
"tBodyAccmeanY"           
"tBodyAccmeanZ"            

"tBodyAccstdX"             
"tBodyAccstdY"            
"tBodyAccstdZ"             

"tGravityAccmeanX"         
"tGravityAccmeanY"        
"tGravityAccmeanZ"         

"tGravityAccstdX"          
"tGravityAccstdY"         
"tGravityAccstdZ"          

"tBodyAccJerkmeanX"        
"tBodyAccJerkmeanY"       
"tBodyAccJerkmeanZ"        

"tBodyAccJerkstdX"         
"tBodyAccJerkstdY"        
"tBodyAccJerkstdZ"         

"tBodyGyromeanX"           
"tBodyGyromeanY"          
"tBodyGyromeanZ"           

"tBodyGyrostdX"            
"tBodyGyrostdY"           
"tBodyGyrostdZ"            

"tBodyGyroJerkmeanX"       
"tBodyGyroJerkmeanY"      
"tBodyGyroJerkmeanZ"       

"tBodyGyroJerkstdX"        
"tBodyGyroJerkstdY"       
"tBodyGyroJerkstdZ"        

"tBodyAccMagmean"          
"tBodyAccMagstd"           

"tGravityAccMagmean"       
"tGravityAccMagstd"        

"tBodyAccJerkMagmean"     
"tBodyAccJerkMagstd"       

"tBodyGyroMagmean"         
"tBodyGyroMagstd"         

"tBodyGyroJerkMagmean"     
"tBodyGyroJerkMagstd"      

"fBodyAccmeanX"           
"fBodyAccmeanY"            
"fBodyAccmeanZ"            

"fBodyAccstdX"            
"fBodyAccstdY"             
"fBodyAccstdZ"             

"fBodyAccJerkmeanX"       
"fBodyAccJerkmeanY"        
"fBodyAccJerkmeanZ"        

"fBodyAccJerkstdX"        
"fBodyAccJerkstdY"         
"fBodyAccJerkstdZ"         

"fBodyGyromeanX"          
"fBodyGyromeanY"           
"fBodyGyromeanZ"           

"fBodyGyrostdX"           
"fBodyGyrostdY"            
"fBodyGyrostdZ"            

"fBodyAccMagmean"         
"fBodyAccMagstd"           

"fBodyBodyAccJerkMagmean"  
"fBodyBodyAccJerkMagstd"  

"fBodyBodyGyroMagmean"     
"fBodyBodyGyroMagstd"      

"fBodyBodyGyroJerkMagmean"
"fBodyBodyGyroJerkMagstd"  

"activity" 



