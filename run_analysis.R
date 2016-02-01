#1. Merge the training and test sets to create one data set
library(plyr)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

#2. Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("UCI HAR Dataset/features.txt")
meanstdv <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, meanstdv]
names(x_data) <- features[meanstdv, 2]

#3. Use descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

#4. Appropriately label the data set with descriptive variable names
names(subject_data) <- "subject"
all_data <- cbind(x_data, y_data, subject_data)
names(all_data)<-gsub("std", "Std", names(all_data))
names(all_data)<-gsub("mean", "Mean", names(all_data))
names(all_data)<-gsub("^t", "time", names(all_data))
names(all_data)<-gsub("^f", "frequency", names(all_data))
names(all_data)<-gsub("Acc", "Accelerometer", names(all_data))
names(all_data)<-gsub("Gyro", "Gyroscope", names(all_data))
names(all_data)<-gsub("Mag", "Magnitude", names(all_data))
names(all_data)<-gsub("BodyBody", "Body", names(all_data))
names(all_data)<-gsub("\\(\\)", "", names(all_data))
names(all_data)<-gsub("-", "", names(all_data))

#5. Create a second, independent tidy data set with the average of each variable
tidydata <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(tidydata, "UCI HAR Dataset/tidydata.txt", row.name=FALSE)