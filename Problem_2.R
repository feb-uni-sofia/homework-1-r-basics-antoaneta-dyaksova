#a
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#b
difference <- xmax-xmin

#c
average_minimum <- mean(xmin)
average_maximum <- mean(xmax)

#d
min_below_avg <- xmin < average_minimum
xmin[min_below_avg]

#e
max_above_avg <- xmax > average_maximum
xmax[max_above_avg]

#f
## Nice

dayNames <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmin) <- dayNames
names(xmax) <- dayNames

#g
temperatures <- data.frame(xmin = xmin, xmax =xmax)
temperatures

#h
temperatures$xminFahrenheit <- (9/5)*temperatures$xmin+32

## Easier:
temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

#i
temperaturesFahrenheit <- data.frame(dayNames, xminFahrenheit=(9/5)*temperatures$xmin+32, 
                                     xmaxFahrenheit=(9/5)*temperatures$xmax+32)
temperaturesFahrenheit

#j
## Nice
temperaturesFahrenheit_ww1 <- temperaturesFahrenheit[1:5,]
temperaturesFahrenheit_ww2 <- temperaturesFahrenheit[-(6:7),]
