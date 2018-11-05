
# Description: Slice and dice the dataframe
# by Kevin Falk
# May 2018

######## 

###############################################################

library(lme4)

AllData=read.csv("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Raw Data/BlueSteelData05_08_2018_CHECKSTOP.csv")

summary(AllData)
AllData$Rep=as.factor(AllData$Rep)
AllData$SB=as.factor(AllData$SB)
AllData$Cluster=as.factor(AllData$Cluster)
AllData$Name=as.factor(AllData$Name)
AllData$Country=as.factor(AllData$Country)
##### can kevin get this to work? ##### full_data[columns] <- lapply(full_data[columns],factor)

colnames(AllData)
colnum=c(17:52)
names=colnames(AllData)

#split data into df Days
day6_data <- subset(AllData, AllData$Day == "6")
day9_data <- subset(AllData, AllData$Day == "9")
day12_data <- subset(AllData, AllData$Day == "12")

#Option to split data into 2 Growth Chambers
day6_RSE13data <- subset(day6_data, day6_data$SB == c("1","3","5","7","9","11","13"))
day6_RSE28data <- subset(day6_data, day6_data$SB == c("2","4","6","8","10","12","14"))
day9_RSE13data <- subset(day9_data, day9_data$SB == c("1","3","5","7","9","11","13"))
day9_RSE28data <- subset(day9_data, day9_data$SB == c("2","4","6","8","10","12","14"))
day12_RSE13data <- subset(day12_data, day12_data$SB == c("1","3","5","7","9","11","13"))
day12_RSE28data <- subset(day12_data, day12_data$SB == c("2","4","6","8","10","12","14"))

#########################Race's method to split data by Entry into lists
Day6EntryList <- split(day6_data, day6_data$Entry)
length(Day6EntryList) #300 Entries
head(Day6EntryList)

Day9EntryList <- split(day9_data, day9_data$Entry)
length(Day9EntryList) #300 Entries
head(Day9EntryList)

Day12EntryList <- split(day12_data, day12_data$Entry)
length(Day12EntryList) #300 Entries
head(Day12EntryList)

#########################Matt's loop to split data by Entry
#ONLY DAY 6
for(i in 1:300){
  nam<- paste("Day6_Entry", i, sep = "")
  assign(nam,subset(day6_data, day6_data$Entry == i)) #### replace df with whatever data frame contains all your information
}
#ONLY DAY 9
for(i in 1:300){
  nam<- paste("Day9_Entry", i, sep = "")
  assign(nam,subset(day9_data, day9_data$Entry == i)) #### replace df with whatever data frame contains all your information
}
#ONLY DAY 12
for(i in 1:300){
  nam<- paste("Day12_Entry", i, sep = "")
  assign(nam,subset(day12_data, day12_data$Entry == i)) #### replace df with whatever data frame contains all your information
}

#########################Race's method to split data by Day into lists
mylist <- split(AllData, AllData$Day)
length(mylist) #3 days
head(mylist)


