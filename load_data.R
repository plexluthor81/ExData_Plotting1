load_data <- function(){
  if (!file.exists('household_power_consumption.txt')){
    if (!file.exists('exdata_data_household_power_consumption.zip')){
      download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip')
    }
    library('utils')
    unzip('exdata_data_household_power_consumption.zip')
  }
  setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
  # classes = c("myDate","character","numeric","numeric","numeric","numeric","factor","factor","factor") # to me, it seems like these should be factors
  classes = c("myDate","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric") #but the plots want numerics
  d <- read.delim('household_power_consumption.txt', header=T, colClasses=classes, sep=';', na.string='?')
  library(dplyr)
  filter(d, Date=='2007-02-01'|Date=='2007-02-02')
}