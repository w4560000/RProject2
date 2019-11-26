#if 
cat("if\r\n")
x <- "太神拉"
if (x == "太神拉") {
    cat(x, "asiaGodTone")
}
cat("\r\n\r\n")

#if else 
cat("if else \r\n")
x <- TRUE
if (x) {
    cat(x, "動主播是粉紅豬")
} else {
    cat(x, "動主播不是粉紅豬")
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
cat(ifelse(x >= 1, "晚安!我要下去領500了", "繼續努力po文"))