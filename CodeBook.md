"The original Human Activity Recognition Using Smartphone Dataset. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain." (UCI, Human Activity Recognition Using Smartphones Data Set, `README.txt` )

The features in the original data have already been normalized and bounded within [-1,1]

There are two dataset created from running the `run_analysis.R` script on the original data The `Human_Activity_Data.txt` file was created by combining the train and test data and only taking the features that contained mean and standard deviation of the measurements. The `Human_Activity_Data_Avg.txt` takes is a step futher by taking the average of those measurement based on subject and activty type. Both datasets contain the columns below:


"subject"                                         "activities"                                     
"tbodyaccelerometer-mean()-x"                     "tbodyaccelerometer-mean()-y"                    
"tbodyaccelerometer-mean()-z"                     "tbodyaccelerometer-std()-x"                     
"tbodyaccelerometer-std()-y"                      "tbodyaccelerometer-std()-z"                     
"tgravityaccelerometer-mean()-x"                  "tgravityaccelerometer-mean()-y"                 
"tgravityaccelerometer-mean()-z"                  "tgravityaccelerometer-std()-x"                  
"tgravityaccelerometer-std()-y"                   "tgravityaccelerometer-std()-z"                  
"tbodyaccelerometerjerk-mean()-x"                 "tbodyaccelerometerjerk-mean()-y"                
"tbodyaccelerometerjerk-mean()-z"                 "tbodyaccelerometerjerk-std()-x"                 
"tbodyaccelerometerjerk-std()-y"                  "tbodyaccelerometerjerk-std()-z"                 
"tbodygyroscope-mean()-x"                         "tbodygyroscope-mean()-y"                        
"tbodygyroscope-mean()-z"                         "tbodygyroscope-std()-x"                         
"tbodygyroscope-std()-y"                          "tbodygyroscope-std()-z"                         
"tbodygyroscopejerk-mean()-x"                     "tbodygyroscopejerk-mean()-y"                    
"tbodygyroscopejerk-mean()-z"                     "tbodygyroscopejerk-std()-x"                     
"tbodygyroscopejerk-std()-y"                      "tbodygyroscopejerk-std()-z"                     
"tbodyaccelerometermagnitude-mean()"              "tbodyaccelerometermagnitude-std()"              
"tgravityaccelerometermagnitude-mean()"           "tgravityaccelerometermagnitude-std()"           
"tbodyaccelerometerjerkmagnitude-mean()"          "tbodyaccelerometerjerkmagnitude-std()"          
"tbodygyroscopemagnitude-mean()"                  "tbodygyroscopemagnitude-std()"                  
"tbodygyroscopejerkmagnitude-mean()"              "tbodygyroscopejerkmagnitude-std()"              
"fbodyaccelerometer-mean()-x"                     "fbodyaccelerometer-mean()-y"                    
"fbodyaccelerometer-mean()-z"                     "fbodyaccelerometer-std()-x"                     
"fbodyaccelerometer-std()-y"                      "fbodyaccelerometer-std()-z"                     
"fbodyaccelerometer-meanfrequency()-x"            "fbodyaccelerometer-meanfrequency()-y"           
"fbodyaccelerometer-meanfrequency()-z"            "fbodyaccelerometerjerk-mean()-x"                
"fbodyaccelerometerjerk-mean()-y"                 "fbodyaccelerometerjerk-mean()-z"                
"fbodyaccelerometerjerk-std()-x"                  "fbodyaccelerometerjerk-std()-y"                 
"fbodyaccelerometerjerk-std()-z"                  "fbodyaccelerometerjerk-meanfrequency()-x"       
"fbodyaccelerometerjerk-meanfrequency()-y"        "fbodyaccelerometerjerk-meanfrequency()-z"       
"fbodygyroscope-mean()-x"                         "fbodygyroscope-mean()-y"                        
"fbodygyroscope-mean()-z"                         "fbodygyroscope-std()-x"                         
"fbodygyroscope-std()-y"                          "fbodygyroscope-std()-z"                         
"fbodygyroscope-meanfrequency()-x"                "fbodygyroscope-meanfrequency()-y"               
"fbodygyroscope-meanfrequency()-z"                "fbodyaccelerometermagnitude-mean()"             
"fbodyaccelerometermagnitude-std()"               "fbodyaccelerometermagnitude-meanfrequency()"    
"fbodyaccelerometerjerkmagnitude-mean()"          "fbodyaccelerometerjerkmagnitude-std()"          
"fbodyaccelerometerjerkmagnitude-meanfrequency()" "fbodygyroscopemagnitude-mean()"                 
"fbodygyroscopemagnitude-std()"                   "fbodygyroscopemagnitude-meanfrequency()"        
"fbodygyroscopejerkmagnitude-mean()"              "fbodygyroscopejerkmagnitude-std()"              
"fbodygyroscopejerkmagnitude-meanfrequency()" 
