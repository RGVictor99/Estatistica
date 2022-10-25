dados<-c(rep(0,14),rep(1,20),rep(2,9),rep(3,4),rep(4,2),rep(5,1))
dados

dados
summary(dados)
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

table(dados)
boxplot(dados,ylab="tempo, em dias",cex=1.5)
