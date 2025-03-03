mydata <- c(10, 20, 30, 40, 50, 60, 70, 80)

mean(mydata)
head(mydata)
median(mydata)

s3 <- list(values = mydata)
class(s3)


setClass("dataClass", representation(values = "numeric"))
s4 <- new("dataClass", values = mydata)
isS4(s4)