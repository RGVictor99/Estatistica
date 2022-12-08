#=========================================================
#  Amostragem simples ao acaso
#=========================================================

# Exemplo nota de aula

N=54  #tamanho da POPULA��O
n=10  #tamanho da amostra
sample(N,n) ;  #sorteando "n" elementos entre  1 e "N")

#=========================================================
#  Amostragem Estratificada
#=========================================================

# Exemplo nota de aula- sec 2.5.2
TE=c(873,386,246,186,112)#tamanho dos estratos Ni

N=1803  #tamanho da POPULA��O
n=100  #tamanho da amostra

ni=n/N*TE;ni
ni2=round(ni,0);ni2# arredonda os valores de ni com "0" casas decimais

sample(TE[1],ni2[1]) ;  #sorteando "ni" elementos no estrato 1)
sample(TE[2],ni2[2]) ;  #sorteando "ni" elementos no estrato 2)

sample(TE[3],ni2[3]) ;  #sorteando "ni" elementos no estrato 3)

sample(TE[4],ni2[4]) ;  #sorteando "ni" elementos no estrato 4)

sample(TE[5],ni2[5]) ;  #sorteando "ni" elementos no estrato 5)


#=========================================================
#  Amostragem sistem�tica
#=========================================================
# Exemplo nota de aula - sec-2.5.3

N=1000
n=50

R=round(N/n,0) # passos de amostragem (raz�o) 
 R
sort_elem1=sample(R,1) ;  #sorteando o 1o elemento entre  1 e k)
sort_elem1
uposicao=seq(sort_elem1,N,R);    #posi��o de todos elementos da amostra
posicao                       #sequencia do 1o elemento ate N com saltos R 

##################################################################################
#=========================================================
#  Resolvemdo exerc�cio 03 pag 25
#=========================================================

#Primeito, carregar (ler) o baco de dados
#Obs.: Seguir este roteiro no R para abrir e atachar o banco de dados 

# 1o- nomequalquer< -read.table(file.choose(), header=T, dec=�,�), usar �dec� se for o caso
# 2o-  nomequalquer, para ver o banco de dados
# 3o- attach(nomequalquer)

arquivo<-read.table(file.choose(),h=T,dec=",") #procurar e carregar o banco de dados #dados_cobaias_coelho#
attach(arquivo)
dados<-peso #armazena  a coluna "peso" do banco de dados
 
dados

#=========================================================
#   Asa
#=========================================================

mat.auxi<-mat.or.vec(0,1)
mat.auxi<-dados

N=length(mat.auxi);N # length(): fun��o conta quantos elements tem no objeto (mat.auxi)  
n=10  #tamanho da amostra

sort_elem=sample(N,n) ;  #sorteando n elementos entre  1 e N)
sort_elem
                       
amostra_asa<-mat.auxi[sort_elem]   # pega os elementos do vetor pop que est�o nas posi��es#
amostra_asa 

media_asa<-mean(amostra_asa) #total de sucesso em todas as amostras
media_asa

#=========================================================
#  Amostragem sistem�tica
#=========================================================

R=round(N/n,0) # passos de amostragem (raz�o) 
 R
sort_elem1=sample(R,1) ;  #sorteando o 1o elemento entre  1 e k)
sort_elem1
posicao=seq(sort_elem1,N,R);    #posi��o de todos elementos da amostra
posicao                       #sequencia do 1o elemento ate N com saltos k 

amostra_sis<-mat.auxi[posicao]   # pega os elementos do vetor pop que est�o nas posi��es#
amostra_sis 
media_sist<-mean(amostra_sis) #total de sucesso em todas as amostras
media_sist

#====================================================
#  ERRO DE ESTIMA��O
#====================================================
MI<-mean(dados) # m�dia populacional
MI
Erro_est_ASA<-abs(media_asa-MI)
Erro_est_ASA

Erro_est_Sist<-abs(media_sist-MI)
Erro_est_Sist
