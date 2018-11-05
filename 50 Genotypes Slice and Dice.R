# Description: 50 Genotypes Slice and dice the dataframe
# by Kevin Falk
# May 2018

######## 





AllData=read.csv("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Raw Data/KF_Imputed_DF.csv")

summary(AllData)
AllData$Rep=as.factor(AllData$Rep)
AllData$SB=as.factor(AllData$SB)
AllData$Entry=as.factor(AllData$Entry)
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

Day9_50GenotypesZ <- subset(day9_data, day9_data$Entry %in% c("252","198","246","75","212","12","168","110","125","99","240","199","26","143","97","43","281","210","137","138","284","109","39","151","145","18","203","150","236","64","103","258","257","153","34","48","136","44","255","115","147","248","61","167","278","166","54","131","155","116","225","295","264"))                              
Day9_Top25GenotypesZ <- subset(day9_data, day9_data$Entry %in% c("252","198","246","75","212","12","168","110","125","99","240","199","26","143","97","43","281","210","137","138","284","109","39","151","145","18","203","150"))
Day9_Bottom25GenotypesZ <- subset(day9_data, day9_data$Entry %in% c("236","64","103","258","257","153","34","48","136","44","255","115","147","248","61","167","278","166","54","131","155","116","225","295","264"))

write.csv(Day9_50Genotypes,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Top & Bottom 25/50Genotypes.csv", row.names = F)
write.csv(Day9_Top25Genotypes,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Top & Bottom 25/Top25Genotypes.csv", row.names = F)
write.csv(Day9_Bottom25Genotypes,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Top & Bottom 25/Bottom25Genotypes.csv", row.names = F)


Day9_50Genotypes <- subset(day9_data, day9_data$Entry %in% c("211","258","295","160","199","212","198","69","18","206","226","186","265","170","158","204","104","72","137","140","135","71","64","267","139","282","192","153","119","52","177","176","44","224","214","208","36","66","197","43","113","164","46","99","124","109","213","127","45","291"))
Day9_Top25Genotypes <- subset(day9_data, day9_data$Entry %in% c("211","258","295","160","199","212","198","69","18","206","226","186","265","170","158","204","104","72","137","140","135","71","64","267","139"))
Day9_Bottom25Genotypes <- subset(day9_data, day9_data$Entry %in% c("282","192","153","119","52","177","176","44","224","214","208","36","66","197","43","113","164","46","99","124","109","213","127","45","291"))
