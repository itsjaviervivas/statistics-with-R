#Intervalo de Confianza
#Punto 3-----
p <- 0.25
n <- 400
std_error <- sqrt(p*(1-p)/n)
alpha <- 0.05
z <- qnorm(1-alpha/2)
ll <- p - z*std_error
ul <- p + z*std_error
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")

#Punto 4 ----
d <- 60-66 # y1 - y2
alpha <- 1 - 0.99 # 1 - confidence coefficient
sigma1 <- 19  # standar deviations
sigma2 <- 16
n1 <- 20      # sample size
n2 <- 25
z <- qnorm(1-alpha/2)
Margin_Error <- z*sqrt((sigma1^2/n1)+(sigma2^2/n2)) # Formula
ll <- d - Margin_Error # Lower limit
ul <- d + Margin_Error # upper limit
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")
#Punto 7------
n <- 600
sd <- 175           
y <- 649 
alpha <- 0.05

ll <- y-qnorm(1-alpha/2) * sd /sqrt(n)
ul <- y+qnorm(1-alpha/2) * sd /sqrt(n)
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")


#Punto 8----
#Creamos el vector de los datos

x<-c(7.0, 3.2, 1.4, 5.4, 8.5, 2.5, 2.5, 1.9, 5.4, 1.6, 1.0, 2.1, 8.5, 4.3, 6.2, 
     1.5, 1.2, 2.7, 3.8, 2.0, 1.2, 2.6, 4.0, 2.6,0.6)
#Calculamos la media
mean(x)

#Punto 8----
#Creamos el vector de los datos

x<-c(7.0, 3.2, 1.4, 5.4, 8.5, 2.5, 2.5, 1.9, 5.4, 1.6, 1.0, 2.1, 8.5, 4.3, 6.2, 
     1.5, 1.2, 2.7, 3.8, 2.0, 1.2, 2.6, 4.0, 2.6,0.6)
#Calculamos la media
y<-mean(x) #Media

n <- 20
sd(x) #Desviación estandar
alpha <- 0.05

ll <- y-qnorm(1-alpha/2) * sd /sqrt(n)
ul <- y+qnorm(1-alpha/2) * sd /sqrt(n)
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")


#Punto 9----
p <- 10/55
n <- 55
std_error <- sqrt(p*(1-p)/n)
alpha <- 0.1
z <- qnorm(1-alpha/2)
z
ll <- p - z*std_error
ul <- p + z*std_error
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")


#Punto 10 (Diferenica de proporciones)----
n1 <- 250 # sample size 1
p1 <- 80/n1 # first proportion
n2 <- 175 # sample size 2
p2 <- 40/n2 # second proportion
d <- p1-p2  # estimated difference
alpha <- 1-0.90  # alpha = 2%
z<- qnorm(1-alpha/2)
z
Margin_Error <- z*sqrt( p1*(1-p1)/n1  +  p2*(1-p2)/n2 )
ll <- d - Margin_Error
ul <- d + Margin_Error
cat((1-alpha)*100,"% CI: (", round(ll, 3), ", ", round(ul, 3), ")")

#Punto 16------
#Para hallar los valores de z sin necesidad de ver la tabla
z<-pnorm(-2.5298)
z
z<-pnorm(0.01)
z


