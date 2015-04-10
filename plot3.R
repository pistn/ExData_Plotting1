data1<-read.table("household_power_consumption.txt",sep = ";")
data2<-subset(data1,data1$V1=="1/2/2007"|data1$V1=="2/2/2007")
data2$V10<-paste(data2$V2,data2$V1,sep=" ")
data_x<-strptime(data2$V10,   "%H:%M:%S %d/%m/%Y")
data_y1<-as.numeric(levels(data2$V7))[data2$V7]
data_y2<-as.numeric(levels(data2$V8))[data2$V8]
data_y3<-as.numeric(levels(data2$V9))[data2$V9]
plot(data_x,data_y1,"l",xlab="",ylab="Energy Sub metering")
lines(data_x,data_y2,col="red")
lines(data_x,data_y3,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),y.intersp=0.5,,lty=1,cex=0.60)
dev.copy(png, file="plot3.png",width=480,height=480)
dev.off() 
