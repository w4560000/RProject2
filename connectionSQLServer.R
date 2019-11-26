#-----------------------------------------------------------  
#RODBC 
#-----------------------------------------------------------  
#安裝RODBC Driver 
install.packages("RODBC")
#載入Library 
library("RODBC")
#-----------------------------------------------------------  
#連線字串
sqlConnString = "driver={SQL Server};server=.;database=Stock;"
conn <- odbcDriverConnect(sqlConnString)
#執行sql查詢 
FraudDF1 <- sqlQuery(conn, " SELECT * FROM Stock ")
#抓取前5筆顯示 
head(FraudDF1, 5)
#關閉連線 
odbcClose(conn)


#其他套件
#效能考量 ，這邊整理常用的資料庫API套件

#Oracle資料庫可以安裝ROracle套件
#MySQL資料庫可以安裝RMySQL套件
#hadoop HBase可以安裝rmr套件或是透過Hadoop API