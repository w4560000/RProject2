#Create a sequence of numbers from 1 to 10. 
print(seq(1, 10))

#Find mean of numbers from 1 to 100. 
print(mean(1:100))

#Find sum of numbers frm 1 to 100. 
print(sum(1:100))


OddCount.function <- function(x) {
    o <- 0
    for (n in x) {
        if (n %% 2 == 1) {
            o <- o + 1
        }
    }
    return(o)
}

#Call the function  
OddCount.function(c(1, 2, 3, 4, 5))




#去除集合中的NA 
BMI <- data.frame(
   gender = c("Male", "Female", "Female"),
   height = c(176, 171.5, NA),
   weight = c(70, 53, NA),
   Age = c(37, 33, 28))

idx <- complete.cases(BMI)
NewBMI <- BMI[idx,]
NewBMI