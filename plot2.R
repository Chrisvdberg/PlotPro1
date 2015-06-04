library(data.table)
data <- data.table(read.csv("household_power_consumption.txt", header = TRUE, sep = ";"))
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
DateandTime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(DateandTime, subSetData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)")
dev.off()