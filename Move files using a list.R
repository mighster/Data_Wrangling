############################ From Stack Overflow
# setwd("C:/currentdir/")
# newdir <- "C:/newdir"
# currentdir <- getwd()
# files <- list.files(path = currentdir, full.names = TRUE)
# files_new <- gsub(dirname(files[1]), newdir, files)
# for (i in 1:length(files)) {
#   file.copy(files[i], files_new[i])
# }
############################

library(installr)
#Cut and Paste a list of files from one directory to another
#I had to add in a step to create a list of JPGs that I had manually culled from all the segmented images. MAT extension had to be added to each name.

#build your list! 
setwd("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.MAT Files - ALL") #set working directory
currentdir <- ("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.MAT Files - ALL") #name current directory
dir.create("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.MAT Files - ALL/bad")

badjpgsfull <- list.files("C:/Users/falk/Pictures/2017 GC images_originals/Segmented - Day12/Segmentation errors", pattern = "*.*", full.names = TRUE) #list all the files in the folder ##We use Full.Names = FALSE to remove the file path
badjpgsname <- list.files("C:/Users/falk/Pictures/2017 GC images_originals/Segmented - Day12/Segmentation errors", pattern = "*.*", full.names = FALSE) #list all the files in the folder ##We use Full.Names = FALSE to remove the file path

badjpgsMAT <- paste(badjpgsname, ".mat", sep="") #because the MAT files have an extra .MAT on the end of them, we need to modify our list by adding the .MAT extension

#I have to remove all ENTRY and PLANT from the file names so they match!
badjpgsMAT <- gsub("Plant", "",badjpgsMAT) 
badjpgsMAT <- gsub("Entry", "",badjpgsMAT)

#For the for loop to work we need both the old location of each file and new location of each file including it's file path
MAT_old <- paste("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.MAT Files - ALL/",badjpgsMAT,sep="")
MAT_new <- paste("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.MAT Files - ALL/bad/",badjpgsMAT,sep="")

#cut and paste loop from old directory to new directory
for (i in 1:length(MAT_old)) {
  
  file.rename(MAT_old[i], MAT_new[i])
}
