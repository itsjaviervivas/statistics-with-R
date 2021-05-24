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
gl=numm/denm
gl




#Pruena t-student