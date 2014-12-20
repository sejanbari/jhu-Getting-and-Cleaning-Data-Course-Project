#read UCI HAR Dataset file from R working directory
xtest<-read.table("~\\UCI HAR Dataset\\test\\X_test.txt")
xtrain<-read.table("~\\UCI HAR Dataset\\train\\X_train.txt")
ytest<-read.table("~\\UCI HAR Dataset\\test\\Y_test.txt")
ytrain<-read.table("~\\UCI HAR Dataset\\train\\Y_train.txt")
subjecttrain<-read.table("~\\UCI HAR Dataset\\train\\subject_train.txt")
subjecttest<-read.table("~\\UCI HAR Dataset\\test\\subject_test.txt")
features<-read.table("~\\UCI HAR Dataset\\features.txt")
activity<-read.table("~\\UCI HAR Dataset\\activity_labels.txt")

#combine test and train datasets
test<-cbind(ytest,subjecttest,xtest)
train<-cbind(ytrain,subjecttrain,xtrain)
dataT<-rbind(train,test)

#assign column names to combined dataset
featurenames<-as.vector(features$V2)
columnNames<-c("activity", "subject", featurenames)
colnames(dataT)<-columnNames

#convert dataT$activity from integers to levels defined in activity_labels.txt
ss<-factor(as.vector(activity$V2), levels = as.vector(activity$V2))
dataT$activity<-factor(dataT$activity)
levels(dataT$activity)<-levels(ss)

#extract columns with measurements of mean and standard deviations
indexnum<-c(-1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543) + 2
dataTT<-dataT[indexnum]

#calculate the means of the measurement by each activity of each subject
library(dplyr)
dataTTT <- dataTT
names(dataTTT)<-gsub("()","",names(dataTTT), fixed=TRUE)
names(dataTTT)<-gsub("-","_",names(dataTTT), fixed=TRUE)
dataFinal <- dataTTT %>% group_by(subject,activity) %>% summarise_each(funs(mean)) 

#write final dataset to a text file on the R working directory
write.table(dataFinal, "~\\dataFinal.txt", sep="\t")

#import the final data set from the R working directory
tbl_df(read.table("~\\dataFinal.txt", header = TRUE))
