##############################
## Quest?o 1: Fa?a o c?digo abaixo funcionar corretamente
##############################

#################################
# data
iris_data <- iris[,1:4]
iris_data

#################################
# histograma
hist(iris_data$Petal.Length)

# qqplot
qqnorm(iris_data$Petal.Length, pch = 1, frame = FALSE)
qqline(iris_data$Petal.Length, col = "steelblue", lwd = 2)

## shapiro test 
resultado_shapiro = shapiro.test(iris_data$Petal.Length)

## Explore a variavel "resultado_shapiro" e substitua o "??" pela variavel referente ao p-value
p_valor = resultado_shapiro$p.value

# p-value ? maior que 0.05?
p_valor > 0.05

#################################
# histograma
hist(iris_data$Petal.Width)

# qqplot
qqnorm(iris_data$Petal.Width, pch = 1, frame = FALSE)
qqline(iris_data$Petal.Width, col = "steelblue", lwd = 2)

## shapiro test 
resultado_shapiro = shapiro.test(iris_data$Petal.Width)

## Explore a variavel "resultado_shapiro" e substitua o "??" pela variavel referente ao p-value
p_valor = resultado_shapiro$p.value
  
# p-value ? maior que 0.05?
p_valor > 0.05



##############################
## Quest?o 2: Leia com aten??o e fa?a o que foi pedido
##############################

# Fa?a uma fun??o chamada "buscador" que recebe duas v?riaveis, uma chamada "frases"
#  e a outra chamada de "palavra". A variavel "frases" ? uma lista com v?rias sequencias
# de strings. A Fun??o "buscador" deve verificar se a variavel "palavra" est? presente em cada 
# uma das strings da varivel "frases". Ao final, a fun??o deve retormar uma lista dentro da variavel 
# "resultado" que contem apenas as strings no qual a variavel "palavra" foi encontrada. Por exemplo:

# Se temos os seguintes conteudos paras as variaveis
# frases = c("O ITV esta realizando um processo seletivo", 
#           "O ITV ? referencia em v?rios estudos",
#            "Processo avaliativo de modelos precisa ser feito com cautela")

# palavra = "processo"


# A variavel "resultado" deve retornar o seguinte: c("O ITV esta realizando um processo seletivo",
# "Processo avaliativo de modelos precisa ser feito com cautela")



# Fa?a conforme foi pedido:
frases = c("O ITV esta realizando um processo seletivo", 
           "O itv ? referencia em v?rios estudos",
           "R e python s?o linguagens poderoras",
           "No ITV existe uma grande variedade de projetos")

palavra = "itv"

buscador = function(frases, palavra){
  return(frases[grep(palavra, frases, ignore.case = TRUE)])
}

resultado = buscador(frases, palavra)
resultado
  





