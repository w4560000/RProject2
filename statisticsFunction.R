n <- c(1, 1, 2, 4, 6)
plot(n, pch = 17, col = "blue", cex = 2)

#羆 
sum(n)

#キА计 羆埃计 
mean(n)

#い计:盢戈パ竚﹡い碞琌い计  
median(n)

#渤计:舱戈い瞷程Ω计 
as.numeric(names(table(n)))[which.max(table(n))]

#礶キА计翴 
points(mean(n), pch = 4, col = "red", cex = 3)

#礶い计翴 
points(median(n), pch = 3, col = "blue", cex = 3)

#羆㎝14
#キА计2.8
#い计琌2
#渤计琌1