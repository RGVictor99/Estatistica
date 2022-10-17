dados=c(14.2,16.2, 20.6, 21.4, 23.4, 15.8, 18.4, 20.6, 22.0, 26.6,
        14.4, 18.4, 20.6, 21.8, 25.2, 16.2, 19.2, 20.8, 22.2, 27.0)

dados
sort(dados)  # ordena os dados ROL

summary(dados)
sd(dados)
hist(dados)
#=================================================================

#Confec��o do histograma e da tabela de distribui��o de frequ�ncia
#=================================================================



#Determinar o n�mero de classes
#----------In�cio da fun��o-------------
numerodeclasses<-function(x)
{
  if(length(x)<=100){k<-sqrt(length(x))+0.5}
  else
  {k<-5*log10(length(x))}
  return(round(k,0))
}
#----------Fim da fun��o---------------

k<-numerodeclasses(dados);k


#Amplitude total

A<-max(dados)-min(dados)        #calcula a amplitude total, A = >obs - <obs
A

#Amplitude de classe

C<-A/(k-1)
C<-round(C,2)                     #considera apenas duas casas decimais
C

#Limite inferior da primeira classe

LI1<-min(dados)-C/2             #limite inferior da 1� classe
LI1<-round(LI1,2)                #considera apenas duas casas decimais
LI1
limites<-LI1+C*(0:k)
limites

#constroi o histograma e a distribui��o de frequ�ncia, LI|--LS ou [LI, LS)
#=================================================================
# Fun��o "hist" faz o HIstograma e a distribui��o de frequ�ncia nas classes 
# determinadas de acordo com os intervalos de classes (breaks)
#=================================================================


TDF<-hist(dados,breaks=limites,plot=FALSE,right=FALSE)
TDF
n<-length(dados) 
tabela<-matrix(c(rep(7*k)),k,7)# s�o 7 colunas na Tabela
for(i in 1:k)
{tabela[i,1]<-round(TDF$breaks[i],2)
tabela[i,2]<-round(TDF$breaks[i+1],2)
tabela[i,3]<-round(TDF$mids[i],2)
tabela[i,4]<-(TDF$counts[i])
tabela[i,5]<-round(((TDF$counts[i])/n),4)
tabela[i,6]<-round((100*TDF$counts[i])/n,2)
tabela[i,7]<-sum(TDF$counts[1:i])
}
sum(TDF$counts[])
colnames(tabela)<-c("LI","LS","Xi","Fi","Fr","Fp","FAp")
tabela

#=================================================================
# Fazendo o HIstograma 
#=================================================================

#Todas as vezes que aparecer breaks, colocar limites

hist(dados,label=FALSE,col="gray",main="",right=FALSE,
     xlab="Peso (kg)", ylab="Frequ�ncia absoluta", 
     xlim=c(min(TDF$mids)-C,max(TDF$mids)+2*C),
     ylim=c(0,(max(TDF$counts)+1)),
     breaks=limites,axes=FALSE)
axis(1,at=limites,pos=c(0,0))
axis(2,at=c(seq(0:(max(TDF$counts)+1))-1))

#C<-TDF$mids[2]-TDF$mids[1]

Xip<-c(TDF$mids[1]-C,TDF$mids,TDF$mids[length(TDF$mids)]+C)
frequencia<-c(0,TDF$counts,0)
Xip
lines(frequencia~Xip,type="l",col="blue",lwd=2)

