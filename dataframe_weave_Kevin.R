# Description: Weave data frames
# by Kevin Falk
# May 2018

######## I used this script to merge two dataframes taking one column from each datafram at a time so that I could compare the
######## data with outliers vs the data without outliers.

AllData1=read.csv("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Raw Data/BlueSteelData05_08_2018_CHECKSTOP.csv")
AllData2=read.csv("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Raw Data/FullData_AllTraits_NoOutliers.csv")

AllData1 <- as.data.frame(AllData1)
AllData2 <- as.data.frame(AllData2)

outputAllData <- data.frame(0) #empty dataframe (it must have something in it for the cbind to work)

namesAllData1=colnames(AllData1) #pull out the column header names
namesAllData2=colnames(AllData2) #pull out the column header names

for (i in 1:52){ #i is column number
  columnloop1 <- as.data.frame(AllData1[[i]]) #set column as a dataframe
  x=namesAllData1[i]  #set the current [i] column as x
  colnames(columnloop1) <- x #set column header to column header name
  columnloop2 <- as.data.frame(AllData2[[i]]) #set column as a dataframe
  y=namesAllData2[i]  #set the current [i] column as x
  colnames(columnloop2) <- y #set column header to column header name
  outputAllData <- cbind(outputAllData,columnloop1,columnloop2) #add columns to existing dataframe
}

write.csv(outputAllData,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Raw Data/Outlier_NoOutliers_Comparison.csv", row.names = F)

