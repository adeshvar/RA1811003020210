library(robotstxt)
path<-paths_allowed("https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population")
link<-"https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population"
#Read this website
library(rvest)
web<-read_html(link)
nationalpopulation<-web%>%html_nodes("td:nth-child(6) , tr:nth-child(1) span")%>%html_text()
View(nationalpopulation)
