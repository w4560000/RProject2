#if 
cat("if\r\n")
x <- "�ӯ���"
if (x == "�ӯ���") {
    cat(x, "asiaGodTone")
}
cat("\r\n\r\n")

#if else 
cat("if else \r\n")
x <- TRUE
if (x) {
    cat(x, "�ʥD���O������")
} else {
    cat(x, "�ʥD�����O������")
}
cat("\r\n\r\n")

#nested if else 
cat("nested if else \r\n")
x <- sample(1:5, size = 1)
if (x == 1) {
    cat(x, "test1")
} else if (x == 2) {
    cat(x, "test2")
} else if (x == 3) {
    cat(x, "test3")
} else if (x == 4) {
    cat(x, "test4")
} else {
    cat(x, "test5")
}
cat("\r\n\r\n")


#switch
cat("switch \r\n")
x <- sample(1:5, size = 1)
y <- switch(
   EXPR = x,
   "1" = "switch1",
   "2" = "switch2",
   "3" = "switch3",
   "4" = "switch4",
   "switchdefault")
cat(x, y)
cat("\r\n\r\n")


#Syntactic sugar
cat("Syntactic sugar: ifelse \r\n")
cat(ifelse(x >= 1, "�ߦw!�ڭn�U�h��500�F", "�~��V�Opo��"))