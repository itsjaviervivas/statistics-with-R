library(ggplot2)

Microestablecimientos_2016
encuesta <- Microestablecimientos_2016

# Los diagramas de disperción se van a enfocar en las siguientes variables
# P958: Según su contabilidad, ¿Cuál fue el valor total de las ventas o ingresos del establecimiento en el mes anterior? 1000 a 330.000.000 
# P1023: Según su contabilidad, ¿Cuál fue elvalor total de las ventas o ingresos del establecimiento en los últimos 12 meses? 10.000 a 5.000.000.000, o 99 

ggplot(encuesta, aes(x=P958, y=P1010)) + geom_point(size = 1.3)

#Clasificaremos según la ciudad. Con la siguiente variable: CDGO_DPRTMNTO

encuesta[, c("P958", "P1010", "CDGO_DPRTMNTO")]

ggplot(encuesta, aes(x=P958, y=P1010, shape=CDGO_DPRTMNTO)) + geom_point(size = 1.3)

#Colores y demás
ggplot(encuesta, aes(x=P958, y=P1010), color) + geom_point(size = 1.3) + scale_shape_manual(values=c(1,2)) + scale_colour_brewer(palette="Set1")

#Regresión lineal
ggplot(encuesta, aes(x=P958, y=P1010), color) + geom_point(size = 1.3) + scale_shape_manual(values=c(1,2)) + scale_colour_brewer(palette="Set1") + stat_smooth(method=lm)


