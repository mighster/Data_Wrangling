


df<-read.csv("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Data4Paper/All_Data_NoOutliers_Imputed.csv")
#subset only the 3 genotypes
df <- subset(df, df$Entry == "127" | df$Entry == "298" | df$Entry == "199")
#subset only the 116 MG2
df <- subset(df, df$MG == "2" | df$Entry == "298")
#Switch names from Entry to Genotype A, B and C
df$Entry <- gsub("127", "A", df$Entry)
df$Entry <- gsub("199", "C", df$Entry)
df$Entry <- gsub("298", "B", df$Entry)
df
AllData <- df[, c(,3:56)]

AllData$Entry=as.factor(AllData$Entry)
AllData$Day=as.factor(AllData$Day)

#output 3 genotypes
write.csv(df,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Data4Paper/MG2_3Genos_NoOutliers_Imputed.csv")
#output 116 MG2 genotypes
write.csv(df,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Maturity Group 2 ONLY data/MG2_NoOutliers_data.csv")

write.csv(df,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Data4Paper/MG2_3genos_data_NoOutliers.csv")

df<-read.csv("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/BLUPs/AdjustedBLUPsAllDays.csv")
df <- subset(df, df$Entry == "127" | df$Entry == "298" | df$Entry == "199")

#Switch names from Entry to Genotype A, B and C
df$Entry <- gsub("127", "A", df$Entry)
df$Entry <- gsub("199", "C", df$Entry)
df$Entry <- gsub("298", "B", df$Entry)

AllData <- df[,c(3:6,16:58)]

#output that beast
write.csv(AllData,"C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/3 Genotypes/3genotype_BLUPs.csv")
: