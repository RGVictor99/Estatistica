n = 10
p=0.8

#P(X=6)
dbinom(6,n,p)


# P(X<=5)
pbinom(5,n,p,lower.tail = TRUE)
#P(X>7)
pbinom(7,n,p,lower.tail = FALSE)

#grafico
x <- 0:n #grafico d f.m.p
gx <- dbinom(x,n,p)

plot(x,gx,type = "h", ylab = "função massa")