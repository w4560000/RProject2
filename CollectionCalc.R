# Iris�OR�y�����ت���ƶ��A��150���ͪ��˥��[���� �A����O�����

# �d�ݦC�B��ӼơB����
nrow(iris)
ncol(iris)
dim(iris)

# ������W�١Bdataframe ���c(structure)
names(iris)
str(iris)

# cbind �X�ָ�ƶ��X(col) ����
names <- c("David", "Charlemagne", "Caesar", "Alexandre")
Marks <- c("K", "K", "K", "K")
df <- cbind(names, Marks)
print(class(df))
df

#���s�@1����� 
dfQueen <- data.frame(names = "Athena", Marks = "Q")
dfQueen

# rbind �X�ָ�ƶ��X(row) ��C
dq <- rbind(df, dfQueen)
dq

#(4)row index (�C) 
#���X�e3�C��� 
dq[1:3,]
#���X��5�C��� 
dq[5,]

#(5)column index (��) 
df[, 1]
df[, 2]

#�����o��Ʈت����� 
n <- nrow(dq)
#��˿�Xindex 
t_idx <- sample(seq_len(n), size = round(0.8 * n))
#�V�m�ռ˥� 
traindata <- dq[t_idx,]
#���ղռ˥� 
testdata <- dq[-t_idx,]

#�[��G 
traindata
testdata

#���X���X��Marks��쪺�Ҧ���
dq$Marks

#(6)filter���� 
df_sub <- subset(df, Marks == "K")
df_sub

#(7)�ק����W��colnames 
colnames(df) <- c("�H���W��", "���X")
df