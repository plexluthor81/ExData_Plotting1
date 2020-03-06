if (! 'd' %in% ls()){
  source('load_data.R')
  d<-load_data()
}

png(filename='plot3.png')

dt = as.POSIXct(paste(d[,'Date'],d[,'Time']))
plot(dt, d[,"Sub_metering_1"], 
     type='l',
     col="black",
     ylab='Energy sub metering',
     xlab=''
)
lines(dt, d[,"Sub_metering_2"],col="red")
lines(dt, d[,"Sub_metering_3"],col="blue")
legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"))

dev.off()