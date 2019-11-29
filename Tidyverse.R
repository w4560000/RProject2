install.packages("tidyverse")
library(tidyverse)

tsla_stock_metrics <- read_csv("https://www.sharpsightlabs.com/datasets/TSLA_start-to-2018-10-26_CLEAN.csv")

print(tsla_stock_metrics)

class(tsla_stock_metrics[2])

ggplot(data = tsla_stock_metrics, aes(x = date, y = close_price)) +
    geom_line()



library(quantmod)
library(ggplot2)
getSymbols('^SSEC', src = 'yahoo', from = '2010-01-01')

close <- (Cl(SSEC))
time <- index(close)
value <- as.vector(close)
p <- ggplot(data.frame(time, value), aes(time, value))
p + geom_line()
