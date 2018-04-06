#Load variable names 

col_names <- read.table("features.txt")

#Loads the Training Data Set

train_data_x <- read.table("./train/X_train.txt")
train_data_y <- read.table("./train/Y_train.txt")
train_data_subj <- read.table("./train/subject_train.txt")


#Loads the Test Data Set

test_data_x <- read.table("./test/X_test.txt")
test_data_y <- read.table("./test/Y_test.txt")
test_data_subj <- read.table("./test/subject_test.txt")

#Set variables Names in each data set

colnames(train_data_x) <- col_names[,2]
colnames(test_data_x) <- col_names[,2]


#Merges the 3 Training tables to form the complete Training Set

train_subj_y <- cbind(train_data_subj, train_data_y)
colnames(train_subj_y) <- c("Subject", "Activity")
training_final <- cbind(train_subj_y, train_data_x)

#Merges the 3 Test tables to form the complete Test Set

test_subj_y <- cbind(test_data_subj, test_data_y)
colnames(test_subj_y) <- c("Subject", "Activity")
test_final <- cbind(test_subj_y, test_data_x)


#Merges Training and Test Sets and appropriately labels table columns

merged_data <- rbind(test_final, training_final)

#Loads activities "code book" and changes activity column of the merged data set

activities <- read.table("activity_labels.txt")
merged_data$Activity <- activities$V2[merged_data$Activity]

#Finds all columns associated with mean() or std()

mean_std_cols <- grep("[Mm]ean", names(merged_data))
mean_std_cols <- sort(c(mean_std_cols, grep("[Ss]td", names(merged_data))))

#Creates the final data set

final_data <- merged_data[,c(1,2,mean_std_cols)]

#Creates a data set of averages for each column grouped by subject and activity

grouped_data <-final_data %>% group_by(Subject, Activity) %>% summarize_all(funs(mean))

