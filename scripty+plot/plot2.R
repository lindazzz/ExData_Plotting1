library("lubridate")
dateTime <- strptime( paste(epc2$Date,epc2$Time), format="%d/%m/%Y %H:%M:%S")
#Attention the format must be consistent with the original data.
with(epc2,plot(dateTime,Global_active_power,xlab="",ylab="Global Active Power",type="n"))
with(epc2,lines(dateTime,Global_active_power))
