#Logical
v <- TRUE
print(class(v))

#Integer
v <- 2L
print(class(v))

#Numeric
v <- 23.5
print(class(v))

#Complex
v <- 2+5i
print(class(v))

#Character
v <- "777"
print(class(v))

#Raw
v <- charToRaw("Hello")
cat(v)
print(class(v))

cat("\r\n\r\n");

# Create a vector.
# 一維集合裡的資料都是相同型態，若輸入不同型態 會自動轉換為其他資料的型態
# 優先順序為 (character > numeric > logical )
# 對應c#的 List<int> or List<string>
cat("vector\r\n");
apple <- c('red', 'green', TRUE)
print(apple)
# Get the class of the vector.
print(class(apple))

#vector example
# Create a vector 
pokerK <- c("David", "Charlemagne", "Caesar", "Alexandre")
"Charlemagne" %in% pokerK


# Create a list.
# 一維集合裡 資料可包含不同型態
# 對應c#的 List<object>
list1 <- list(c(2, 5, 3), 21.3, sin)
# Print the list.
print(list1)


# Create a matrix 
# 二維集合
# 集合個數 必須等於 nrow * ncol
# 可包含不同型態
M = matrix(list(1, 2, 3, 4, 5, "6"), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
# Get the class of the matrix 
print(class(M))


# Create an array (2個3x1的矩陣) 
# 可任意設定不同維度的集合
a <- array(c(1: 100), dim = c(3, 1, 10))
print(a)


# Create a vector 
country <- c('US', 'US', 'JP', 'JP', 'GB', 'TW', 'FR')
# Create a factor object
# 把向量的元素做groupby並排序
factor_country <- factor(country)

# Print the factor 
print(factor_country)
# Count the Levels 
print(nlevels(factor_country))
print(class(factor_country))


# Create the data frame. 
# 對應c#的 DataTable
BMI <- data.frame(
   gender = c("Male", "Female", "Female"),
   height = c(176, 171.5, 165),
   weight = c(70, 53, 49),
   Age = c(37, 33, 28))
print(BMI)
print(class(BMI))
