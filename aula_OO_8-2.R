###############
# Funcional e OO
# Aula 08-2
# Prof. Neylson Crepalde
# Gerson M. Vasconcelos Neto
###########

#### AUTOMATIZAÇÃO

## Loops

print(1)
print("Neylson")

# Exibir números de 1 a 100
# Loop for

# sintaxe:
# for (contador in conjunto) {
#   execute a ação
# }

for (i in 1:100) {
  print(i)
}

# somar 2

for (i in 1:100) {
  print(i+2)
}

# somar 2, elevar ao quadrado e dividir por 3

for (i in 1:100) {
  x = i+2
  y = x^2
  z = y/3
  print(z)
}

# Loop if, sintaxe:
# if (condição) {
#  execute
# } else {
#  execute isso
# }


for (i in 1:20) {
  if (i <= 10) {
    print("Pequeno")
  } else {
    print("Grande")
  }
}

# mais de um if

for (i in 1:30) {
  if(i <= 10) {
    print("Pequeno")
  }
  if(i > 10 & i <= 20) {
    print("Médio")
  }
  if(i > 20) {
    print("Grande")
  }
}

# condições dentro do vetor

vetor <- c(15, 4, 89, 33, 18, 14, 1, 2, 20, 21, 19)
vetor_ord <- sort(vetor, decreasing = F) # ordenando os números
                    
for (i in vetor_ord) {
  if(i <= 10) {
    print("Pequeno")
  }
  if(i > 10 & i <= 20) {
    print("Médio")
  }
  if(i > 20) {
    print("Grande")
  }
}


# subsetting

vetor[5] # quinta posição do vetor

x = 4

vetor[x]

# Fazendo a sequência de Fibonnacci usando um loop for até o elemento 50º
















