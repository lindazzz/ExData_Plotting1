#because type=n, no point will be ploted, so one plot leads to one blank graph. 
with(epc2,plot(dateTime,Sub_metering_1, ylim=c(0, 30), type="n", xlab="",ylab="Energy sub metering"))
with(epc2,{
  lines(dateTime,Sub_metering_1)
  lines(dateTime,Sub_metering_2,col="red")
  lines(dateTime,Sub_metering_3,col="blue")
})
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pt.cex=1, cex=0.5)