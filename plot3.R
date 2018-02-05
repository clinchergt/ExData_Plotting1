# Optional download and unpack file
# source("getData.R")

png(filename = "plot3.png", width = 480, height = 480)
with(dataSet, plot(Time, Sub_metering_1, type="l",
                   lwd=.05,
                   ylab = "Gloabal Active Power (kilowatts)",
                   axes = F))
with(dataSet, lines(Time, Sub_metering_2, lwd=.5, col="orange"))
with(dataSet, lines(Time, Sub_metering_3, lwd=1, col="blue"))
legend(x=20, y=38,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1, at=c(1,700,1400), labels=c("Thu", "Fri", "Sat"))
axis(2)
box()
dev.off()
