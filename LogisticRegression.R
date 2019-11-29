install.packages("AER")
library(AER)

#(1)���Jcreditcard��ƶ�(�]�t1,319���[����աA�@��12���ܼ�)
data(CreditCard)
#�[�������
head(CreditCard)

#���]�ڭ̥u�n�H�U���(card:�O�_�֭�d���B�H�ζS�z���i�ơB�~�֡B���J(����)�B�ۦ����v���p�B���Ӯɶ�)
bankcard <- subset(CreditCard, select = c(card, reports, age, income, owner, months))

#�N�O�_�֭�d���ഫ��0/1�ƭ�
bankcard$card <- ifelse(bankcard$card == "yes", 1, 0);


#(2)�]ù�N���ҫ�
card_glm <- glm(formula = card ~ ., family = "binomial", data = bankcard)

#(3)�浧��ƹw��
#30���L�H�Τ��}�����A���J10�U�����A���ۦ����v
new <- data.frame(reports = 0, age = 30, income = 10, owner = "yes", months = 50)
result <- predict(card_glm, newdata = new, type = "response")
result

#30�����H�Τ��}�����A���J5�U�����A�L�ۦ����v
new <- data.frame(reports = 1, age = 30, income = 5, owner = "no", months = 50)
result <- predict(card_glm, newdata = new, type = "response")
result


#(4)���ռҫ�
#�N��Ƥ����V�m�P���ղ�

#���o�`����
n <- nrow(bankcard)
#�]�w�H���ƺؤl
set.seed(1117)
#�N�ƾڶ��ǭ��s�ƦC
newbankcard <- bankcard[sample(n),]

#���X�˥��ƪ�idx
t_idx <- sample(seq_len(n), size = round(0.7 * n))

#�V�m��ƻP���ո�Ƥ��: 70%�ؼҡA30%����
traindata <- newbankcard[t_idx,]
testdata <- newbankcard[-t_idx,]

# ���s�إ�ù�N���j�k�ҫ�
card_glm2 <- glm(formula = card ~ ., family = "binomial", data = traindata)
result <- predict(card_glm2, newdata = testdata, type = "response")

#(5)�إ߲V�c�x�}(confusion matrix)�[��ҫ����{

#r���]�ڭ̻{�w�ַǲv60%�H�W�~�����֥d�A��l�O���ڥ�θɥ�
result_Approved <- ifelse(result > 0.6, 1, 0)
cm <- table(testdata$card, result_Approved, dnn = c("���", "�w��"))
cm


#(6)�ǽT�v
#�p��ַǥd���T�v
cm[4] / sum(cm[, 2])

#�p��ڸɥ󥿽T�v
cm[1] / sum(cm[, 1])

#����ǽT�v(�﨤�u�����`�M/�Ҧ��[����`�M)
accuracy <- sum(diag(cm)) / sum(cm)
accuracy