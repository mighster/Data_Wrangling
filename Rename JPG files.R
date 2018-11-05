library(installr)


#Cut and Paste random files (both JPG and their PNG counterpart) from one directory to another


setwd("C:/Users/falk/Pictures/Engagement/Slideshow Images/Kevin1") #set working directory

newdir <- "C:/Users/falk/Pictures/Engagement/Slideshow Images/newdir" #create a new directory where you want the files to go
currentdir <- getwd() #name current directory
#matdir <- "D:/MATFilesALL"

files <- list.files(currentdir, pattern = "*.jpg", full.names = TRUE) #list all the files in the folder
#subset <- sample(files,2000) #subset a random sample from the list
files_new <- gsub(dirname(files[1]), newdir, subset) #create a new list using the directory where the files need to go
i=3
#for loop to replace and rename the files in the old directory with the files in the new directory
for (i in 1:length(files)) {
  
  file.rename(files[i], c(i,".jpg"))
  }

c(i*2,".jpg")
files[3]
######################################################################################################################
######################################################################################################################
######################################################################################################################

oldNames<-list.files(currentdir, pattern = "*.jpg", full.names = FALSE) #list all the files in the folder
newNames <- seq(0, 10, by=2)
for (i in 1:length(oldNames)) file.rename(oldNames[i],paste(sep="",i,".jpg"))

######################################################################################################################
######################################################################################################################
######################################################################################################################

subsetNoExt <- tools::file_path_sans_ext(subset) #remove file extension from subset list (JPG)
subsetPNG <- paste(subsetNoExt, ".png", sep="") #add new file extension on subset list (PNG)
PNG_new <- gsub(dirname(subsetPNG[1]), newdir, subsetPNG) #create the entire new file name/directory for this list
subsetPNG <- paste(subsetNoExt, ".png", sep="")

for (i in 1:length(subset)) { 
  
  file.rename(subsetPNG[i], PNG_new[i])
  
}

setwd("D:/MATFilesALL") #set working directory
matdir <- "D:/MATFilesALL"
newMATdir <- "D:/MATFilesALL/Random_Subsample"
subsetMAT <- paste(subset, ".mat", sep="")

MAT_old <- gsub(dirname(subset[1]), matdir, subsetMAT)
MAT_new <- gsub(dirname(subset[1]), newMATdir, subsetMAT)


for (i in 1:length(MAT_old)) {
  
  file.rename(MAT_old[i], MAT_new[i])
  
}










