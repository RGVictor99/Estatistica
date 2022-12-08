#==============================================================
#                     ATIVIDADE 5
#==============================================================
#a-

n=400       # tamanho da amostra
np=240       # número de sucessos em n
pe=np/n     # proporção amostral
pe

#Interpretação: 60% dos eleitores preferem o candidato A

#--------------------------------------------------------
#b- 
DPp= sqrt(pe*(1-pe)) # desvio padrão amostral da proporção
DPp 
alfa=0.05          # nível de significância

Z=qnorm(alfa/2,lower.tail = FALSE) # valor quantil Normal Padrão()
Z

# calculando a margem de erro
merrop=Z*(DPp/sqrt(n))
merrop      

LIpi=pe-merrop;LIpi  # limite inferior de IC
LSpi=pe+merrop;LSpi  # limite superior de IC

cbind(LIpi,LSpi)

#Interpretação: Existe a probabilidade com 95% de confiança de que a quantidade de votos 
# do candidato A esteja entre 55,2% e 64,8%

#--------------------------------
#c-
alfa=0.01          # nível de significância

Z=qnorm(alfa/2,lower.tail = FALSE) # valor quantil Normal Padrão()
Z

# calculando a margem de erro
merrop=Z*(DPp/sqrt(n))
merrop      

#Interpretação: A marge de erro para 99% de confiança é de 6,3%

#-----------------------------------
#d-
pap=   0.6     # proporção na amostra piloto
merrod= 0.02    # margem de erro desejada, deve sempre ser em DECIMAL
  
alfa=0.05 # nível de significância
DPpap= sqrt(pap*(1-pap))

Z=qnorm(alfa/2,lower.tail = FALSE)

n_novo_pi=(Z*DPpap/merrod)^2
n_novo_pi

alfa=0.01 # nível de significância
DPpap= sqrt(pap*(1-pap))

Z=qnorm(alfa/2,lower.tail = FALSE)

n_novo_pi=(Z*DPpap/merrod)^2
n_novo_pi

#Interpretação: Será necessário 2305 com margem de erro de 2% e nível de confiância de 95%
#               Será necessário 3981 com margem de erro de 2% e nível de confiância de 99%
                
