#Ejercicio de la cerveza----
#Creamos el vector de los datos
hombre<-c(20, 40, 20)
mujer<-c(30, 30, 10)

#Creación de la tabla
tabla=rbind(c(20, 40, 20),c(30, 30, 10))


chisq.test(tabla)

#Prueba de bondad ----
consumidores<-200
pA<- 0.3
pB<- 0.5
pC<- 0.2

#Creamos el vector de probabilidades
p1<-c(0.3, 0.5, 0.2)
#creamos la tabla con el resumen
tabla2=rbind(c(48, 98, 54))

#Igualar el vector de probabilidades en los argumentos de la función
chisq.test(tabla2, p=p1)

