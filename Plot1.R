setwd("C:/RLibs/WorkDir/ExData_Plotting1")
data <- read.table("household_power_consumption_Query.txt", header = TRUE, sep = ";", 
                   stringsAsFactors = FALSE, na.strings = "?")

data$datetime <- strptime(paste(strtrim (data$Date,8),data$Time), "%d.%m.%Y %H:%M:%S")

png(file = "plot1.png", bg = "transparent")

hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", col = "red", rlim =c(0,1200))

dev.off()
