
#=========================================================================
# Conjunto de dados armazenando no objeto chamado �dados�.
# Aten��o separador decimal � �ponto� ( . )
#=========================================================================
Dados4.1.2=c (70 , 76 , 76 , 77 , 77 , 78 , 80 , 81 , 81 , 83 , 83 , 83 , 84 , 86 , 86 , 87 , 87 , 
88 , 89 , 90 , 90 , 91 , 92 ,92 , 93 , 94 , 94 , 95 , 98 , 99)

dados<-Dados4.1.2
sort(dados)  # ordena os dados ROL

#Calculando a m�dia
soma=sum(dados)
soma
n=length(dados)# Fun��o length() fornece o comprimento do objeto
n

media1=soma/n
media1


#usando a fun��o direta do R

media=mean(dados)
media

mediana=median(dados)
mediana

#moda para dados discretos
moda=subset(table(dados),table(dados)==max(table(dados)))
moda

#=============================================
#Medidas de variabilidade no R

#Amplitude total:

A = max(dados)- min(dados)
A

#============================================
# Verificando que a soma dos desvios em rela��o � m�dia � ZERO
#========================================
di=dados-media
di

soma_di=sum(di);round(soma_di,10)

Va1=(sum(di^2))/(n-1)
Va1
# vari�ncia
Va=var(dados)
Va
#desvio padr�o
DP=sd(dados)
DP

#coeficiente de varia��o
CV=(DP/media)*100
CV


#Para quartis

Q1=quantile(dados,.25,type=4)
Q1
Q3=quantile(dados,.75,type=4)
Q3

#Para percentis

quantile(dados,0.90,type=4)

#================================================
#  Calculando desvio interquart�lico e limites para 
#  identificar outlier
#==============================================

DQI<- Q3 - Q1
DQI

LI_q<- Q1-(1.5*DQI); LI_q

LS_q<- Q3+(1.5*DQI); LS_q


boxplot(dados, ylab="Peso do comprimido (mg)")


