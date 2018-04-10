##################
# Funcional e OO
# Prof. Neylson
# Aula 11
# Gerson de Morais Vasconcelos Neto
#######

### Revisão R
library("readr")
library("descr")
library("dplyr")
enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

## Questão 3 da atividade 3 pelo DPLYR

enade14$est_civil1 <- enade14$qe_i1

# mutate cria uma variável
# filter filtra os casos no BD

enade14.2 <- enade14 %>% mutate(est_civil = qe_i1) %>% 
  filter(est_civil == "a" | est_civil == "b")

freq(enade14.2$est_civil, plot = F)

## Questão 1 da atividade 5

i = 1
while (i < 101) {
  x = i + sqrt(exp(i))
  y = x/mean(1:100)
  print(y)
  i = i + 1
}


###############










