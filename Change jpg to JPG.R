#########################################################################################

setwd("D:/MATFilesALL")


rename_jpg_to_JPG <- function(subdir = ".", recursive = FALSE, message = TRUE, 
                              text_to_find=".jpg.mat", new_extension = ".JPG.mat", ...) {
  
  wd <- getwd()
  dir_to_work_on <- file.path(wd, subdir)
  #    on.exit(setwd(old_wd))
  
  files <- list.files(dir_to_work_on)
  # Remove dirs!
  isdir <- file.info(file.path(dir_to_work_on,files))$isdir
  files <- files[!isdir]
  
  # find files with .r
  files_without_ext <- substr(files, 1, nchar(files)-8)
  files_with_R <- paste(files_without_ext, new_extension, sep = "")
  
  ss_r <- grepl(text_to_find, files)
  file.rename(from = file.path(dir_to_work_on,files)[ss_r],
              to = file.path(dir_to_work_on,files_with_R)[ss_r])
  
  
  n_changes <- sum(ss_r) 
  if(message) cat("We renamed ", n_changes, " files from ",text_to_find," to ",new_extension,"\n\n")
  if(message & n_changes>0) cat("We renamed: \n", paste(files[ss_r], collapse = "\n"))
  
  if(recursive) {
    all_dirs <- list.dirs(full.names = FALSE, recursive = TRUE)
    fo <- function(x,...) rename_r_to_R(subdir = x, text_to_find=text_to_find, new_extension=new_extension ,...)
    n_changes_dirs <- sapply(all_dirs, fo, message = message)
    n_changes <- n_changes + n_changes_dirs
  }
  
  return(invisible(n_changes))
}
