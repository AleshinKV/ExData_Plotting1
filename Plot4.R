setwd("C:/RLibs/WorkDir/ExData_Plotting1")
data <- read.table("household_power_consumption_Query.txt", header = TRUE, sep = ";", 
                   stringsAsFactors = FALSE, na.strings = "?")

data$datetime <- strptime(paste(strtrim (data$Date,8),data$Time), "%d.%m.%Y %H:%M:%S")

png(file = "plot4.png", bg = "transparent",width = 504, height =504,units = "px")
par(mfrow=c(2,2))

plot(data$datetime, data$Global_active_power,  type ="l",
     ylab="Global Active Power",xlab="")

plot(data$datetime, data$Voltage,  type ="l",
     ylab="Voltage",xlab="Date")

plot(data$datetime, data$Sub_metering_1,  type ="l",
     ylab="Energy sub metering",xlab="")
lines(data$datetime,data$Sub_metering_2, col ="red")
lines(data$datetime,data$Sub_metering_3, col ="blue")
legend("topright", col = c("black", "red", "blue"), lwd=1,
       legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))

plot(data$datetime, data$Global_reactive_power,  type ="l",
     ylab="Global Reactive Power",xlab="Date")
dev.off()
