#instalar la libreria fdth 
install.packages("fdth")

#Importando las librerias
library(ggplot2)
library(scales)
library(fdth)

#Llamando a la base de datos
data("iris")
View(iris)

#Crear el histograma con la base de datos
ggplot(iris, aes(x=Sepal.Length)) + geom_histogram()