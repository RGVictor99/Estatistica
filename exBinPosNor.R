#Ex Bin e Pois

#Q3
#X: numero de resultados positivo sem ter câncer
#X segue uma Binominal ( n=15; p=0,05)

n=15
p=0.05
dbinom(0, n, p)    #calcula a probabilidade de ser igual a um valor
pbinom(3, n, p,lower.tail = TRUE)#calcula a probabilidade at� um valor (lower.tail = TRUE)

#======================================================#
#Q4

#X: numero de pessoas atendidas num lab
#lambda = 6*6
lam=36
#a) P(X=40)
dpois(40,lam)
#b) P(X=48)
dpois(48,lam)
#c)P(30<=X<=35) = P(X<=35) - P(X<=29)
ppois(35,lam) - ppois(29,lam)

#======================================================#
#Q5
media=500
dp = 36
#a) P(X>520)
pnorm(520,media,dp,lower.tail = FALSE)
#b) P(X>550)
pnorm(550,media,dp,lower.tail = FALSE)
#c) P(450<X<550)
pnorm(450,media,dp,lower.tail = FALSE)-pnorm(550,media,dp,lower.tail = FALSE)
#d) P(X<520)
pnorm(520,media,dp,lower.tail = TRUE)
#e) P(X<380)
pnorm(380,media,dp,lower.tail = TRUE)
#f) P(X>Xf) = 0,05
qnorm(0.05,media,dp,lower.tail = FALSE)
#g) P(X<Xg) = 0,05
qnorm(0.05,media,dp,lower.tail = TRUE)
#h) P(X<Xh) = 0,75
qnorm(0.75,media,dp,lower.tail = TRUE )
