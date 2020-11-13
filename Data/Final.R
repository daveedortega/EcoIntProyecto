data<-read.csv('DATAF.csv')
View(data)
library(data.table)
data<-data.table(data)
data<-data[,c('Country','Subject','Measure','TIME','Unit','PowerCode','Value')]
paises<-split(data,data$Country)

mexico<-paises$Mexico
canada<-paises$Canada
usa<-paises$`United States`
argentina<-paises$Argentina

names(split(argentina,argentina$Subject))
names(split(usa,usa$Measure))

mexico[,logv:=log(mexico[['Value']])]
canada[,logv:=log(canada[['Value']])]
usa[,logv:=log(usa[['Value']])]
argentina[,logv:=log(argentina[['Value']])]




View(mexico)