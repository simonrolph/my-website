files <- list.files(path = "../pages/")


for (i in 1:length(files)){
  template <- readLines("../template.html")
  content <- readLines(paste("../pages/",files[i],sep=""))
  
  title <- content[1]
  subtitle <- content[2]
  content <- content[3:length(content)]
  
  content <- paste(content, collapse = '')
  
  page <- gsub("INSERT_CONTENT", content, template)
  page <- gsub("INSERT_TITLE", title, page)
  page <- gsub("INSERT_SUBTITLE", subtitle, page)
  
  write(page,file = paste("../../",files[i],sep = ""))
}
