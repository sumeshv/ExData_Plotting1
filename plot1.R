
#
# The plot1 function creates a png file based on the hist() function. 
# The file is created in the work directory by name plot1.png. The function
# takes an argument which specifes the directory where the data file is kept. 
# The file name is assumed to be household_power_consumption.txt.
# usage eg: plot1("D:/R/data/exdata-data-household_power_consumption") if
# the txt file is kept under D:/R/data/exdata-data-household_power_consumption
#

plot1 <-function(dir){ 
  # Including a common R file which has got the logic to load the data and this
  # will be re-used to draw all graphs in this prject
  source("data_plot.R")
  # this function is available in data_plot.R
  ds <- get_data(dir)
  png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")
  histinfo<-hist(ds$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
  dev.off()  
  print("plot 1 done")
  #clearing all the variables
  rm(list=ls()) 
} 
