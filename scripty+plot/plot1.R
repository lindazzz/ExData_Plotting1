epc <- read.table("household_power_consumption.txt", sep = ";", header=TRUE, dec=".", na.string="?")
#read the first data line
readLines("household_power_consumption.txt", n=2)
epc2 <- epc[with(epc, Date=="1/2/2007" | Date=="2/2/2007"), ]
hist(epc2$Global_active_power, col = "red", breaks = 12, xlim = c(0,6), xlab = "Global Active Power(kilowatts)", main = "Global Active Power")
