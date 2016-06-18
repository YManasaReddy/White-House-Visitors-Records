project<-read.csv(file.choose(), header = T)
project


unique(project$YEAR)
length(which(project$YEAR==15))
x<-c(9,10,11,12,13,14,15)
x
y<-c(15433,20185,465,726,471,18,188)
y
barplot(y,x,main ="No of appointments per year",xlab = "Year", ylab = "no of appointments" ,horiz = FALSE,names.arg = c("2009","2010","2011","2012","2013","2014","2015"))


meeting_loc<-summary(project$MEETING_LOC)
meeting_loc
lbls<-c("","","OEOB","VPR","VPR2","WH")
pie(meeting_loc,labels = lbls,col=rainbow(length(lbls)),main="pie chart of meeting locations")



Description<-summary(project$Description)
Description
des = data.frame(Description)
des


test <-aggregate(Total_People~YEAR + Total_People,project,sum)
test


plot(x,y)
abline(lm(x~y))

