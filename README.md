# Tidy Data Programming Assignment
Contains brief description of tasks used for the tidy data assignment

run_analysis.R runs a script that constructs both the training and test data set. The script must be run with the working directory set to the main folder that contains all necessary files (i.e. "./UCI HAR Dataset/run_analysis.R").

The script loads all necessary .txt files (from both training and test folders with corresponding feature names, and activity look-up table) into variables (as explained in CodeBook.md). The training and test data sets are constructed by merging the x-components (feature values), y-components (the corresponding activity detected), and the subject.

The script then merges and reshapes the data using different R techniques to create 2 cohesive data sets (1) merged training and test data sets, and (2) a data set grouped by subject and activity summarizing column variables via the mean.
