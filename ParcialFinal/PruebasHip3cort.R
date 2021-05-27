#Verificar si las varianzas desconocidas son iguales o diferentes --------

n1 <- 20
n2 <- 20
x1 <- 28
x2 <- 67
s1 <- 22^2
s2 <- 20^2
alpha <- 0.1
ll <- (s1/s2)*qf(p = alpha / 2, df1 = n1 - 1, df2 = n2 - 1, lower.tail = TRUE)
ul <- (s1/s2)*qf(p = alpha / 2, df1 = n1 - 1, df2 = n2 - 1, lower.tail = FALSE)
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")
#Si contiene este intervalo al 1, entonces son varianzas iguales



###################
#Prueba media poblacional: muestra pequeña con varianza desconocida------
#Estadistico de prueba -----
x=2
mui=2
sd=3
n=9

#Numerador
numdp=x-mui
numdp

#Denominador
denmdp=sd/sqrt(n)
denmdp

#Estadistico

est=numdp/denmdp



###################
#Prueba con respecto a diferencia dos medias con varianzas conocidad------
n1=1 #Tamaño muesrtras
n2=2
x1=1 #Medias
x2=3
m1=3 #Medias (a probar)
m2=3
sd1=1 #desviación
sd2=4

#Estadístico

#numerador
numzc =(x1-x2)-(m1-m2)
numzc

#Denominador
denmzc = sqrt((sd1^2/n1)+(sd2^2/n2))
denmzc

#Estadistico
estzc=numzc/denmzc



###################
#Pruebas con respecto a diferencia entre dos proporciones----
x1=1 #casos de exito
x2=3
n1=1 #Tamaño muesrtras
n2=2
p1=x1/p1#Poblaciones (a probar)
p2=x2/p2


#P y Q gorrito
p=(x1-x2)/(n1-n2)
p
q=1-p
q

#Estadístico

#numerador
numzc =(x1-x2)-(p1-p2)
numzc

#Denominador
denmzc = sqrt(p*q*(1/n1)+(1/n2))
denmzc

#Estadistico
estzc=numzc/denmzc


###################
#Pruena t-student cuando son varianzas iguales y desconocidas (n<30) ###################
#Varianza ponderada----
n1=1 #Tamaño muesrtras
n2=2
x1=1 #Medias
x2=3
m1=3 #Medias (a probar)
m2=3
sd1=1 #desviación
sd2=4

#Numerador:
nummi=(n1-1)*s1^2+(n2-1)*s2^2
#Denominador y gl
glvi=n1+n2-2
glvi

varp=nummi/glvi
varp


#Estadistico-----
n1=1 #Tamaño muesrtras
n2=2
x1=1 #Medias
x2=3
m1=3 #Medias (a probar)
m2=3
sd1=1 #desviación
sd2=4

#Denominador
denmvi=(x1-x2)-(m1-m2)
denmvi
#Numerador
numvi=sqrt(varp*((1/n1)+(1/n2)))
numvi

#Estadistico
estvi=denmvi/numvi
estvi

#Valor critico (con nivel de ignificancia del 5%)
qt(0.025, df=glvi) #Funciona, no tocar 

#Si qt y -qt caen dentro del estadistico de prueba no se rechaza la hipotesis nula



#########################################
#Pruena t-student cuando son varianzas distintas y desconocidas (n<30) ###################
#Grados de libertad - Valor crítico ----
#Para calcular los grados de libertad cuando es un tstudent y son distintas varianzas
#y desconocidas

#Tamaño de la muestra
n1=16
n2=12
#Desviaciones
s1=7
s2=5.2

#Numerador
numm=(((s1^2/n1)+(s2^2/n2))^2)
numm
#Denominador
denm=(((s1^2/n1)^2/(n1-1))+((s2^2/n2)^2)/(n2-1))
denm

#Completo
glvd=numm/denm
glvd




#Estadistico ----
n1=16 #Tamaño de la muestra
n2=12
x1=22.6 #Medias 
x2=18.2
s1=7 #desviaciones
s2=5.2
u1=0 #las mui (Medias)
u2=0

#Numerador
numest=(x1-x2)-(u1-u2)
numest
#denominador 
denmest=sqrt((s1^2/n1)+(s2^2/n2))
denmest

#Estadístico
estt=numest/denmest
estt

#Valor critico (con nivel de ignificancia del 5%)
qt(0.025, df=glvd) #Funciona, no tocar 

#Si qt y -qt caen dentro del estadistico de prueba no se rechaza la hipotesis nula



###################
