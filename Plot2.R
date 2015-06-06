setwd("C:/RLibs/WorkDir/ExData_Plotting1")
data <- read.table("household_power_consumption_Query.txt", header = TRUE, sep = ";", 
                   stringsAsFactors = FALSE, na.strings = "?")

data$datetime <- strptime(paste(strtrim (data$Date,8),data$Time), "%d.%m.%Y %H:%M:%S")

png(file = "plot2.png", bg = "transparent")

plot(data$datetime, data$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab="")

dev.off()
