Codebook.md
Author: Kesavan Kushalnagar
==================================
````
ID: The ID number of the volunteer. This ranges from 1 to 30.
Activity_ID: The action that the person was doing. There are 6 values:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Each of the variables has been appropriately named to reflect what they represent. The full list is as follows:

 [1] "Time Body Acceleration Mean X"                               
 [2] "Time Body Acceleration Mean Y"                               
 [3] "Time Body Acceleration Mean Z"                               
 [4] "Time Body Acceleration Standard Deviation X"                 
 [5] "Time Body Acceleration Standard Deviation Y"                 
 [6] "Time Body Acceleration Standard Deviation Z"                 
 [7] "Time Gravity Acceleration Mean X"                            
 [8] "Time Gravity Acceleration Mean Y"                            
 [9] "Time Gravity Acceleration Mean Z"                            
[10] "Time Gravity Acceleration Standard Deviation X"              
[11] "Time Gravity Acceleration Standard Deviation Y"              
[12] "Time Gravity Acceleration Standard Deviation Z"              
[13] "Time Body Acceleration Jerk Mean X"                          
[14] "Time Body Acceleration Jerk Mean Y"                          
[15] "Time Body Acceleration Jerk Mean Z"                          
[16] "Time Body Acceleration Jerk Standard Deviation X"            
[17] "Time Body Acceleration Jerk Standard Deviation Y"            
[18] "Time Body Acceleration Jerk Standard Deviation Z"            
[19] "Time Body Gyroscope Mean X"                                  
[20] "Time Body Gyroscope Mean Y"                                  
[21] "Time Body Gyroscope Mean Z"                                  
[22] "Time Body Gyroscope Standard Deviation X"                    
[23] "Time Body Gyroscope Standard Deviation Y"                    
[24] "Time Body Gyroscope Standard Deviation Z"                    
[25] "Time Body Gyroscope Jerk Mean X"                             
[26] "Time Body Gyroscope Jerk Mean Y"                             
[27] "Time Body Gyroscope Jerk Mean Z"                             
[28] "Time Body Gyroscope Jerk Standard Deviation X"               
[29] "Time Body Gyroscope Jerk Standard Deviation Y"               
[30] "Time Body Gyroscope Jerk Standard Deviation Z"               
[31] "Time Body Acceleration Magnitude Mean"                       
[32] "Time Body Acceleration Magnitude Standard Deviation"         
[33] "Time Gravity Acceleration Magnitude Mean"                    
[34] "Time Gravity Acceleration Magnitude Standard Deviation"      
[35] "Time Body Acceleration Jerk Magnitude Mean"                  
[36] "Time Body Acceleration Jerk Magnitude Standard Deviation"    
[37] "Time Body Gyroscope Magnitude Mean"                          
[38] "Time Body Gyroscope Magnitude Standard Deviation"            
[39] "Time Body Gyroscope Jerk Magnitude Mean"                     
[40] "Time Body Gyroscope Jerk Magnitude Standard Deviation"       
[41] "FFT Body Acceleration Mean X"                                
[42] "FFT Body Acceleration Mean Y"                                
[43] "FFT Body Acceleration Mean Z"                                
[44] "FFT Body Acceleration Standard Deviation X"                  
[45] "FFT Body Acceleration Standard Deviation Y"                  
[46] "FFT Body Acceleration Standard Deviation Z"                  
[47] "FFT Body Acceleration Mean Frequency X"                      
[48] "FFT Body Acceleration Mean Frequency Y"                      
[49] "FFT Body Acceleration Mean Frequency Z"                      
[50] "FFT Body Acceleration Jerk Mean X"                           
[51] "FFT Body Acceleration Jerk Mean Y"                           
[52] "FFT Body Acceleration Jerk Mean Z"                           
[53] "FFT Body Acceleration Jerk Standard Deviation X"             
[54] "FFT Body Acceleration Jerk Standard Deviation Y"             
[55] "FFT Body Acceleration Jerk Standard Deviation Z"             
[56] "FFT Body Acceleration Jerk Mean Frequency X"                 
[57] "FFT Body Acceleration Jerk Mean Frequency Y"                 
[58] "FFT Body Acceleration Jerk Mean Frequency Z"                 
[59] "FFT Body Gyroscope Mean X"                                   
[60] "FFT Body Gyroscope Mean Y"                                   
[61] "FFT Body Gyroscope Mean Z"                                   
[62] "FFT Body Gyroscope Standard Deviation X"                     
[63] "FFT Body Gyroscope Standard Deviation Y"                     
[64] "FFT Body Gyroscope Standard Deviation Z"                     
[65] "FFT Body Gyroscope Mean Frequency X"                         
[66] "FFT Body Gyroscope Mean Frequency Y"                         
[67] "FFT Body Gyroscope Mean Frequency Z"                         
[68] "FFT Body Acceleration Magnitude Mean"                        
[69] "FFT Body Acceleration Magnitude Standard Deviation"          
[70] "FFT Body Acceleration Magnitude Mean Frequency"              
[71] "FFT Body Body Acceleration Jerk Magnitude Mean"              
[72] "FFT Body Body Acceleration Jerk Magnitude Standard Deviation"
[73] "FFT Body Body Acceleration Jerk Magnitude Mean Frequency"    
[74] "FFT Body Body Gyroscope Magnitude Mean"                      
[75] "FFT Body Body Gyroscope Magnitude Standard Deviation"        
[76] "FFT Body Body Gyroscope Magnitude Mean Frequency"            
[77] "FFT Body Body Gyroscope Jerk Magnitude Mean"                 
[78] "FFT Body Body Gyroscope Jerk Magnitude Standard Deviation"   
[79] "FFT Body Body Gyroscope Jerk Magnitude Mean Frequency"       
[80] "activity_ID"    

Variables that end with X, Y, or Z represent the direction the variable was measured in. FFT stands for Fourier Fast Transform, which was used on the measurements.

````
