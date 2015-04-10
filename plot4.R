data1<-read.table("household_power_consumption.txt",sep = ";")
data2<-subset(data1,data1$V1=="1/2/2007"|data1$V1=="2/2/2007")

data2$V10<-paste(data2$V2,data2$V1,sep=" ")
data_x<-strptime(data2$V10,   "%H:%M:%S %d/%m/%Y")

data_y1<-as.numeric(levels(data2$V3))[data2$V3]
data_y2<-as.numeric(levels(data2$V5))[data2$V5]
data_y31<-as.numeric(levels(data2$V7))[data2$V7]
data_y32<-as.numeric(levels(data2$V8))[data2$V8]
data_y33<-as.numeric(levels(data2$V9))[data2$V9]
data_y4<-as.numeric(levels(data2$V4))[data2$V4]

par(mfrow=c(2,2))

plot(data_x,data_y1,"l",ylab="Global Active Power",xlab="") 
plot(data_x,data_y2,"l",ylab="Voltage",xlab="datetime") 

plot(data_x,data_y31,"l",xlab="",ylab="Energy Sub metering")
lines(data_x,data_y32,col="red")
lines(data_x,data_y33,col="blue")

legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.5,y.intersp=0.3,bty="n")

plot(data_x,data_y4,"l",ylab="Global_reactive_power ",xlab="datetime") 

dev.copy(png, file="plot4.png",width=480,height=480)
dev.off() 


