temp <- read.csv("data/NT.csv")
temp
temps <- temp$Temp
xbar <- mean(temps)  #98.284
n <- sum(!is.na(temps))  #52
(t_crit <- qt(.975, n-1))  #2.007
S <- sd(temps)  #0.6823
xbar - t_crit * S / sqrt(n) #98.095
xbar + t_crit * S / sqrt(n) #98.475
CI <- c(xbar + c(-1,1) * t_crit * S / sqrt(n))
CI #98.094 & 98.475
t.test(temps, conf.level = 0.95)