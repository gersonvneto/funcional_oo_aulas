##### Funcional e orientada a objetos
# Aula 2
# Gerson Vasconcelos

########
## Revisão da aula passada

class(1)
class(1L)
class("1")

x <- c(5,4,7,4,2)
print(x)

nome = "Gerson"
sobrenome = "Neto"

paste(nome, sobrenome, sep ="|") #Junta characters
paste0(nome, sobrenome)  ## Junta characters sem separador

1:10

seq(from = 1, to = 10, by =0.5)
req(1:3, each = 5)

#############

# Matrizes (ps.: utiliza apenas 1 classe)

matrix(data = 1:16, nrow = 4, ncol = 4) ## cria uma matriz 4x4

## Obs.: Por default o comando matrix monta matrizes alocando os dados por coluna

A <- matrix(data = 1:16, nrow = 4, ncol = 4, byrow = T) ## matriz alocando os dados por linha

A
class(A)

########

# Subsetting

x

x[2]  ## Extrair o elemento do vetor que está na segunda posição

## Para subsetting com estruturas de 2 dimensões (matriz, banco de dados)
# OBJETO [linha, coluna]

A[2,3]

# Extraia o elemento linha 4, coluna 2

A[4,2]

##

B <- matrix(data = rep(1:4, each = 4), nrow = 4, ncol = 4, byrow = T)

## ou

C <- matrix (data = 1:4, ncol = 4, nrow = 4)

##########
## Banco de Dados
# Data Frame

bd = data.frame(nome = c("Edésio", "Gerson",            ### é possivel quebrar a linha do argu-
                         "Adelvan", "Fabiano"),        ## mento para uma melhor visualização
                idade = c(24L, 25L, 23L, 28L),
                curso = c("CD", "CD", "CD", "BInf"),
                stringsAsFactors = F)

bd



## Examinando o Banco de Dados

class(bd)
dim(bd)  ## mostra tamanho do banco
nrow(bd)  ## quantas linhas
ncol(bd)   ## quantas colunas
str(bd)  ## estrutura do banco de dados


## OBS.: Factors são variáveis categóricas, ou seja, são variáveis divididas em 
## categorias ex.: cor/raça, curso, sexo. Ainda podem ser categóricas nominas em
## que não há relações entre elas (ex.: raça) e categóricas ordenadas (ex.: escolaridade)


## Adicionando linhas ou colunas em um banco de dados

times <- c("Barça","Sport", "Real Madrid", "PSG")

bd = cbind(bd, times)  ## Adiciona uma coluna ao final das colunas do data frame

bd

bd = rbind(bd, data.frame(nome = "Neylson",idade = 28L, curso = "CD", times = "Atlético"))
                      ## Adicionamos uma linha ao final das linha do data frame
bd



