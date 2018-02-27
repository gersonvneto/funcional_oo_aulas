# Funcional e orientada a objetos
# Ciência de dados / Bioinformática

######

# Operações matemáticas

5 + 5   # adição
4 * 4
5 - 7
12 / 4
4^2
10 / 3
10 %% 3  # Resto da divisão
sqrt (25)  # Raíz quadrada
64 ^ (1/3) # Raíz cubica na mão

######

# Objetos

x <- 5  # Atribuir 5 para x
y <- 10

x + y
x / y

y <- 9
y

x / y

#######

# Trabalhando com vetores
ls()   ## listar os objetos
rm (x, y)  # remover atribuições dos objetos

x <- c(5, 12, 39, 22, 25) # atribuir vetor à um objeto
x
y <- c(67, 13, 43, 34, 20)
y


x + y  # soma dos vetores
x - y # subtração dos vetores


#########
x
class(x) 

# Criando vetor de números inteiros **inteiros são importantes porque não considera casas decimais(gasta menos memória)
inteiros <- c(12L, 15L, 20L, 34L, 45L)

class(inteiros)

x_inteiro = as.integer(x) ## mudar classe para inteiro
x
x_inteiro
class(x)
class(x_inteiro)

novo_numerico = as.numeric(inteiros) ## mudar classe para numeric
inteiros
novo_numerico
class(inteiros)
class(novo_numerico)

####

# Trabalhando com STRING / CARACTER

prenome = "Neylson"
sobrenome = "Crepalde"
nome1 = "João"
nome2 = "Batista"
nome3 = "Filho"


paste(prenome, sobrenome)
paste(prenome, sobrenome, sep = "/")  ## função sep na paste atribui o separador

paste(prenome, nome1, nome2, nome3, sobrenome)
paste(prenome, nome1, nome2, nome3, sobrenome, sep = "-")

paste0("bo", "ra")  ##junta as strings

########


# Vetores Lógicos

logicos = c(TRUE, FALSE, TRUE, FALSE)
logicos
logicos2 = c(T, T, F, F)
logicos2

is.numeric(logicos)  ## o vetor logicos é numeric ??
is.logical(logicos) ## o vetor logicos é lógico ??

5 > 3
5 < 3
5 == 6
5 != 6
5 >= 3

#######

# Sequências no R

1:10
sequencia = 1:100
sequencia

seq(from = 10, to = 20)   ## sequencia de 10 a 20
seq(from = 10, to = 20, by = 2) ## sequencia de 10 a 20, de 2 em 2
seq(from = 10, to = 20, length.out = 15)  ## sequencia de 10 a 20 com 15 elementos 

rep(1:3, times = 10) ## sequencia de 1 a 3, 10x a sequencia
rep(1:3, each = 10) ## sequencia de 1 a 3 com cada numero repetido 10x















