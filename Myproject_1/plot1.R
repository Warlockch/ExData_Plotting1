t_data <- read.csv("household_power_consumption.txt",header=T, sep=';',na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
t_data$Date <- as.Date(t_data$Date,format="%d/%m/%Y")
data <- subset(t_data,subset=(Date >="2007-02-01" & Date<="2007-02-02"))
rm(t_data)
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()