# course-project-3
Getting and Cleaning Data Course Project

The run_Analysis script works as follows

1. The first section reads all of the data from the file.
  - read.table is used because all the files uses spaces to separate the values
  - features extract the 2nd column of the features.txt file, which represents the 561 variables used.
2. The test and training sets are combined through rbind and converted to tibble for easier viewing. The column names from the feature file is then added.
3. The means and standard deviation is extracted by selecting the columns with names containing "mean()" or "std()". This is then saved to filteredData data frame.
4. The subject data from the subject_test.txt and subject_Train.txt files are combined through rbind and added to the filteredData data frame.
5. The activity data from the y_test.txt and y_train.txt files are combined through rbind and added to the filteredData data frame. The integers are then changed to a more descriptive name through recoding and mutating the column.
6. The column names are changed to a more descriptive name through the rename_with function.
7. The second data set is created by grouping the filteredData data frame by activity and subject, and then summarizing all the other columns by getting it's mean.
