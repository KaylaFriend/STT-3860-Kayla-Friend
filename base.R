# vector 1-10
x <- 1:10

set.seed(123)

y <- x + rnorm(10,0,2)
y

#creates a data frame with x and y values
DF <- data.frame(x=x, y=y)
rm("x","y")
DF

plot(DF$x, DF$y)
plot(y~x, data = DF, col = "blue", pch = 19)

plot(y~x, data = DF, col = "blue", pch = 19, xlab = "x-axis", ylab = "y-axis", main = "title")

mod <- lm(y ~ x, DF)
mod

abline(mod, col = "green", lwd = 5)

library(tidyverse)

ggplot(DF, aes(x, y)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", formula = y~x, se = FALSE, color = "green") +
  labs(x = "Kyera", y = "Kayla", title = "Matt") +
  theme_bw()


1-pnorm(1.333)
choose(10,2)
choose(10,5)
choose(10,3)

dbinom(0,10,0.6)

x <- 0:10
px <- dbinom(x,10,.6)
EX <- sum(x * px)
EX
