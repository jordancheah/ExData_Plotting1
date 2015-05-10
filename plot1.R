raw <- read.table(header = TRUE, sep = ";", na.strings = "?", "household_power_consumption.txt", colClasses = c("character", "character", rep("numeric",7)))
raw2 <- subset(raw, Date=="1/2/2007" | Date=="2/2/2007")
DateTime <- strptime(paste(raw2$Date, raw2$Time), format="%d/%m/%Y %H:%M:%S")
raw3 <- cbind(DateTime, raw2)
png("plot1.png", width=480, height=480)
hist(raw3$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()




