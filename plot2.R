#Read data
fileName <- file("/Volumes/Hard/Github/Exploratory_Data_Project1/household_power_consumption.txt")

# red the data for 2007-02-01 and 2007-02-02
date <- read.table(text = grep("^[1,2]/2/2007", readLines(fileName), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Convert dates and time
date$Date <- as.Date(date$Date, format = "%d/%m/%Y")
DateTime <- paste(as.Date(date$Date), date$Time)
date$DateTime <- as.POSIXct(DateTime)

#Save file in PNG device
png(file = "/Volumes/Hard/Github/Exploratory_Data_Project1/plot2.png", width = 480, height = 480, units = "px")

#Generating plot2
plot(date$Global_active_power ~ date$DateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()