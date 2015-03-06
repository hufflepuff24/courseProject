#setwd("Coursera R Class/Getting and Cleaning Data/courseProject/")
if(!file.exists("./data")){dir.create("./data")}

# Make file name vectors for easy reference
UCI.files <- dir("./downloaddata/UCI HAR Dataset/")
train.files <- dir("./downloaddata/UCI HAR Dataset//train")
test.files <- dir("./downloaddata/UCI HAR Dataset//test")
train.inert.files <- dir("./downloaddata/UCI HAR Dataset//train//Inertial Signals")
test.inert.files <- dir("./downloaddata/UCI HAR Dataset//test//Inertial Signals")

# lets looks at a file
test.inert.files.dir <- c("./downloaddata/UCI HAR Dataset//test//Inertial Signals/")
body_acc.x_test <- read.csv(paste(test.inert.files.dir,test.inert.files[1],sep=""))
dim(body_acc.x_test)                          


## assume all the dataframes are loaded

# Make a list of dataframes
# dfList <- list(df1,df2,df3...)

# join_all() will join mulitple dataframes