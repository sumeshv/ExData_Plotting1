#
# The plot2 function creates a png file based on the plot() function. 
# The file is created in the work directory by name plot2.png. The function
# takes an argument which specifes the directory where the data file is kept. 
# The file name is assumed to be household_power_consumption.txt.
# usage eg: plot2("D:/R/data/exdata-data-household_power_consumption") if
# the txt file is kept under D:/R/data/exdata-data-household_power_consumption
#

plot2 <-function(dir){  
  source("data_plot.R")
  ds <- get_data(dir)
  png("plot2.png", width=480, height=480)  
  plot(ds$Time, ds$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  dev.off()
  message("plot 2 done")
  #clearing all the variables
  rm(list=ls()) 
} 
