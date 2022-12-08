#==============================================================
#                     ATIVIDADE 9
#==============================================================
#a-

My = 44         # m�dia amostral
DPy = 6         # desvio padr�o amostral
ny = 12         # tamanho da amostra ou "length(y)"
  
vy=ny-1         # graus de liberdade
vy

alfa=0.05            # nível de significância
t=qt((alfa/2),vy,lower.tail = FALSE)   # valor quantil T
t

# calculando a margem de erro

me_mi=t*(DPy/sqrt(ny))
me_mi

LIy=My-me_mi  # limite inferior de IC
LSy=My+me_mi  # limite superior de IC
cbind(LIy,LSy)

#Interpretação : Existe 95% de confiança de que o número médio de horas trabalhadas por empregado 
#por semana seja de 40,2h a 47,8h.


# Informando os dados da amostra y #
#y= c(dados)

varia =  36      #  variância amostral ou var(y) (desvio padrão ao quadrado) 
varia

ny= 12
ny                   # tamanho da amostra ou "length(y)"

df=ny-1              #graus de liberdade
df
alfa=0.05            # n�vel de signific�ncia#

chiLI = qchisq((alfa/2), df,lower.tail = FALSE) # quatil da Qui-quadrada deixa abaixo

chiLI  
chiLS = qchisq((1-alfa/2), df, lower.tail = FALSE) # quatil da Qui-quadrada deixa (alfa)/2 acima  
chiLS

LIv=df * varia/chiLI     #limite inferior de IC
LSv=df * varia/chiLS     #limite superior de IC

c(LIv, LSv)

#Interpretação: Existe 95% de confiança de que a variância de horas trabalhadas por empregado 
#por semana seja de 18,1h² a 103,8h².

#-----------------------------------------
#b-

DPap =  6  # desvio Padrão da amostra piloto
nap = 12   # tamanho da amostra piloto
  
vap=nap-1

alfa=0.05  # nível de significância
t=qt((alfa/2),vap,lower.tail = FALSE)

merrod = 2  #margem de erro desejada NA MESMA UNIDADE DA MÉDIA#
  
n_novo_mi=(t*DPap/merrod)^2
n_novo_mi

#Interpretação: Será necessário 44 microempresas para estimar o número médio de horas trabalhadas por empregados
#com uma margem de erro de 2h e com 95% de confiança.