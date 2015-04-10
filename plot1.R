setwd('C:\\Users\\pistn\\Downloads\\Desktop\\r_workingdir\\c4w1\\prog_ass1')
data1<-read.table("household_power_consumption.txt",sep = ";")
data2<-subset(data1,data1$V1=="1/2/2007"|data1$V1=="2/2/2007")
datahist<-as.numeric(levels(data2$V3))[data2$V3]
hist(datahist,main=paste("Global Active Power"),xlab="Global Active Power (kilowatts)",col="red")
dev.copy(png, file="plot1.png",width=480,height=480)
dev.off()

