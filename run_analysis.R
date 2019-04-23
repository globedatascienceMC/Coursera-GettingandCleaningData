library(dplyr)

#1.Merges the training and the test sets to create one data set. 
  #combine x_train(dataset without column names) with y_train(type of activity) and subject_train

features <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/features.txt")
  
#combine train
xtrain <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/train/X_train.txt")
View(head(xtrain))
colnames(xtrain) <- features$V2
ytrain <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/train/y_train.txt")
View(ytrain)
colnames(ytrain) <- "Activity"
subjectTrain <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/train/subject_train.txt")
View(subjectTrain)
colnames(subjectTrain) <- "Subject"
train <- cbind(Subject = subjectTrain, Activity = ytrain, xtrain)
View(head(train))

#combine test
xtest <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/test/X_test.txt")
View(xtest)
colnames(xtest) <- features$V2
ytest <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/test/y_test.txt")
View(ytest)
colnames(ytest) <- "Activity"
subjectTest <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/test/subject_test.txt")
View(subjectTest)
length()
colnames(subjectTest) <- "Subject"
test <- cbind(Subject= subjectTest, Activity= ytest, xtest)
View(head(test))

#Combine test and train
test_train_data <- rbind(test, train)
View(head(test_train_data))

#3. Appropriately labels the data set with descriptive variable names.
activitylabels <- read.table("~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/UCI HAR Dataset/activity_labels.txt")
View(activitylabels) 
colnames(activitylabels) <- c("Activity", "Description")
test_train_data$Activity <- activitylabels[test_train_data$Activity, 2]

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
neededColumns <- grep("Subject|Activity|mean|std", colnames(test_train_data))
View(neededColumns)
test_train_data <- test_train_data[,neededColumns]
trial <- test_train_data[,neededColumns]
View(test_train_data)

#4. Appropriately labels the data set with descriptive variable names
colnames(test_train_data) <- gsub("^t", "Time", names(test_train_data))
colnames(test_train_data) <- gsub("^f", "Frequency", names(test_train_data))
colnames(test_train_data) <- gsub("Acc", "Accelerometer", colnames(test_train_data))
colnames(test_train_data) <- gsub("Gyro", "Gyroscope", colnames(test_train_data))
colnames(test_train_data) <- gsub("Mag", "Magnitude", colnames(test_train_data))
colnames(test_train_data) <- gsub("-mean", "Mean", colnames(test_train_data))
colnames(test_train_data) <- gsub("MeanFreq", "Meanfrequency", colnames(test_train_data))
colnames(test_train_data) <- gsub("-std", "Standarddeviation", colnames(test_train_data))
colnames(test_train_data) <- gsub("\\()", "", colnames(test_train_data))
colnames(test_train_data) <- gsub("\\-", "", colnames(test_train_data))
colnames(test_train_data)
View(test_train_data)

#5. Create a second, independent tidy set with the average of each
#variable for each activity and each subject
tidydata <-test_train_data %>% 
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))

write.table(tidydata, "~/COURSERA LECTURES/Getting and Cleaning Data/Programming Assignment-GettingandCleaningData/tidydata.txt", row.names=FALSE)