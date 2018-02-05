# Optional download and unpack file
# source("getData.R")

png(filename = "plot2.png", width = 480, height = 480)
with(dataSet, plot(Time, Global_active_power, type="l",
                   lwd=.5,
                   ylab = "Gloabal Active Power (kilowatts)",
                   axes=F))
axis(1, at=c(1,700,1400), labels=c("Thu", "Fri", "Sat"))
axis(2)
box()
dev.off()
