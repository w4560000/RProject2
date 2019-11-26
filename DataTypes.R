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
# �@�����X�̪���Ƴ��O�ۦP���A�A�Y��J���P���A �|�۰��ഫ����L��ƪ����A
# �u�����Ǭ� (character > numeric > logical )
# ����c#�� List<int> or List<string>
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
# �@�����X�� ��ƥi�]�t���P���A
# ����c#�� List<object>
list1 <- list(c(2, 5, 3), 21.3, sin)
# Print the list.
print(list1)


# Create a matrix 
# �G�����X
# ���X�Ӽ� �������� nrow * ncol
# �i�]�t���P���A
M = matrix(list(1, 2, 3, 4, 5, "6"), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
# Get the class of the matrix 
print(class(M))


# Create an array (2��3x1���x�}) 
# �i���N�]�w���P���ת����X
a <- array(c(1: 100), dim = c(3, 1, 10))
print(a)


# Create a vector 
country <- c('US', 'US', 'JP', 'JP', 'GB', 'TW', 'FR')
# Create a factor object
# ��V�q��������groupby�ñƧ�
factor_country <- factor(country)

# Print the factor 
print(factor_country)
# Count the Levels 
print(nlevels(factor_country))
print(class(factor_country))


# Create the data frame. 
# ����c#�� DataTable
BMI <- data.frame(
   gender = c("Male", "Female", "Female"),
   height = c(176, 171.5, 165),
   weight = c(70, 53, 49),
   Age = c(37, 33, 28))
print(BMI)
print(class(BMI))