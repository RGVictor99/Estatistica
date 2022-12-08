#==============================================================
#   intervalo de Confian�a para a vari�ncia (sigma^2)
#==============================================================

# Informando os dados da amostra y #

y= c( 211.9, 195.0, 198.1, 199.2, 209.1, 201.9, 205.1, 201.6, 202.4, 196.1)

varia = var(y)       #  vari�ncia amostral ou var(y)
varia

ny= length(y)
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

#==============================================================
# intervalo de Confian�a para a desvio padr�o (sigma)
#   BASTA TIRAR A RAIZ QUADRA DOS LIMITES DO IC DA vari�ncia
#==============================================================

c(sqrt(LIv), sqrt(LSv))
