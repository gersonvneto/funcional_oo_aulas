##################
# Funcional e OO
# Prof. Neylson
# Aula 12
# Gerson de Morais Vasconcelos Neto
#######

# Revisão

library(descr)
library(dplyr)
library(tidyverse)

# Para cada número dentro de um vetor de 1 a 100
# 1 a 50 - exiba na tela pequeno
# 51 a 100 - exiba na tela grande

# FOR

for (num in 1:100) {
  if (num <= 50) {
    print("Pequeno")
  }
  else {
    print("Grande")
  }
}

# WHILE
x = 0

while (x <= 100){
  x = x + 1
  if (x <= 50){
    print("Pequeno")
  }
  else {
    print("Grande")
  }
}


##################
# Para cada número de 1 até 100
# de 1 a 20, imprima pequeno
# de 21 a 40, imprima médio
# de 41 a 99, imprima grande
# no 100 imprima até que enfim!
# se for minha idade imprima HAHA!!

minha_idade <- 25

for (i in 1:100) {
  if (i <= 20){
    print("Pequeno")    
  }
  if (i > 20 & i <= 40) {
    print("Médio")
  }
  if (i > 40 & i <= 99){
    print("Grande")
  }
  if (i == 100) {
    print("Até que enfim!")
  }
  if (i == minha_idade){
    print("HAHA!!")
  }
}  


# com WHILE

rato <- 0

while (rato <= 100) {
  rato = rato + 1
  if(rato == minha_idade){
    print("HAHA! Ta ficando velho, meu chapa")
  }
  else{
    if(rato <= 20){
      print(paste('o número', rato, 'é pequeno.'))
    }
    if(rato > 20 & rato <= 40) {
      print(paste('o número', rato, 'é médio'))    
    }
    if(rato > 40 & rato <= 99){
      print(paste('o número', rato, 'é grande'))
    }
    if(rato == 100){
      print('Cansei')
    }
  }
}



# escrever uma função que gera uma matriz com número aleatórios e você vai passar o tamanho
# da matriz que você quer. OBs.: para gerar números aleatórios com distribuição normal usar
# rnorm(tamanho_do_vetor)


gera_matriz <- function (nlinhas, ncolunas){
  mat = matrix(nrow = nlinhas, ncol = ncolunas,
               data = rnorm(nlinhas*ncolunas))
  return(mat)
}

gera_matriz(4, 4)
gera_matriz(2, 3)

## Escreva uma função que calcule a média e a mediana
## de um vetor.
## Atenção, não pode usar as funções do R


mdn_md <- function(x, na.rm = T) {
  if (na.rm == T) {
    x = na.omit(x)
  }
  md <- sum(x)/length(x)
  x = sort(x)
  
  # Se o n for ímpar
  if (length(x) %% 2 != 0) {
    mdn <- x[(length(x) %/% 2) + 1]
  }
  # Se o n for par
  if (length(x) %% 2 == 0) {
    mdn <- (x[length(x)/2] + x[(length(x)/2)+1]) / 2
  }
  return(data.frame(media = md, mediana = mdn))
}































