#-----------------------------------------------------------  
#RODBC 
#-----------------------------------------------------------  
#�w��RODBC Driver 
install.packages("RODBC")
#���JLibrary 
library("RODBC")
#-----------------------------------------------------------  
#�s�u�r��
sqlConnString = "driver={SQL Server};server=.;database=Stock;"
conn <- odbcDriverConnect(sqlConnString)
#����sql�d�� 
FraudDF1 <- sqlQuery(conn, " SELECT * FROM Stock ")
#����e5����� 
head(FraudDF1, 5)
#�����s�u 
odbcClose(conn)


#��L�M��
#�į�Ҷq �A�o���z�`�Ϊ���ƮwAPI�M��

#Oracle��Ʈw�i�H�w��ROracle�M��
#MySQL��Ʈw�i�H�w��RMySQL�M��
#hadoop HBase�i�H�w��rmr�M��άO�z�LHadoop API