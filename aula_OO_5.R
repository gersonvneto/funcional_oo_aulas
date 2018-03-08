# Funcional e orientada a objetos
# Aula 05
# Professor Neylson
# Gerson Vasconcelos

##################

### Retomando aula passada

data("iris") # Chamando o banco de dados nativos do R

str(iris)
names (iris) # Nome das variáveis do banco de dados

# tirando as estatísticas descritivas

summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)
summary(iris$Species)

# posso dar um summary no BD [para banco de dados com poucas
# variáveis por motivo de memória, não vale a pena ]

summary(iris)

# mostrando graficamente a concentração da variável

boxplot(iris$Petal.Length) # mediana longe da média, concentração no 1 quartil

# retornando o gráfico de barras

install.packages("descr") # instalando o pacote com funções para estatísticas descritivas
  
library(descr) # Chamando o pacote 

freq(iris$Petal.Length) # se não quiser montar o gráfico,
                        # posso usar o segundo argumento (,plot = F)

# calcular o desvio padrão para todas as variáveis do iris

sapply(iris[1:4], sd) # não pode ser feito como 
                      # sd(nome do BD) porque é um banco de dados
                      # e o desvio padrão só pode ser tirada de um número


# histograma de frequência

hist(iris$Petal.Length, col = "green", 
     main ="Meu Histograma",
     xlab = "Tamanho da Pétala",
     ylab = "Frequência") # col para cor; main para 
                          # título; xlab para nome do X; ylab para nome do Y

# Apresente de forma visual os quartis da variável Largura da Pétala
# com cor e título

boxplot(iris$Petal.Width, col = "red", main = "Histograma 2")


##################

getwd() # mostra o diretório de trabalho

dir() # lista todos os arquivos do seu diretório

install.packages("readr") # pacote para leitura de banco de dados

library("readr") # Chama o pacote

enade <- read_csv2("enade_2014_amostra.csv") # Lê o arquivo csv (o csv2 é porque está
                                             # separado por ; se fosse , era csv) 

## há uma função nativa do R read.csv mas é menos eficiente

dim(enade)
names(enade)


# nu_idade a variável idade, dê as estatísticas descritivas

summary(enade$nu_idade)
hist(enade$nu_idade, col = "lightblue")





















