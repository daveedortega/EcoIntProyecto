library(data.table)
imp<-read.csv('Imports.csv')
exp<-read.csv('Exports.csv')
impexp<-read.csv('impexp.csv')
View(imp)
imp<-data.table(imp)
splittot<-split(imp,imp$LOCATION)

tablat<-data.table(read.csv('todo.csv'))
View(tablat)
tablat<-tablat[,c('Country','Subject','Measure','Time','Value','Unit')]
names(split(tablat,tablat$Variable))


listapaises<-split(tablat,tablat$Country)
canada<-listapaises$Canada
mexico<-listapaises$Mexico
usa<-listapaises$`United States`
argentina<-listapaises$Argentina


library("writexl")

write_xlsx(mexico,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/mex.xlsx")
write_xlsx(usa,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/usa.xlsx")
write_xlsx(canada,"/Users/DOrtega/Documents/Rstuff/EcoIntProyecto/Data/canada.xlsx")

View(argentina)

names(split(usa,usa$Variable))
