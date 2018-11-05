library(installr)


#Cut and Paste random files (both JPG and their PNG counterpart) from one directory to another


setwd("G:/segmented_images/") #set working directory
 
newdir <- "G:/segmented_images/newdir" #create a new directory where you want the files to go
currentdir <- getwd() #name current directory

matdir <- "D:/MATFilesALL"

files <- list.files(currentdir, pattern = "*.JPG", full.names = TRUE) #list all the files in the folder
subset <- sample(files,2000) #subset a random sample from the list
files_new <- gsub(dirname(subset[1]), newdir, subset) #create a new list using the directory where the files need to go

#file.rename(subset[1], files_new[1])


#for loop to replace and rename the files in the old directory with the files in the new directory
for (i in 1:length(subset)) {
  
  file.rename(subset[i], files_new[i])
  
}

write.csv(subset,"CNN_2000_subset.csv")
