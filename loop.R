#for loop 列舉i從1到7 
for (i in 1:7) {
    cat(i, " for loop", "\r\n")
}

#while loop 
x <- 0
while (x < 7) {
    x <- x + 1
    cat(x, " while loop", "\r\n")
}

#repeat loop 
x <- 0
repeat {
    x <- x + 1
    if (x > 7) {
        break;
    }
    cat(x, " repeat loop", "\r\n")
}

#keyWord next
v <- LETTERS[1:5]
for (al in v) {


    if (al == "C") {
        next
    }
    cat(al, " next in loop", "\r\n")
}

#keyWord break
v <- LETTERS[1:5]
for (al in v) {


    if (al == "C") {
        break
    }
    cat(al, " break in loop", "\r\n")
}

#九九乘法表 
for (i in 1:9) {
    for (j in 1:9) {
        k = i * j
        cat(i)
        cat(" x ")
        cat(j)
        cat(" = ")
        cat(k)
        cat("  ")
    }
    cat("\n")
}

