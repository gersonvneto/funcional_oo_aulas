# Funcional e orientado a objetos
# Aula 4
# Gerson Vasconcelos Neto

#########

# Conhecendo um Banco de Dados

data(iris) # Puxando o Iris Database

dim(iris) # Verificando o tamanho do BD

sapply(iris, class) # Retorna as classes das variáveis

names(iris) # Verifica os nomes das variáveis

str(iris) # Verifica a estrutura do BD

View(iris[1:10,]) # Exibe as dez primeiras linhas do BD em 
                  # uma nova janela

#############
# Investigar Sepal.Length

mean(iris$Sepal.Length) # Retorna a média

median(iris$Sepal.Length) # Retorna a mediana

min(iris$Sepal.Length) # Retorna o mínimo

max(iris$Sepal.Length) # Retorna o máximo

quantile(iris$Sepal.Length) # Retorna os quartis

var(iris$Sepal.Length) # Retorna a variância

sd(iris$Sepal.Length) # Retorna o desvio padrão

sqrt(var(iris$Sepal.Length)) # SD na marra

summary(iris$Sepal.Length) # Calcula estatísticas descritivas

head(iris) # Mostra os primeiros casos
tail(iris) # Mostra os últimos casos

###########
# Estudando uma variável categórica

summary(iris$Species) # Retorna uma tabela de quantos casos para cada
                      # categoria


###########
# Estatísticas descritivas com o pacote DESCR

# Instalando o pacote (só a 1 vez)

install.packages("descr")

# Carregando o pacote (todas as vezes que for usar)

library(descr)

freq(iris$Species) # Retorna uma tabela de frequências e plota um gráfico

#########

# Estatísticas descritivas das outras variáveis do IRIS

mean(iris$Sepal.Width) # Retorna a média

median(iris$Sepal.Width) # Retorna a mediana

min(iris$Sepal.Width) # Retorna o mínimo

max(iris$Sepal.Width) # Retorna o máximo

quantile(iris$Sepal.Width) # Retorna os quartis

var(iris$Sepal.Width) # Retorna a variância

sd(iris$Sepal.Width) # Retorna a Standart Deviation


###############
# Visualização dos dados

hist(iris$Sepal.Length) # Plota um gráfico de histograma de frequências

boxplot(iris$Sepal.Length) # Plota um gráfico boxplot






































