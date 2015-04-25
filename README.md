# DataCleaningPA
## Peer Assessment Project for Data Cleaning Course on Coursera

This file cotnains description on data transformation logic applied to the data taken from Human Activity Recognition Using Smartphones Data Set available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The dataset should be taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Initial Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A 

### Data Set transformations

According to the Course assignment inital data was transformed in the following way:
- test variables data set was merged with test subjects data set (labels) and test activity data set, so the resulted data set contains information on subject and activity
- train variables data set was merged with train subjects data set (labels) and train activity data set, so the resulted data set contains information on subject and activity
- test and train enriched data sets were merged together into single data set
- activity labels in the data set were converted from integer to factor format trough mapping with activity data set
- variable names in the data set were renamed trough mapping with features names data set
- all the varaibles from the data set were removed except for means and standard deviations dirivatives of the basic features
- new data set (called all_means) was created that has the same structure but containing only averages of all features by each subject and each activity
- the resulted final data set is saved into the file "all_means.txt"

All the above data manupulations are processed by the R script "run_analysis.R" contained in this Repository. All the processing steps are commented within the script. To run this script you should have initial data set (located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) downloaded and uziped, so the directory "UCI HAR Dataset" is located in your current working directory. 

### The resulted data set

After running the script the resulted data set "all_means.txt" (also contained in the Repositiry) will be located in your current working directory. The code book ("CodeBook.md") for this data set is also located in this Repository and contains infomation on initial and resulted features.
