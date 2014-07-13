par(mfrow=c(2,2))
##1
hist(epc2$Global_active_power, col = "red", breaks = 12, xlim = c(0,6), xlab = "Global Active Power(kilowatts)", main = "Global Active Power")
##2
with(epc2,plot(dateTime,Voltage,xlab="datatime",ylab="Voltage",type="n", ylim = c(234,246)))
with(epc2,lines(dateTime,Voltage))
##3
with(epc2,plot(dateTime,Sub_metering_1, ylim=c(0, 30), type="n", xlab="",ylab="Energy sub metering"))
with(epc2,{
  lines(dateTime,Sub_metering_1)
  lines(dateTime,Sub_metering_2,col="red")
  lines(dateTime,Sub_metering_3,col="blue")
})
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pt.cex=1, cex=0.5)
##4
with(epc2,plot(dateTime,Global_reactive_power,xlab="datatime",ylab="Global_reactive_power",type="n", ylim = c(0,0.5)))
with(epc2,lines(dateTime,Global_reactive_power))