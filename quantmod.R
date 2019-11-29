#install.packages("quantmod")


library("quantmod");
ds <- new.env();

stockNoOfInt <- 2330
stockNoOfChar <- paste(as.character(stockNoOfInt), ".TW", sep = "")

# 起始日期 = 去年的今天， 結束日期 = 今天
date.start <- seq(Sys.Date(), length = 2, by = "-1 years")[2];
date.end <- Sys.Date();
getSymbols(stockNoOfChar, env = ds, src = "yahoo", from = date.start, to = date.end)

stockData <- ds$"2330.TW"

# 把欄位名稱含有 "X2330.TW." 替換成 ""
for (col in 1:ncol(stockData)) {
    colnames(stockData)[col] <- sub("X2330.TW.", "", colnames(stockData)[col])
}

# 原本rowName是日期， 這邊把日期併到資料裡，並且把rowName從1開始排序
#Date <- index(stockData)
#stockData <- cbind(Date, stockData);
#for (col in 1:nrow(stockData)) {
#rownames(stockData)[col] <- col
#}

# 原本rowName是日期， 這邊把日期併到資料裡，並且把rowName從1開始排序
#Year <- substr(rownames(stockData), 0, 4)
#Month <- substr(rownames(stockData), 6, 7)
#Date <- substr(rownames(stockData), 9, 10)
#stockData <- cbind(Year, Month, Date, stockData);
#for (col in 1:nrow(stockData)) {
    #rownames(stockData)[col] <- col
#}

# 新增個股代號到資料裡
stockNo <- vector(mode = "character")
for (row in 1:nrow(stockData)) {
    stockNo[row] <- "2330"
}

stockData <- cbind(stockNo, stockData)

# 印出走勢圖
chartSeries(ds$"2330.TW")

#----------------------------------------以上資料處理完成-------------------

library(ggplot2)

close <- stockData[,1]
time <- index(stockData)
value <- as.vector(close)
stockLM <- lm(value ~ time, data.frame(value, time))

class(time[1])
#散佈圖 加上模型預測區域 
ggplot(data.frame(time, value), aes(time, value)) + geom_line() +
     geom_smooth(method = lm) + labs(x = "時間", y = "收盤價")

summary(stockLM)

#(4)預測 
new <- data.frame(time = as.Date(Sys.time()) -10)
result <- predict(stockLM, newdata = new)
result

class(result)

#(5)把預測座標放到圖上 
ggplot(data.frame(time, value), aes(time, value)) + geom_line() +
    geom_point(x = new$time , y = result, color = "red") +
    geom_smooth(method = lm) + labs(x = "時間", y = "收盤價")