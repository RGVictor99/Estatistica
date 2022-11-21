#============================================
#  Distribui��o Binomial : X~B(n,p)
#============================================

#function (x, size, prob, log = FALSE)
# help(dbinom) #para mais informa��es

#============================================
#Exemplo se��o 6.2
#============================================

#par�metros
n=10
p=0.8

# P(X=6)
dbinom(6, n, p)#calcula a probabilidade de ser igual a um valor

# P(X<=5)
pbinom(5, n, p,lower.tail = TRUE)#calcula a probabilidade at� um valor (lower.tail = TRUE)

# P(X>7) 
pbinom(7, n, p,lower.tail = FALSE)#calcula a probabilidade ACIMA de um valor (lower.tail = FALSE)

#   OBSERVA��O: Se o objetivo fosse obter a prob. de ser maior ou igual a 7, 
#   deve-se fazer maior que 6 - P(X>6) 

pbinom(6, n, p,lower.tail = FALSE) # Calc a prob de P(X>=7) 
#============================================
# veja comandos para os gr�ficos da Binomial
#============================================
x <- 0:n #gr�fico da f.m.p
gx <- dbinom(x, n, p)

plot(x, gx, type= "h",ylab= "fun��o massa de probabilidade")
#============================================
# Gr�fico distribui��o acumulada
#============================================
fx <-pbinom(x,n,p)
plot(c(0,x),c(0,fx),type="s",ylab="distribui��o acumulada",main="Distribui��o Binomial",
     cex.lab= 1.5, xlab="x")


######################################################
#============================================
#  Distribui��o Poisson : X~Poisson(lambda)
#============================================
#function ppois(x, lambda))
# help(dpois) #para mais informa��es
#============================================
#Exemplo se��o 6.3
#============================================

#como a pergunta � por cm2 temos : lam=10/4
#par�metro  
lam=2.5

# P(X=0)
dpois(0,lam)#calcula a probabilidade de ser igual a um valor

# P(X<=2)
ppois(2, lam,lower.tail = TRUE)#calc a probabilidade at� um valor (lower.tail = TRUE)

# P(X>2)= 
ppois(2, lam,lower.tail = FALSE)#calc a probabilidade ACIMA de um valor (lower.tail = FALSE)

#============================================
# veja comandos para os gr�ficos da Poisson
#============================================

# Gr�fico distribui��o acumulada

x <- seq(-0.01, 10, 0.01)
plot(x, ppois(x, lam), type = "s", ylab = "F(x)", main = "Poisson(1) FDA")

# FDA: Fun��o de distribui��o acumulada


