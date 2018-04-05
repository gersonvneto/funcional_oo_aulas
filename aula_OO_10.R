##################
# Funcional e OO
# Prof. Neylson
# Aula 10
# Gerson de Morais Vasconcelos Neto
#######

## Funções
# Instalando os pacotes necessários
install.packages(c("readr","dplyr","descr"))

# Carregando
library(readr)
library(dplyr)
library(descr)

enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")


#  objeto <- function (x) {
#  
#
#
#

# função média

minha_media <- function(x){
  med = sum(x) / length(x)
  return(med)
}

minha_media(iris$Sepal.Length)
minha_media(enade14$nt_ger) # deu errado por ter NAs

# Ajeitando

minha_media <- function(x, na.remover = F){ ## dentro do function () são os parâmetros 
  if (na.remover == T){                      ## que a função aceita
    x = x[!is.na(x)]   ## vai fazer um subsetting dos x que não são NA
  }
  med = sum(x) / length(x)
  return(med)
}

# minha_media(enade14$nt_ger)   vai dar errado
# minha_media(enade14$nt_ger, na.rm = F)  vai dar errado

minha_media(enade14$nt_ger, na.remover = T)


## Programar parâmetro de padronizar (dividir a variável pelo desvio padrão)

minha_media <- function(x, na.remover = F, std = F){ 
  if (na.remover == T){                      
    x = x[!is.na(x)]   
  }
  if (std == T) {
    x = x/sd(x)
  }
  med = sum(x) / length(x)
  return(med)
}

# Obs.: Padronizar é importante para comparar variáveis de diferentes ordens
# de grandeza

minha_media(enade14$nt_ger, na.remover = T, std = T)
minha_media(iris$Sepal.Length, std = T)

## Para variável categórica 


minha_media <- function(x, na.remover = F, std = F){ 
  if(class(x) == "integer" | 
     class(x) == "numeric") {
  if (na.remover == T){                      
      x = x[!is.na(x)]   
    }
  if (std == T) {
      x = x/sd(x)
    }
    med = sum(x) / length(x)
    return(med) 
  }                                                
  else {
    stop("Object is not an integer or a numeric.")  
  }
}

# Obs.: break para loop e stop para função
minha_media(enade14$nt_ger, na.remover = T)
class(enade14$nt_ger)
minha_media(enade14$qe_i2)


## sapply 
# sapply retorna a classe mais simples possível e o lapply retorna uma lista
x <- sapply(iris[1:4], minha_media, std = T)
class(x)

y <- lapply(iris[1:4], minha_media, std = T)
class(y)

## seleção de variaveis do Enade

selecao <- enade14 %>% select(nu_idade,
                              nt_fg, nt_ce,
                              nt_ger)

resposta <- sapply(selecao, minha_media, na.remover = T, std = T)
resposta

## com loop agora,

resposta2 <- c()
for (i in 1:ncol(selecao)) {
  resposta2[i] = minha_media(selecao[[i]],
                             na.remover = T,
                             std = T)
}

resposta2


## benchmarking (testando o desempenho das duas soluções)
install.packages("microbenchmark")
library(microbenchmark)

resposta2 <- c()
microbenchmark(
  funcional <- sapply(selecao, minha_media, na.remover = T, std = T),
  loop <- for (i in 1:ncol(selecao)) {
    resposta2[i] = minha_media(selecao[[i]],
                               na.remover = T,
                               std = T)
  }
)











