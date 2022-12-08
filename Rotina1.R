

dados<-
 


n=10  #tamanho da amostra


##############################################################
#   Asa
###########################################################

mat.auxi<-mat.or.vec(0,1)
mat.auxi<-dados

N=length(mat.auxi)
N

sort_elem=sample(N,n) ;  #sorteando n elementos entre  1 e N)
sort_elem
                       
amostra<-mat.auxi[sort_elem]   # pega os elementos do vetor pop que est�o nas posi��es#
amostra 

media_asa<-mean(amostra) #total de sucesso em todas as amostras
media_asa



R=round(N/n,0)
 R
sort_elem1=sample(R,1) ;  #sorteando o 1o elemento entre  1 e k)
sort_elem1
posicao=seq(sort_elem1,N,R);    #posi��o de todos elementos da amostra
posicao                       #sequencia do 1o elemento ate N com saltos k 

amostraS<-mat.auxi[posicao]   # pega os elementos do vetor pop que est�o nas posi��es#
amostraS 
media_sist<-mean(amostraS) #total de sucesso em todas as amostras
media_sist

##################################################################
#  ERRO DE ESTIMA��O
#
################################################################

MI<-mean(dados) # m�dia populacional
MI
Erro_est_ASA<-abs(media_asa-MI)
Erro_est_ASA

Erro_est_Sist<-abs(media_sist-MI)
Erro_est_Sist
