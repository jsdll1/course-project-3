run_Analysis <- function () {
  library(dplyr)
  output <- list()
  
  #reads data from file
  features <- read.table("./UCI HAR Dataset/features.txt")[,2]
  subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  xTest <- read.table("./UCI HAR Dataset/test/x_test.txt")
  yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  xTrain <- read.table("./UCI HAR Dataset/train/x_train.txt")
  yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")

  
  #Merges the training and the test sets to create one data set.
  combinedData <- as_tibble(rbind(xTrain, xTest))
  names(combinedData) <- features
  
  #Extracts only the measurements on the mean and standard deviation
  filteredData <- combinedData[,grep("mean\\(\\)|std\\(\\)", names(combinedData))]
  
  
  #Adds subject data to the data set
  combinedSubjectData <- rbind(subjectTrain, subjectTest)
  filteredData$subject <- combinedSubjectData[,1]
  
  #Uses descriptive activity names to name the activities in the data set
  combinedActivityData <- rbind(yTrain, yTest)
  filteredData$activity <- combinedActivityData[,1]
  filteredData <- filteredData %>% mutate(activity = recode(activity,
                                            '1' = "WALKING",
                                            '2' = 'WALKING_UPSTAIRS',
                                            '3' = 'WALKING_DOWNSTAIRS',
                                            '4' = 'SITTING',
                                            '5' = 'STANDING',
                                            '6' = 'LAYING'))
  
  #Appropriately labels the data set with descriptive variable names.
  filteredData <- filteredData %>%
    rename_with(~gsub("std", "standardDeviation", .x)) %>%
    rename_with(~gsub("Mag", "Magnitude", .x)) %>%
    rename_with(~gsub("Acc", "Accelerometer", .x)) %>%
    rename_with(~gsub("Gyro", "Gyroscope", .x)) %>%
    rename_with(~gsub("^f", "FFT", .x)) %>%
    rename_with(~gsub("^t", "timeDomain", .x)) %>%
    rename_with(~gsub("X$", "Xaxis", .x)) %>%
    rename_with(~gsub("Y$", "Yaxis", .x)) %>%
    rename_with(~gsub("Z$", "Zaxis", .x))
                
  # creates a tidy data set with the average of each variable for each activity 
  # and each subject.
  
  averagedData <- filteredData %>% group_by(activity, subject) %>% 
    summarize_all(~mean(.x))
  
  #output averaged data set into a file
  write.table(averagedData, file = "./averagedData.txt", row.names = FALSE)

}
