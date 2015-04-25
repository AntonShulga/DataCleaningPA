# DataCleaningPA
## Code Book for Peer Assessment Project for Data Cleaning Course on Coursera

This file cotnains description of initial data set manipulations and final data set 

### Initial Data Set Information

Please read http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information on initial data set.

Check the "README.txt" file (can be loaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for further details about initial dataset. 


### Data Set transformations

According to the Course assignment inital data was transformed in the following way:
- test variables data set was merged with test subjects data set (labels) and test activity data set, so the resulted data set contains information on subject and activity
- train variables data set was merged with train subjects data set (labels) and train activity data set, so the resulted data set contains information on subject and activity
- test and train enriched data sets were merged together into single data set
- activity labels in the data set were converted from integer to factor format trough mapping with activity data set
- variable names in the data set were renamed trough mapping with features names data set 
- all the varaibles from the data set were removed except for means and standard deviations dirivatives of the basic features (PLEASE NOTE: this results in only 66 variables selected, containing "mean()" and "std()" in names, so "meanFreq" features etc are NOT included)
- new data set (called "all_means") was created that has the same structure but containing only averages of all features by each subject and each activity
- the resulted final data set is saved into the file "all_means.txt"


### Processed data set description

You will find the resulted data set in the file all_means.txt included in this repository or as result of running run_analysis.R script included.

Please find below description of the variabile:

1. Subject
	Identifier of person that provided measurements data 
		1..30

2. Activity
	 Identifier of activity class for wicth the measurements are provided
		01. WALKING
		02. WALKING_UPSTAIRS
		03. WALKING_DOWNSTAIRS
		04. SITTING
		05. STANDING
		06. LAYING

3. tBodyAcc-mean()-X _MEAN
	- Average across observations of mean body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

4. tBodyAcc-mean()-Y _MEAN
	- Average across observations of mean body accelerometer value for Y axis (units: normalized and bounded within [-1,1])   

5. tBodyAcc-mean()-Z _MEAN
	- Average across observations of mean body accelerometer value for Z axis (units: normalized and bounded within [-1,1])   

6. tGravityAcc-mean()-X _MEAN 
	- Average across observations of mean gravity accelerometer value for X axis (units: normalized and bounded within [-1,1])  

7. tGravityAcc-mean()-Y _MEAN 
	- Average across observations of mean gravity accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

8. tGravityAcc-mean()-Z _MEAN 
	- Average across observations of mean gravity accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

9. tBodyAccJerk-mean()-X _MEAN 
	- Average across observations of mean of Jerk signals for body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

10. tBodyAccJerk-mean()-Y _MEAN 
	- Average across observations of mean of Jerk signals for body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

11. tBodyAccJerk-mean()-Z _MEAN
	- Average across observations of mean of Jerk signals for body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  
 
12. tBodyGyro-mean()-X _MEAN 
	- Average across observations of mean body angular velocity value for X axis (units: normalized and bounded within [-1,1])  

13. tBodyGyro-mean()-Y _MEAN 
	- Average across observations of mean body angular velocity value for Y axis (units: normalized and bounded within [-1,1])  

14. tBodyGyro-mean()-Z _MEAN
	- Average across observations of mean body angular velocity value for Z axis (units: normalized and bounded within [-1,1])  

15. tBodyGyroJerk-mean()-X _MEAN 
	- Average across observations of mean of Jerk signals for body angular velocity value for X axis (units: normalized and bounded within [-1,1])  

16. tBodyGyroJerk-mean()-Y _MEAN 
	- Average across observations of mean of Jerk signals for body angular velocity value for Y axis (units: normalized and bounded within [-1,1])  

17. tBodyGyroJerk-mean()-Z _MEAN 
	- Average across observations of mean of Jerk signals for body angular velocity value for Z axis (units: normalized and bounded within [-1,1])  

18. tBodyAccMag-mean() _MEAN 
	- Average across observations of mean of magnitute for  body accelerometer value (units: normalized and bounded within [-1,1])  

19. tGravityAccMag-mean() _MEAN 
	- Average across observations of mean of magnitute for  gravity accelerometer value (units: normalized and bounded within [-1,1])  

20. tBodyAccJerkMag-mean() _MEAN
	- Average across observations of mean of magnitute for  Jerk signals for body accelerometer value (units: normalized and bounded within [-1,1])  

21. tBodyGyroMag-mean() _MEAN 
	- Average across observations of mean of magnitute for  body angular velocity value (units: normalized and bounded within [-1,1])  

22. tBodyGyroJerkMag-mean() _MEAN 
	- Average across observations of mean of magnitute for  Jerk signals for body angular velocity value (units: normalized and bounded within [-1,1])  

23. fBodyAcc-mean()-X _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

24. fBodyAcc-mean()-Y _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

25. fBodyAcc-mean()-Z _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

26. fBodyAccJerk-mean()-X _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for Jerk signals for body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

27. fBodyAccJerk-mean()-Y _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for Jerk signals for body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

28. fBodyAccJerk-mean()-Z _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for Jerk signals for body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

29. fBodyGyro-mean()-X _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for body angular velocity value for X axis (units: normalized and bounded within [-1,1])  

30. fBodyGyro-mean()-Y _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for body angular velocity value for Y axis (units: normalized and bounded within [-1,1])  

31. fBodyGyro-mean()-Z _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for body angular velocity value for Z axis (units: normalized and bounded within [-1,1])  

32. fBodyAccMag-mean() _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for magnitute for body accelerometer value (units: normalized and bounded within [-1,1])  

33. fBodyBodyAccJerkMag-mean() _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for magnitute for Jerk signals for body accelerometer value (units: normalized and bounded within [-1,1])  

34. fBodyBodyGyroMag-mean() _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for magnitute for body angular velocity value (units: normalized and bounded within [-1,1])  

35. fBodyBodyGyroJerkMag-mean() _MEAN 
	- Average across observations of mean of Fast Fourier Transformation for magnitute for Jerk signals for body angular velocity value (units: normalized and bounded within [-1,1])  

36. tBodyAcc-std()-X _MEAN 
	- Average across observations of standard deviation of body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

37. tBodyAcc-std()-Y _MEAN 
	- Average across observations of standard deviation of body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

38. tBodyAcc-std()-Z _MEAN 
	- Average across observations of standard deviation of body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

39. tGravityAcc-std()-X _MEAN 
	- Average across observations of standard deviation of gravity accelerometer value for X axis (units: normalized and bounded within [-1,1])  

40. tGravityAcc-std()-Y _MEAN 
	- Average across observations of standard deviation of gravity accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

41. tGravityAcc-std()-Z _MEAN 
	- Average across observations of standard deviation of gravity accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

42. tBodyAccJerk-std()-X _MEAN 
	- Average across observations of standard deviation of Jerk signals for body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

43. tBodyAccJerk-std()-Y _MEAN 
	- Average across observations of standard deviation of Jerk signals for body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

44. tBodyAccJerk-std()-Z _MEAN 
	- Average across observations of standard deviation of Jerk signals for body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

45. tBodyGyro-std()-X _MEAN 
	- Average across observations of standard deviation of body angular velocity value for X axis (units: normalized and bounded within [-1,1])  

46. tBodyGyro-std()-Y _MEAN 
	- Average across observations of standard deviation of body angular velocity value for Y axis (units: normalized and bounded within [-1,1])  

47. tBodyGyro-std()-Z _MEAN 
	- Average across observations of standard deviation of body angular velocity value for Z axis (units: normalized and bounded within [-1,1])  

48. tBodyGyroJerk-std()-X _MEAN 
	- Average across observations of standard deviation of Jerk signals for body angular velocity value for X axis (units: normalized and bounded within [-1,1])  

49. tBodyGyroJerk-std()-Y _MEAN 
	- Average across observations of standard deviation of Jerk signals for body angular velocity value for Y axis (units: normalized and bounded within [-1,1])  

50. tBodyGyroJerk-std()-Z _MEAN 
	- Average across observations of standard deviation of Jerk signals for body angular velocity value for Z axis (units: normalized and bounded within [-1,1])  

51. tBodyAccMag-std() _MEAN 
	- Average across observations of standard deviation of magnitute for body accelerometer value (units: normalized and bounded within [-1,1])  

52. tGravityAccMag-std() _MEAN 
	- Average across observations of standard deviation of magnitute for gravity accelerometer value (units: normalized and bounded within [-1,1])  

53. tBodyAccJerkMag-std() _MEAN 
	- Average across observations of standard deviation of magnitute for Jerk signals for body accelerometer value (units: normalized and bounded within [-1,1])  

54. tBodyGyroMag-std() _MEAN 
	- Average across observations of standard deviation of magnitute for body angular velocity value (units: normalized and bounded within [-1,1])  

55. tBodyGyroJerkMag-std() _MEAN 
	- Average across observations of standard deviation of magnitute for Jerk signals for body angular velocity value (units: normalized and bounded within [-1,1])  

56. fBodyAcc-std()-X _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

57. fBodyAcc-std()-Y _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

58. fBodyAcc-std()-Z _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

59. fBodyAccJerk-std()-X _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for Jerk signls for body accelerometer value for X axis (units: normalized and bounded within [-1,1])  

60. fBodyAccJerk-std()-Y _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for Jerk signls for body accelerometer value for Y axis (units: normalized and bounded within [-1,1])  

61. fBodyAccJerk-std()-Z _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for Jerk signls for body accelerometer value for Z axis (units: normalized and bounded within [-1,1])  

62. BodyGyro-std()-X _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for body angular velocity value for X axis (units: normalized and bounded within [-1,1])  

63. fBodyGyro-std()-Y _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for body angular velocity value for Y axis (units: normalized and bounded within [-1,1])  

64. fBodyGyro-std()-Z _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for body angular velocity value for Z axis (units: normalized and bounded within [-1,1])  

65. fBodyAccMag-std() _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for magnitute for body accelerometer value (units: normalized and bounded within [-1,1])  

66. fBodyBodyAccJerkMag-std() _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for magnitute for Jerk signals for body accelerometer value (units: normalized and bounded within [-1,1])  

67. fBodyBodyGyroMag-std() _MEAN 
	- Average across observations of standard deviation of Fast Fourier Transformation for magnitute for body angular velocity value (units: normalized and bounded within [-1,1])  

68. fBodyBodyGyroJerkMag-std() _MEAN
	- Average across observations of standard deviation of Fast Fourier Transformation for magnitute for Jerk signals for body angular velocity value (units: normalized and bounded within [-1,1])  
