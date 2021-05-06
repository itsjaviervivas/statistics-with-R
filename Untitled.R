##primeros pasos##
n=1
N=1000
X=runif(n)
hist(X)
mean(X)


##Conceptos fuertes##
n=1
N=1000
PRO=NULL

for(i in 1:N){
  temp =  runif(n)
  X_bar=mean(temp)
  PRO=c(PRO, X_bar)
}

hist(PRO,main = "10 Mil repeticiones tamaño 1")

##Conceptos fuertes y simulaciones grandes##
n1=1
n2=5
n3=50
n4=5000

N=10000
PRO1=NULL
PRO2=NULL
PRO3=NULL
PRO4=NULL

for(i in 1:N){
  temp1 =  runif(n1)
  temp2 =  runif(n2)
  temp3 =  runif(n3)
  temp4 =  runif(n4)
  X_bar1=mean(temp1)
  X_bar2=mean(temp2)
  X_bar3=mean(temp3)
  X_bar4=mean(temp4)
  PRO1=c(PRO1, X_bar1)
  PRO2=c(PRO2, X_bar2)
  PRO3=c(PRO3, X_bar3)
  PRO4=c(PRO4, X_bar4)
}

par(mfrow=c(2,2))
hist(PRO1,main = "10 Mil repeticiones tamaño 1")
hist(PRO2,main = "10 Mil repeticiones tamaño 50")
hist(PRO3,main = "10 Mil repeticiones tamaño 50")
hist(PRO4,main = "10 Mil repeticiones tamaño 50000")


par(mfrow=c(2,2))
hist(PRO1,main = "10 Mil repeticiones tamaño 1",freq = F)
lines(density(PRO1),col="blue")
hist(PRO2,main = "10 Mil repeticiones tamaño 50",freq = F)
line