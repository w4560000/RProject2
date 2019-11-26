#------------------------------------���JCsv�ɮ�----------------------------------- 
#�r�����j�ȡ]CSV�^ 
#���J�ɮ� 
csvdata <- read.csv("C:\\Users\\BingXiang\\source\\repos\\RProject2\\AppData\\����Ū��.csv")

#����e5����� 
head(csvdata, 5)


#------------------------------------���JExcel�ɮ�(.xlsx)----------------------------------- 
#Office Open XML�].xlsx�^ 
#�w��xlsx package 
#install.packages("xlsx")  #��R.exe �w�� �ΨϥΨt�κ޲z���v���}��VS �_�h�v�������L�k�g�J
#any(grepl("xlsx", installed.packages()))
#���Jxlsx 
library("xlsx")

# �Y����ýX �h�O�s�X���~�y�� encode��UTF-8�Y�i
xlsxdata <- read.xlsx("C:\\Users\\BingXiang\\source\\repos\\RProject2\\AppData\\����Ū��.xlsx", sheetIndex = 1, encoding = "UTF-8")

#����e5����� 
head(xlsxdata, 5)


#------------------------------------���J�ª�Excel�ɮ�(.xls)----------------------------------- 
# ��ڰ���� �|�J����~
# https://stackoverflow.com/questions/10940224/gdata-package-perl-issue �ݭn�w��perl �ë��wperl.exe���Ҧb���|
# example:
# T<-read.xls("Template.xlsx", perl = "C:\\Perl\\bin\\perl.exe")

#Office 97 -2003�����].xls)  
#�w��xls package 
install.packages("gdata")
#���Jxls 
library(gdata)
#Read first sheet 
xlsdata <- read.xls("C:\\Users\\BingXiang\\source\\repos\\RProject2\\AppData\\����Ū��.xls", sheet = 1)

#����e5����� 
head(xlsdata, 5)

#------------------------------------���JAPI Json���----------------------------------- 
#���Jjsonlite package 
library(jsonlite)
# ��API ��json��Ʀ^��
data <- fromJSON("https://www.twse.com.tw/exchangeReport/STOCK_DAY?response=json&date=20190901&stockNo=2337")
data


#---------------------------------json���J��dataframe-----------------------------------
install.packages("rjson")
#���J package 
library(jsonlite)
library("rjson")
#���Jjson�ɮ�1 
result <- fromJSON(file = "C:\\Users\\BingXiang\\source\\repos\\RProject2\\����Ū��.json")
#�Njson���J��dataframe 
json_data_frame <- as.data.frame(result)

#�C�Ldataframe 
print(json_data_frame)

#---------------------------------Json Array���JDataframe-----------------------------------
install.packages("plyr")
#���J package 
library("plyr")
library("rjson")
#���Jjson�ɮ�2
JsonArray <- fromJSON(file = "C:\\Users\\BingXiang\\source\\repos\\RProject2\\����Ū��2.json")

dfs <- lapply(JsonArray, function(j) {
    as.data.frame(j)
})
print(dfs)


#---------------------------------�ǦC�Ƹ�Ƭ�json-----------------------------------
#json object 
data <- c("123", "456", "789")
BMI <- data.frame(
   gender = c("Male", "Female", "Female"),
   height = c(176, 171.5, 165),
   weight = c(70, 53, 49),
   Age = c(37, 33, 28))
cat(toJSON(data) , toJSON(BMI))