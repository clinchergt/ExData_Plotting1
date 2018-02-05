download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "zippy.zip")
unzip("zippy.zip", exdir="unzippy")
setwd(paste0(getwd(), "/unzippy"))
dataSet <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
dataSet$Date <- as.Date(strptime(dataSet$Date, format="%d/%m/%Y"))
dataSet <- dataSet[dataSet$Date < as.Date(strptime("03/02/2007", format="%d/%m/%Y")) &
                     dataSet$Date > as.Date(strptime("31/01/2007", format="%d/%m/%Y")),]
