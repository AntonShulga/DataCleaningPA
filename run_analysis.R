## This script is a Peer Assesment Project #1 of a Getting and Cleaning Data 
## Course on Coursera 

## loading libraries
library(dplyr)

path <- "UCI HAR Dataset"
if (length(grep(path, dir()))>0) { ## go on only if data dir exists  
        
        ## read data from train and test txt files (features, subjects and activities) 
        test_set <- read.table("./UCI HAR Dataset/test/X_test.txt", comment.char="", strip.white = TRUE)
        subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", comment.char="", strip.white = TRUE)
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", comment.char="", strip.white = TRUE)
        train_set <- read.table("./UCI HAR Dataset/train/X_train.txt", comment.char="", strip.white = TRUE)
        subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", comment.char="", strip.white = TRUE)
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", comment.char="", strip.white = TRUE)
        
        ## read activity labels and put them into datasets
        ALabels <- read.table("./UCI HAR Dataset/activity_labels.txt", comment.char="", strip.white = TRUE)
        y_train <- merge(y_train, ALabels)
        y_test <- merge(y_test, ALabels)
        
        ## read feature names and put them into column names of the data set 
        Features_names <- read.table("./UCI HAR Dataset/features.txt", comment.char="", strip.white = TRUE)
        names(train_set) <- Features_names[,2]
        names(test_set) <- Features_names[,2]
                
        ## merge test and train sets into single set
        test_set <- cbind(subj_test, y_test[,2], test_set)
        train_set <- cbind(subj_train, y_train[,2], train_set)
        names(train_set)[1] <- "Subject"
        names(test_set)[1] <- "Subject"
        names(train_set)[2] <- "Activity"
        names(test_set)[2] <- "Activity"
        
        all_set <- rbind(train_set, test_set)
        
        ## select only features that are mean() or std() of the signals
        ind_mean <- grep("mean()", names(all_set), fixed = TRUE)
        ind_std <- grep("std()", names(all_set), fixed = TRUE)
        ind <- c(1,2,ind_mean, ind_std)
        all_set <- all_set[,ind]
        
        
        ## build a new tidy data set "all_means" with the means of all selected 
        ## variables for each combination of subject and activity
        j <- 0 ## counter of unique combinations
        dim <- length(unique(all_set$Subject))*length(unique(all_set$Activity))
        all_heads <- data.frame(Subject = 1:dim, Activity = character(dim))
        all_heads$Activity <- as.character(all_heads$Activity)
        all_means <- as.data.frame(matrix(nrow = dim, ncol = ncol(all_set)-2))
        for(subj in unique(all_set$Subject)) {
                temp1 <- filter(all_set, Subject == subj)
                for(act in unique(temp1$Activity)) {
                     temp2 <-  filter(temp1, Activity == act)
                     j <- j+1
                     all_heads[j,1] <- subj
                     all_heads[j,2] <- as.character(act)
                     all_means[j,] <- colMeans(select(temp2,-(1:2)))                     
                }
        }
        all_means <- cbind(all_heads, all_means)
        all_means <- all_means[1:j,] ## trim the data set to the number of unique combinations of subject and activity factors  
       
        ## set correct column names and sort the data set
        names(all_means)[1:2] <- names(all_set)[1:2]
        names(all_means)[-(1:2)] <- sapply(names(all_set)[-(1:2)], paste, "_MEAN")
        all_means <- arrange(all_means, Subject, Activity)
        
        ## write a data set into a file
        write.table(all_means, "all_means.txt", row.names = FALSE)
        
} else {
        print(paste("Data directory not found: ", path))
}