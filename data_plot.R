#
# This script reads the entire data from the work
# directory and returns the sub-set of data as per
# the project requirment. This data will be used
# in the calling program to draw various graphs

#
# The get_data function loads the data file household_power_consumption.txt
# which is assumed to be in the work directory. It then extracts
# a sub-set of data based on the dates 1/2/2007 and 2/2/2007.
# Finally, it returns the sub-set to the calling function.
#
get_data <- function(dir){
  data<-read.table(paste(dir,"household_power_consumption.txt",sep="/"),header=TRUE,sep=";",colClasses=c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na="?")
  #Extracting the subset as per the project requirements
  ds<-subset(data,Date=="1/2/2007" | Date=="2/2/2007") 
  #converting the character to Date class  
  ds$Time <- strptime(paste(ds$Date, ds$Time), "%d/%m/%Y %H:%M:%S")
  ds$Date<-as.Date(ds$Date,"%d/%m/%Y")
  return(ds)
}
