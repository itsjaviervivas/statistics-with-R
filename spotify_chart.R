#Cargamos las librerias
install.packages("stats")
library(ggplot2)
library(scales)
library(fdth)

#Cargamos la base de datos
regional_global_daily_2020_12_11
spotify_charts <- regional_global_daily_2020_12_11
ggplot(spotify_charts, aes(x=X1))+geom_histogram()
