# Iris是R語言內建的資料集，有150筆生物樣本觀測值 ，中文是鳶尾花

# 查看列、行個數、維度
nrow(iris)
ncol(iris)
dim(iris)

# 顯示欄位名稱、dataframe 結構(structure)
names(iris)
str(iris)

# cbind 合併資料集合(col) 直欄
names <- c("David", "Charlemagne", "Caesar", "Alexandre")
Marks <- c("K", "K", "K", "K")
df <- cbind(names, Marks)
print(class(df))
df

#先製作1筆資料 
dfQueen <- data.frame(names = "Athena", Marks = "Q")
dfQueen

# rbind 合併資料集合(row) 橫列
dq <- rbind(df, dfQueen)
dq

#(4)row index (列) 
#取出前3列資料 
dq[1:3,]
#取出第5列資料 
dq[5,]

#(5)column index (欄) 
df[, 1]
df[, 2]

#先取得資料框的筆數 
n <- nrow(dq)
#抽樣選出index 
t_idx <- sample(seq_len(n), size = round(0.8 * n))
#訓練組樣本 
traindata <- dq[t_idx,]
#測試組樣本 
testdata <- dq[-t_idx,]

#觀察結果 
traindata
testdata

#取出集合裡Marks欄位的所有值
dq$Marks

#(6)filter條件 
df_sub <- subset(df, Marks == "K")
df_sub

#(7)修改欄位名稱colnames 
colnames(df) <- c("人物名稱", "號碼")
df