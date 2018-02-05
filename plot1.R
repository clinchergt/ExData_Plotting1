download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "zippy.zip")
unzip("zippy.zip", exdir="unzippy")
setwd(paste0(getwd(), "/unzippy"))
dataSet <- read.csv("household_power_consumption.txt", sep=";")

