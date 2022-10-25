dados<-c(148, 116, 126, 148, 135, 144, 129, 128, 120, 146, 140, 146)
dados

dados
sort(dados)

media=mean(dados)
media
mediana=median(dados)
mediana
moda=subset(table(dados),table(dados)==max(table(dados)))
moda

DP=sd(dados)
DP

CV=(DP/media)*100
CV

Q1=quantile(dados,.25,type=4)
Q1
Q3=quantile(dados,.75,type=4)
Q3

table(dados)
boxplot(dados,ylab="tempo, em dias",cex=1.5)

