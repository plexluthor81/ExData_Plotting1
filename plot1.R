if (! 'd' %in% ls()){
  source('load_data.R')
  d<-load_data()
}

png(filename='plot1.png')
hist(d[,'Global_active_power'],
     xlab='Global Active Power (kilowatts)',
     ylab='Frequency',
     main='Global Active Power',
     col='red')
dev.off()