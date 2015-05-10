png("plot4.png", width=480, height=480)
par(mfcol=c(2,2))

plot(raw3$DateTime, raw3$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")

plot(raw3$DateTime, raw3$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(raw3$DateTime, raw3$Sub_metering_2, col = "red")
lines(raw3$DateTime, raw3$Sub_metering_3, col = "blue")
legend(x="topright", bty="n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))

plot(raw3$DateTime, raw3$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(raw3$DateTime, raw3$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()