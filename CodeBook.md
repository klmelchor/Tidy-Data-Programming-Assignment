# Tidy-Data-Programming-Assignment
Contains code book used for the tidy data assignment


run_analysis.R runs a script that constructs both the training and test data set. The script must be run with the working directory set to the main folder that contains all necessary files (i.e. "./UCI HAR Dataset/run_analysis.R").


Code Variables and Description

col_names - Contains the variable names of the data set  
activities - Contains look-up table for activity tags
mean_std_cols - A vector containing all column indeces that pertain to either "mean" or "std"

train_data_x - Storage for the x-components of training data
train_data_y - Storage for the y-components of training data
train_data_subj - Storage for the subject-components of training data
training_final - Constructed training data set containing all three previous tables

test_data_x - Storage for the x-components of test data
test_data_y - Storage for the y-components of test data
test_data_subj - Storage for the subject-components of test data
test_final - Constructed test data set containing all three previous tables

merged_data - Contains both the reconstructed training and test sets
final_data - A subset of merged_data where only column names that contain "mean" or "std" are selected
grouped_data - A summarized version of final_data containing the mean of all column variables grouped by Subject(1st priority) and Activity
