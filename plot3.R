
#
# The plot3 function creates a png file based on the plot() function. 
# The file is created in the work directory by name plot3.png. The function
# takes an argument which specifes the directory where the data file is kept. 
# The file name is assumed to be household_power_consumption.txt.
# usage eg: plot3("D:/R/data/exdata-data-household_power_consumption") if
# the txt file is kept under D:/R/data/exdata-data-household_power_consumption
#

source("data_plot.R")

plot3 <-function(dir){  
  ds <- get_data(dir)
  png("plot3.png", width=480, height=480)     
  plot(ds$Time, ds$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="black")
  lines(ds$Time, ds$Sub_metering_2, col="red")
  lines(ds$Time, ds$Sub_metering_3, col="blue")
  legend("topright",col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)
  dev.off()
  print("plot 3 done")
  #clearing all the variables
  rm(list=ls()) 
} 
