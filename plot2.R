if (! 'd' %in% ls()){
  source('load_data.R')
  d<-load_data()
}

png(filename='plot2.png')

plot(as.POSIXct(paste(d[,'Date'],d[,'Time'])), 
     d[,"Global_active_power"], 
     type='l',
     ylab='Global Active Power (kilowatts)',
     xlab=''
)

dev.off()