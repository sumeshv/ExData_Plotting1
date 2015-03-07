
#
# The plot4 function creates a png file based on the plot() function. 
# The file is created in the work directory by name plot4.png. The function
# takes an argument which specifes the directory where the data file is kept. 
# The file name is assumed to be household_power_consumption.txt.
# usage eg: plot4("D:/R/data/exdata-data-household_power_consumption") if
# the txt file is kept under D:/R/data/exdata-data-household_power_consumption
#

source("data_plot.R")

plot4 <-function(dir){ 
  source("data_plot.R")
  ds <- get_data(dir)
  png("plot4.png", width=480, height=480)
  par(mfrow=c(2,2))
  #First row first cell
  plot(ds$Time, ds$Global_active_power,type="l",xlab="",ylab="Global Active Power")
  #First row second cell
  plot(ds$Time, ds$Voltage,type="l",xlab="datetime",ylab="Voltage")
  #Second row first cell
  plot(ds$Time, ds$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="black")
  lines(ds$Time, ds$Sub_metering_2, col="red")
  lines(ds$Time, ds$Sub_metering_3, col="blue")
  legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)
  #Second row second cell
  plot(ds$Time, ds$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
  lines(ds$Time, ds$Global_reactive_power)
  
  dev.off()
  message("plot 4 done")
  #clearing all the variables
  rm(list=ls()) 
} 
