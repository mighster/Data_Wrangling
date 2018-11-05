install.packages("rvest")

library(rvest)
setwd("C:/Users/falk/BCB546X/BCB546X-Fall2017")

lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")

lego_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()

write.table(lego_movie, "C:/Users/falk/BCB546X/BCB546X-Fall2017/mydata.txt", sep="\t")

write_html(lego_movie, "C:/Users/falk/BCB546X/BCB546X-Fall2017/mydata.txt", sep="\t")
lego_movie

PI88788 <- read_html("https://npgsweb.ars-grin.gov/gringlobal/accessiondetail.aspx?id=1123755")

PI88788 %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()


write_html(PI88788, "C:/Users/falk/BCB546X/BCB546X-Fall2017/PI88788.txt", sep="\t")

PI88788_text <- html_text(PI88788)

PI88788_text
