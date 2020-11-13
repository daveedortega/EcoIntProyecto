library(data.table)
todo<-read.csv('todomp.csv')
View(todo)
todo<-todo[,c('Country','Subject','Measure','TIME','Value')]
listap<-split(todo,todo$Country)
names(listap)
mexico<-listap$Mexico
canada<-listap$Canada
argentina<-listap$Argentina
usa<-listap$`United States`


write_xlsx(mexico,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/mex1.xlsx")
write_xlsx(usa,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/usa1.xlsx")
write_xlsx(canada,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/canada1.xlsx")
write_xlsx(argentina,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/argentina1.xlsx")

names(split(mexico,mexico$Subject))
split()


split(todo,todo$Country)