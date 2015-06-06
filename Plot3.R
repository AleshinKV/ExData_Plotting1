setwd("C:/RLibs/WorkDir/ExData_Plotting1")
data <- read.table("household_power_consumption_Query.txt", header = TRUE, sep = ";", 
                   stringsAsFactors = FALSE, na.strings = "?")

data$datetime <- strptime(paste(strtrim (data$Date,8),data$Time), "%d.%m.%Y %H:%M:%S")

png(file = "plot3.png", bg = "transparent")

plot(data$datetime, data$Sub_metering_1,  type ="l",
     ylab="Energy sub metering",xlab="")
lines(data$datetime,data$Sub_metering_2, col ="red")
lines(data$datetime,data$Sub_metering_3, col ="blue")
legend("topright", col = c("black", "red", "blue"), lwd=1,
       legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3") )
 
dev.off()
