######
# Funcional e OO
# Aula 07
# Prof. Neylson Crepalde
# Gerson Vasconcelos Neto
######

## Instalando os pacotes
#install.packages("descr")
#install.packages("readr")
#install.packages("dplyr")

# Carregando os pacotes

library(readr)
library(dplyr)
library(descr)

# Lendo a amostra do Enade

enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

ls() # listando os objetos no meu ambiente

# Investigando o banco de dados

dim(enade14) # Dimensões do banco
names(enade14) # Nomes das variáveis
nrow(enade14) # Número de linhas
ncol(enade14) # Número de colunas

#########
# Vamos analisar:
# Nota geral dos alunos
# Sexo
# Cor/raça
# Idade
# Escolaridade da mãe
# Renda
######

## Nota geral dos alunos - nt_ger

head(enade14$nt_ger)
tail(enade14$nt_ger)
class(enade14$nt_ger)

# Estatísticas descritivas

summary(enade14$nt_ger)
mean(enade14$nt_ger, na.rm = T) # devolve a média. Segundo argumento é para
                                # desconsiderar as NAs.

# Histograma

hist(enade14$nt_ger, 
     col = "green",
     main = "Histograma da nota geral")

# Boxplot

boxplot(enade14$nt_ger)

##########
# Idade  - nu_idade

summary(enade14$nu_idade)
var(enade14$nu_idade)
sd(enade14$nu_idade)
hist(enade14$nu_idade,
     col = "blue",
     main = "Idade")

###########
# Sexo - tp_sexo

freq(enade14$tp_sexo) 

# Limpando a variável sexo
enade14$tp_sexo[enade14$tp_sexo == "N"] <- NA # Transformando as variáveis N em NA

freq(enade14$tp_sexo) 

#########
# Cor/raça - qe_i2

freq(enade14$qe_i2)

# Renda - qe_i8

freq(enade14$qe_i8)

# Escolaridade da mãe - qe_i5

freq(enade14$qe_i5)

########### Algumas análises
# Rodando um teste de médias (t de Student)
# Muito cuidado! o test T só funciona para 2 médias
t.test(enade14$nt_ger ~ enade14$tp_sexo)


# Criando a variável dummy branco

enade14$branco <- ifelse(enade14$qe_i2 == "a", 1, 0) 
                           # 3 paramentros: condicao, se sim (que valor recebe),
                           # se nao ( que valor recebe)

# Testando
t.test(enade14$nt_ger ~ enade14$branco)











