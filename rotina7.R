#==================================================================
# Exemplo se��o 6.5.1
#   DISTRIBUI��O NORMAL
#==================================================================

# X: n�vel de colesterol e X segue uma NORMAL (� = 200 ; s = 20)


# A fun��o "pnorm" calcula a probabilidade abaixo de um valor "x"
#pnorm(x,media,desvio padrao)

media=200
dp=  20      #desvio padrao#==================================================================
# Exemplo se��o 6.5.1
#   DISTRIBUI��O NORMAL
#==================================================================

# X: n�vel de colesterol e X segue uma NORMAL (� = 200 ; s = 20)


# A fun��o "pnorm" calcula a probabilidade abaixo de um valor "x"
#pnorm(x,media,desvio padrao)

media=200
dp=  20      #desvio padrao

# a) P(X<225)
pnorm(225,media,dp,lower.tail = TRUE) #calcula a probabilidade at� um valor (lower.tail = TRUE)

# b) P(X>225)
pnorm(225,media,dp,lower.tail = FALSE) #calcula a probabilidade ACIMA de um valor (lower.tail = FALSE)

1-pnorm(225,media,dp,lower.tail = TRUE)# Fazendo pelo complemento

# c)P(200<X<225) #neste caso fazemos a �era abaixo de 225 menos a �era abaixo de 200

pnorm(225,media,dp) -pnorm(200,media,dp) 

#==================================================================
#   CALCULANDO QUANTIL
#==================================================================

# A fun�ao "qnorm" calcula o quantil (VALOR DA VA) com a probabilidade "prob" abaixo. 
#qnorm(prob,media,desvio padrao) 
# Se quiser com a probabilidade ACIMA, usar  lower.tail = FALSE)

# qual O n�vel de colesterol que deixa 5% da poupla��o abaixo?

prob=0.05 #deixa 5% abaixo 
qnorm(prob, media,dp)

# qual O n�vel de colesterol que deixa 5% da poupla��o acima?

prob=0.05 #deixa 95% abaixo 
qnorm(prob, media,dp,lower.tail = FALSE)


#==================================================================
# Comandos para construir gr�ficos da Normal
#==================================================================

x<-seq(media-3*dp:media+3*dp)
ini<-media-3*dp
fim<-media+3*dp

curve(dnorm(x,media,dp),from=ini,to=fim, xlab="Concentra��o",ylab="Densidade de x", main="Distribui��o Normal")

valor=media
lines(c(valor,valor),c(0,dnorm(valor,media,dp)),col="blue")#gera uma liha AZUL para a m�dia

valor2=225
lines(c(valor2,valor2),c(0,dnorm(valor2,media,dp)),col="red")#gera uma liha para o valor de interesse

# para outras �res basta mudar o n�mero em "valor"


# a) P(X<225)
pnorm(225,media,dp,lower.tail = TRUE) #calcula a probabilidade at� um valor (lower.tail = TRUE)

# b) P(X>225)
pnorm(225,media,dp,lower.tail = FALSE) #calcula a probabilidade ACIMA de um valor (lower.tail = FALSE)

1-pnorm(225,media,dp,lower.tail = TRUE)# Fazendo pelo complemento

# c)P(200<X<225) #neste caso fazemos a �era abaixo de 225 menos a �era abaixo de 200

pnorm(225,media,dp) -pnorm(200,media,dp) 

#==================================================================
#   CALCULANDO QUANTIL
#==================================================================

# A fun�ao "qnorm" calcula o quantil (VALOR DA VA) com a probabilidade "prob" abaixo. 
#qnorm(prob,media,desvio padrao) 
# Se quiser com a probabilidade ACIMA, usar  lower.tail = FALSE)

# qual O n�vel de colesterol que deixa 5% da poupla��o abaixo?

prob=0.05 #deixa 5% abaixo 
qnorm(prob, media,dp)

# qual O n�vel de colesterol que deixa 5% da poupla��o acima?

prob=0.05 #deixa 95% abaixo 
qnorm(prob, media,dp,lower.tail = FALSE)


#==================================================================
# Comandos para construir gr�ficos da Normal
#==================================================================

x<-seq(media-3*dp:media+3*dp)
ini<-media-3*dp
fim<-media+3*dp

curve(dnorm(x,media,dp),from=ini,to=fim, xlab="Concentra��o",ylab="Densidade de x", main="Distribui��o Normal")

valor=media
lines(c(valor,valor),c(0,dnorm(valor,media,dp)),col="blue")#gera uma liha AZUL para a m�dia

valor2=225
lines(c(valor2,valor2),c(0,dnorm(valor2,media,dp)),col="red")#gera uma liha para o valor de interesse

# para outras �res basta mudar o n�mero em "valor"
