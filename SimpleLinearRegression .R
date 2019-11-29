#install.packages("ggplot2") # Install it again
library(ggplot2)

#lm(y~x)  
carsLM <- lm(dist ~ speed, data = cars)

#散佈圖 加上模型預測區域 
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) +
    geom_smooth(method = lm) + labs(x = "速度", y = "煞車距離")


summary(carsLM)

#(4)預測 
new <- data.frame(speed = 10)
result <- predict(carsLM, newdata = new)
result

class(result)

#(5)把預測座標放到圖上 
ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 10, size = 5) +
    geom_point(x = new$speed, y = result, size = 10, shape = 17, color = "red") +
    geom_smooth(method = lm) + labs(x = "速度", y = "煞車距離")