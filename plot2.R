data1<-read.table("household_power_consumption.txt",sep = ";")
data2<-subset(data1,data1$V1=="1/2/2007"|data1$V1=="2/2/2007")
data2$V10<-paste(data2$V2,data2$V1,sep=" ")
data_x<-strptime(data2$V10,   "%H:%M:%S %d/%m/%Y")
data_y<-as.numeric(levels(data2$V3))[data2$V3]
plot(data_x,data_y,"l",ylab="Global Active Power(kilowatts)",xlab="") 
dev.copy(png, file="plot2.png",width=480,height=480)
dev.off() 