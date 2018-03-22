###############
# Funcional e OO
# Aula 08-2
# Prof. Neylson Crepalde
# Gerson M. Vasconcelos Neto
###########

# Puxando o banco de dados da amostra do Enade 2014 e carregando os pacotes
library("readr")
library("dplyr")
library("descr")
enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

# Tirando a média e o desvio padrão da idade de todos os alunos

mean(enade14$nu_idade)
sd(enade14$nu_idade)

# Mostrando a distribuição de homens e mulheres entre esses alunos

freq(enade14$tp_sexo)

enade14$sexo <- enade14$tp_sexo
enade14$sexo[enade14$sexo == "N"] <- NA  # tirando o sexo "N"

freq(enade14$sexo)

# Mostrando a distribuição de cor/raça entre os alunos

freq(enade14$qe_i2)

# Colocando labels adequados para a cor/raça

enade14$cor_raca <- enade14$qe_i2
enade14$cor_raca[enade14$cor_raca == "a"] <- "Branco"
enade14$cor_raca[enade14$cor_raca == "b"] <- "Negro"
enade14$cor_raca[enade14$cor_raca == "c"] <- "Pardo"
enade14$cor_raca[enade14$cor_raca == "d"] <- "Amarelo"
enade14$cor_raca[enade14$cor_raca == "e"] <- "Indígena"

freq(enade14$cor_raca) ## como não está como factor ele me retorna em ordem alfabética e
                       ## não na ordem que estava

# Fazer uma tabela cruzada entre cor/raça e sexo

cor_sexo <- table(enade14$cor_raca, enade14$sexo)
cor_sexo

# Cruzar cor/raca com a escolaridade da mãe

cor_mae <- table(enade14$cor_raca, enade14$qe_i5)
cor_mae

###############











