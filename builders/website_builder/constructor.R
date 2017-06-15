files <- list.files(path = "../pages/")


for (i in 1:length(files)){
  template <- readLines("../template.html")
  content <- readLines(paste("../pages/",files[i],sep=""))
  
  title <- content[1]
  content <- content[2:length(content)]
  
  content <- paste(content, collapse = '')
  
  page <- gsub("INSERT_CONTENT", content, template)
  page <- gsub("INSERT_TITLE", title, page)
  
  write(page,file = paste("../../",files[i],sep = ""))
}
