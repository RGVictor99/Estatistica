#=================================================================
#Criando  gr�ficos de barra ou coluna para dados DISCRETOS###
#==================================================================
dados=c(0,1,0,0,2,3,1,0,0,2,0,0,4,0,2,3,2,0,1,1,
        3,1,0,4,2,1,2,0,0,3,0,0,1,1,1,0,2,0,1,3)

d=table(dados) # faz a frequencias das respostas#
d

#=================================================================
#Criando gr�ficos de Coluna e Barras - FIGURA 1.1   
#==================================================================

#Criando  gr�ficos de colunas ###
barplot(d, col="blue",horiz =F,beside=F,ylim=c(0,20),space=0.3,xlab="N�mero de pacotes", ylab="Frequ�ncia")

#Criando  gr�ficos de barra ###
barplot(d, col="gray",horiz =T,xlim=c(0,20),space=0.3,xlab="Frequ�ncia", ylab="N�merode pacotes")

#=================================================================
#Criando  gr�ficos de  setores - PIZZA ###
#=================================================================
pie(d)
text(locator(n=5),labels =c("40.0%", "25.0%", "17.5%", "12.5%",  "5.0%"))

# A fun��o "text" acrescenta os valores no gr�fico. Para incluir as porcentagens dentro de cada fatia,
# execute a linha abaixo clicando na fatia a sequ�ncia dos resultados.
# locator(n=5)-> indica que ser�o 5 locais

#=================================================================
# Calculando frequancia relativa e percentual  para DADOS DISCTRETOS
#=================================================================

df<-as.data.frame(d) #tranforma um objeto table em data.frame

Xi=seq(min(dados),max(dados));Xi  # gera uma sequencia de valores que x assume

Fi=df$Freq; Fi    # Armazena a frequencia absoluta do data frame
n=sum(Fi)         
Fri=Fi/n;Fri     # Calcula a frequencia relativa
Fpi=Fri*100;Fpi    # Calcula a frequencia percentual
FAPi=cumsum(Fpi);FAPi # soma cumulatica de Fpi

k<-length(Xi)

## Criando uma Matriz para receber os resultados

tabela<-matrix(c(rep(5*k)),k,5)
tabela[,1]<-Xi
tabela[,2]<-Fi
tabela[,3]<-Fri
tabela[,4]<-Fpi
tabela[,5]<-FAPi

colnames(tabela)<-c("X","Fi","Fr","Fp","FAp")
tabela

sum(tabela[,2])

