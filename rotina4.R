Dados4.1.2=c (70 , 76 , 76 , 77 , 77 , 78 , 80 ,81 , 81 , 83 , 83 , 83 , 84 , 86 , 86 , 87 , 87 , 88 , 89 , 90 , 90 , 91 , 92 , 92 , 93 , 94
              , 94 , 95 , 98 , 99)

dados <-Dados4.1.2
sort(dados)

###moda
moda=subset(table(dados),table(dados)==max(table(dados)))
moda

###média
soma=sum(dados)
soma
n=length(dados)
n

media=mean(dados)
media

###mediana
mediana=median(dados)
mediana

#Amplitude total:
A = max(dados) - min(dados)
A

#Verificando que a soma dos desvios em relação à média é ZERO
di=dados-media
soma_di=sum(di);round(soma_di,10)
Val=(sum(di^2))/(n-1)  #cálculo variancia
Val

#variancia
Va=var(dados)
Va

#desvio
DP=sd(dados)
DP

#coeficiente de variação
CV=(DP/media)*100
CV

#Para quartis
Q1=quantile(dados,.25,type==4)
Q1
Q3=quantile(dados,.75,type=4)
Q3
  
  
  
  