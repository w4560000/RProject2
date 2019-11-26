#------------------------------------載入Csv檔案----------------------------------- 
#逗號分隔值（CSV） 
#載入檔案 
csvdata <- read.csv("C:\\Users\\BingXiang\\source\\repos\\RProject2\\AppData\\測試讀檔.csv")

#抓取前5筆顯示 
head(csvdata, 5)


#------------------------------------載入Excel檔案(.xlsx)----------------------------------- 
#Office Open XML（.xlsx） 
#安裝xlsx package 
#install.packages("xlsx")  #於R.exe 安裝 或使用系統管理員權限開啟VS 否則權限不足無法寫入
#any(grepl("xlsx", installed.packages()))
#載入xlsx 
library("xlsx")

# 若中文亂碼 則是編碼錯誤造成 encode成UTF-8即可
xlsxdata <- read.xlsx("C:\\Users\\BingXiang\\source\\repos\\RProject2\\AppData\\測試讀檔.xlsx", sheetIndex = 1, encoding = "UTF-8")

#抓取前5筆顯示 
head(xlsxdata, 5)


#------------------------------------載入舊版Excel檔案(.xls)----------------------------------- 
# 實際執行時 會遇到錯誤
# https://stackoverflow.com/questions/10940224/gdata-package-perl-issue 需要安裝perl 並指定perl.exe的所在路徑
# example:
# T<-read.xls("Template.xlsx", perl = "C:\\Perl\\bin\\perl.exe")

#Office 97 -2003版本（.xls)  
#安裝xls package 
install.packages("gdata")
#載入xls 
library(gdata)
#Read first sheet 
xlsdata <- read.xls("C:\\Users\\BingXiang\\source\\repos\\RProject2\\AppData\\測試讀檔.xls", sheet = 1)

#抓取前5筆顯示 
head(xlsdata, 5)

#------------------------------------載入API Json資料----------------------------------- 
#載入jsonlite package 
library(jsonlite)
# 串API 接json資料回來
data <- fromJSON("https://www.twse.com.tw/exchangeReport/STOCK_DAY?response=json&date=20190901&stockNo=2337")
data


#---------------------------------json載入到dataframe-----------------------------------
install.packages("rjson")
#載入 package 
library(jsonlite)
library("rjson")
#載入json檔案1 
result <- fromJSON(file = "C:\\Users\\BingXiang\\source\\repos\\RProject2\\測試讀檔.json")
#將json載入到dataframe 
json_data_frame <- as.data.frame(result)

#列印dataframe 
print(json_data_frame)

#---------------------------------Json Array載入Dataframe-----------------------------------
install.packages("plyr")
#載入 package 
library("plyr")
library("rjson")
#載入json檔案2
JsonArray <- fromJSON(file = "C:\\Users\\BingXiang\\source\\repos\\RProject2\\測試讀檔2.json")

dfs <- lapply(JsonArray, function(j) {
    as.data.frame(j)
})
print(dfs)


#---------------------------------序列化資料為json-----------------------------------
#json object 
data <- c("123", "456", "789")
BMI <- data.frame(
   gender = c("Male", "Female", "Female"),
   height = c(176, 171.5, 165),
   weight = c(70, 53, 49),
   Age = c(37, 33, 28))
cat(toJSON(data) , toJSON(BMI))
