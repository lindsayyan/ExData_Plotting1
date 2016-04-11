data_full <- read.csv("~/Desktop/household_power_consumption.txt", header=T,
                      sep=";", stringsAsFactors=F, na.strings="?",
                      colClasses=c("character", "character", "numeric",
                                   "numeric", "numeric", "numeric",
                                   "numeric", "numeric", "numeric"))
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")

## Subsetting the data
data_full$Date = as.Date(data_full$Date, format="%d/%m/%Y")
startDate = as.Date("01/02/2007", format="%d/%m/%Y")
endDate = as.Date("02/02/2007", format="%d/%m/%Y")
data_full = data_full[data_full$Date >= startDate & data_full$Date <= endDate, ]


## Plot 1
hist(data_full$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
