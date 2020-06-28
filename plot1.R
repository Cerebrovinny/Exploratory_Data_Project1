#Read data
fileName <- file("/Volumes/Hard/Github/Exploratory_Data_Project1/household_power_consumption.txt")

# red the data for 2007-02-01 and 2007-02-02
date <- read.table(text = grep("^[1,2]/2/2007", readLines(fileName), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

#Save file in PNG device
png(file = "/Volumes/Hard/Github/Exploratory_Data_Project1/Plot1.png", width = 480, height = 480, units = "px")

#Generating Plot1
hist(date$Global_active_power, col = "red", main = "Global Active Power",
      xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()