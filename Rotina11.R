#==============================================================
#     Construindo intervalo de Confian�a para a M�dia (Mu)
#==============================================================
# Calculando a m�dia,desvio Padr�o e tamanho da amostra y #
# QUANDO TIVER OS DADOS BRUTOS

# EXEMPLO 7.4.2

y=c(6, 7, 7, 3, 4, 5, 4, 2)      # dados da amostra 

My= mean(y);My       # m�dia amostral
DPy= sd(y)           # desvio padr�o amostral
ny= length(y)        # tamanho da amostra ou "length(y)"

#==============================================================

vy=ny-1         #graus de liberdade
vy

alfa=0.05            # n�vel de signific�ncia#
t=qt((alfa/2),vy,lower.tail = FALSE)       # valor quantil T#
t

#calculando a margem de erro#

me_mi=t*(DPy/sqrt(ny))
me_mi

LIy=My-me_mi  #limite inferior de IC
LSy=My+me_mi  #limite superior de IC
cbind(LIy,LSy)

#==============================================================
#     Construindo intervalo de Confian�a para a M�dia (Mu)
#==============================================================
#Informando a m�dia,desvio Padr�o e tamanho da amostra y #
# QUANDO TIVER AS ESTAT�STICAS DESCRITIVAS DA AMOSTRA

My=           # m�dia amostral
  DPy=          # desvio padr�o amostral
  ny=           # tamanho da amostra ou "length(y)"
  
  vy=ny-1         #graus de liberdade
vy

alfa=0.05            # n�vel de signific�ncia#
t=qt((alfa/2),vy,lower.tail = FALSE)       # valor quantil T#
t

#calculando a margem de erro#

me_mi=t*(DPy/sqrt(ny))
me_mi

LIy=My-me_mi  #limite inferior de IC
LSy=My+me_mi  #limite superior de IC
cbind(LIy,LSy)

################################################################
#==============================================================
# construindo intervalo de Confian�a para a Propor��o (pi) 
#==============================================================
# EXEMPLO 7.4.6

n=1000       #tamanho da amostra#
np=410       # n�mero de sucessos em n#
pe=np/n     # propor��o amostral
pe

DPp= sqrt(pe*(1-pe)) # desvio padr�o amostral da propor��o
DPp 
alfa=0.05          # n�vel de signific�ncia#

Z=qnorm(alfa/2,lower.tail = FALSE) # valor quantil Normal Padr�o()#
Z

#calculando a margem de erro#
merrop=Z*(DPp/sqrt(n))
merrop      

LIpi=pe-merrop;LIpi  #limite inferior de IC
LSpi=pe+merrop;LSpi  #limite superior de IC

cbind(LIpi,LSpi)

#==============================================================
# c�lculo do tamanho da amostra com margem de erro para Mu #
#==============================================================

DPap=    # desvio Padr�o da amostra piloto
  nap=     #tamanho da amostra piloto
  
  vap=nap-1

alfa=0.05  # n�vel de signific�ncia#
t=qt((alfa/2),vap,lower.tail = FALSE)

merrod=   #margem de erro desejada NA MESMA UNIDADE DA M�DIA#
  
  n_novo_mi=(t*DPap/merrod)^2
n_novo_mi

#==============================================================
# c�lculo do tamanho da amostra para margem de erro na propor��o(PI) #
#==============================================================
pap=       # propor��o na amostra piloto#
  merrod=    #margem de erro desejada, deve sempre ser em DECIMAL#
  
  alfa=0.05 # n�vel de signific�ncia#
DPpap= sqrt(pap*(1-pap))

Z=qnorm(alfa/2,lower.tail = FALSE)

n_novo_pi=(Z*DPpap/merrod)^2
n_novo_pi