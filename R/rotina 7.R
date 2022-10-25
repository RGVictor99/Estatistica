#=========================================================================
# Conjunto de dados armazenando no objeto chamado �dados�.
# Aten��o separador decimal � �ponto� ( . )
#=========================================================================
Dados4.1=c (58, 56, 57, 60, 62, 62)
Dados4.2=c (72, 75, 74, 73, 74, 72, 77)
Dados4.3=c (48, 49, 45, 47, 43)

dados1<-Dados4.1
dados2<-Dados4.2
dados3<-Dados4.3
sort(dados1)  # ordena os dados ROL
sort(dados2)
sort(dados3)

#usando a fun��o direta do R

media1=mean(dados1)
media2=mean(dados2)
media3=mean(dados3)

media1
media2
media3

mediana1=median(dados1)
mediana2=median(dados2)
mediana3=median(dados3)

mediana1
mediana2
mediana3

# vari�ncia
Va1=var(dados1)
Va2=var(dados2)
Va3=var(dados3)

Va1
Va2
Va3

#desvio padr�o
DP1=sd(dados1)
DP2=sd(dados2)
DP3=sd(dados3)

DP1
DP2
DP3

#coeficiente de variação
CV1=(DP1/media1)*100
CV2=(DP2/media2)*100
CV3=(DP3/media3)*100

CV1
CV2
CV3

#Para quartis

Q1=quantile(dados,.25,type=4)
Q1
Q3=quantile(dados,.75,type=4)
Q3



boxplot(dados1,dados2,dados3, ylab="Peso do comprimido (mg)")

