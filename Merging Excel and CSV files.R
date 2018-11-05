setwd("C:/Users/falk/Google Drive/PhD/PhD Projects/Blue Steel/2017 Data - Growth Chamber/Raw Data/FInal Data")
#Install/library packages
install.packages("purrr")
library(purrr)
library(readxl)
library(readr)
library(dplyr)

files <- list.files(pattern = "*.csv")
tables <- lapply(files, read.csv, header = TRUE)
combined.df <- do.call(rbind , tables)
write.csv(combined.df, "mainDF.csv")



file.list <- list.files(pattern = "*.xls")
df.list <- lapply(file.list, read_excel)
write.csv(df.list, "newDF.csv")

write_excel_csv(df.list, "newDF.csv", na = "NA", append = FALSE, col_names = !append)
