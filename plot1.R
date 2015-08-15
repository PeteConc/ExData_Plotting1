dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- as.numeric(subSetData$Global_active_power)
png("plot1.png")
hist(globalactivepower, col = "pink", main ="Global active power")
dev.off()
