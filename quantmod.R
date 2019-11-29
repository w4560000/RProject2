#install.packages("quantmod")


library("quantmod");
ds <- new.env();

stockNoOfInt <- 2330
stockNoOfChar <- paste(as.character(stockNoOfInt), ".TW", sep = "")

# �_�l��� = �h�~�����ѡA ������� = ����
date.start <- seq(Sys.Date(), length = 2, by = "-1 years")[2];
date.end <- Sys.Date();
getSymbols(stockNoOfChar, env = ds, src = "yahoo", from = date.start, to = date.end)

stockData <- ds$"2330.TW"

# �����W�٧t�� "X2330.TW." ������ ""
for (col in 1:ncol(stockData)) {
    colnames(stockData)[col] <- sub("X2330.TW.", "", colnames(stockData)[col])
}

# �쥻rowName�O����A �o������֨��Ƹ̡A�åB��rowName�q1�}�l�Ƨ�
#Date <- index(stockData)
#stockData <- cbind(Date, stockData);
#for (col in 1:nrow(stockData)) {
#rownames(stockData)[col] <- col
#}

# �쥻rowName�O����A �o������֨��Ƹ̡A�åB��rowName�q1�}�l�Ƨ�
#Year <- substr(rownames(stockData), 0, 4)
#Month <- substr(rownames(stockData), 6, 7)
#Date <- substr(rownames(stockData), 9, 10)
#stockData <- cbind(Year, Month, Date, stockData);
#for (col in 1:nrow(stockData)) {
    #rownames(stockData)[col] <- col
#}

# �s�W�ӪѥN�����Ƹ�
stockNo <- vector(mode = "character")
for (row in 1:nrow(stockData)) {
    stockNo[row] <- "2330"
}

stockData <- cbind(stockNo, stockData)

# �L�X���չ�
chartSeries(ds$"2330.TW")

#----------------------------------------�H�W��ƳB�z����-------------------

library(ggplot2)

close <- stockData[,1]
time <- index(stockData)
value <- as.vector(close)
stockLM <- lm(value ~ time, data.frame(value, time))

class(time[1])
#���G�� �[�W�ҫ��w���ϰ� 
ggplot(data.frame(time, value), aes(time, value)) + geom_line() +
     geom_smooth(method = lm) + labs(x = "�ɶ�", y = "���L��")

summary(stockLM)

#(4)�w�� 
new <- data.frame(time = as.Date(Sys.time()) -10)
result <- predict(stockLM, newdata = new)
result

class(result)

#(5)��w���y�Щ��ϤW 
ggplot(data.frame(time, value), aes(time, value)) + geom_line() +
    geom_point(x = new$time , y = result, color = "red") +
    geom_smooth(method = lm) + labs(x = "�ɶ�", y = "���L��")