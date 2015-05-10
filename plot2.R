png("plot2.png", width=480, height=480)
plot(raw3$DateTime, raw3$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()