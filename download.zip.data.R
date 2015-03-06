
# downolad data
tf <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",tf)
# create a temporary directory
td = tempdir()
# get the name of the first file in the zip archive
num.files <- unzip(tf, list=TRUE)$Name[1]
for (i in num.files){
fname = unzip(tf, list=TRUE)$i
# unzip the file to the temporary directory
unzip(tf, files=fname, exdir=td, overwrite=TRUE)
# fpath is the full path to the extracted file
fpath = file.path(td, fname)
}
unlink(tf)
