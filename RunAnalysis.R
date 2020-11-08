
# download data
path1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(path1, destfile = "~/R practice/Getting_and_Cleaning_Data_Project.zip", mathod = "curl")
unzip("Getting_and_Cleaning_Data_Project.zip")

# read data into R
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table ("UCI HAR Dataset/activity_labels.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")


# Add column names to the data
names(features) <- c('n', 'functions')
names(activities) <- c('code', 'activity')
names(subject_train) <- c('subject')
names(subject_test) <- c('subject')
names(x_train) <- features$functions
names(x_test) <- features$functions
names(y_train) <-c('code')
names(y_test) <- c('code')

# Create one data set
Subject <- rbind(subject_train, subject_test)
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Human_Activity_Data <- cbind(Subject, Y, X) 

# Extract only Mean and Standard Deviation measurement

Human_Activity_Data <- Human_Activity_Data[,append(c(1,2),grep("[Mm]ean|std", names(Human_Activity_Data)))]

# Use description of activities
Human_Activity_Data$code <- activities[Human_Activity_Data$code, 2]


# Label column names appropriately

names(Human_Activity_Data) <- tolower(names(Human_Activity_Data))
names(Human_Activity_Data)[2] <- "activities"
names(Human_Activity_Data) <- gsub("acc", "accelerometer", names(Human_Activity_Data))
names(Human_Activity_Data) <- gsub("mag", "magnitude", names(Human_Activity_Data))
names(Human_Activity_Data)<- gsub("freq", "frequency", names(Human_Activity_Data))
names(Human_Activity_Data)<- gsub("gyro", "gyroscope", names(Human_Activity_Data))
names(Human_Activity_Data)<- gsub("bodybody", "body", names(Human_Activity_Data))

# create second tidy data set with the average of each variable for each activity and each subject.
Human_Activity_Data_Avg <- Human_Activity_Data %>%
  group_by(subject, activities) %>%
  summarize_all(funs(mean))


# Save txt files of the data to local
write.table(Human_Activity_Data,"Human_Activity_Data.txt")
write.table(Human_Activity_Data_Avg, "Human_Activity_Data_Avg.txt")
