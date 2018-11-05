#Cut and Paste a list of files from one directory to another
library(installr)
setwd("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.Parent Images - ALL/testes") #set working directory

#build your list! 
#extract the names of all the files in a folder that you would like to move.
badjpgsname <- list.files("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.Parent Images - ALL/", pattern = "*.*", full.names = FALSE) #list all the files in the folder ##We use Full.Names = FALSE to remove the file path

NoEntryList <- gsub("Entry", "", badjpgsname)
NoPlantList <- gsub("Plant", "", NoEntryList)

#create a directory where you want your files to move to
dir.create("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.Parent Images - ALL/redo")
newdir <- ("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.Parent Images - ALL/redo")

#For the for loop to work we need both the old location of each file and new location of each file including it's file path
redo_old <- paste("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.Parent Images - ALL/",badjpgsname,sep="")
#this is what the files will look like after the transfer (including their new directory)
redo_new <- paste("//agron-fs/Singh_Bean/Users/falk/ALL BACKUP IMAGES/Blue Steel Backup Images/.Parent Images - ALL/redo/",NoPlantList,sep="")

#Move the files
#cut and paste loop from old directory to new directory
for (i in 1:length(redo_old)) {
  
  file.rename(redo_old[i], redo_new[i])
}



