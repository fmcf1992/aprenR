library(readxl)
#importamos data
Lucy_Orden_copia <- read_excel("C:/Users/Francis/Downloads/Lucy_Orden - copia.xlsx")
#View(Lucy_Orden_copia)

#declaramos Variables
promedio        <- mean(Lucy_Orden_copia$Income)
N               <- length(Lucy_Orden_copia$ID)
presicion       <- 20
nivel_confianza <- 0.95
valor_z         <- qnorm(nivel_confianza+0.5*(1-0.95))
d               <- (presicion/valor_z)^2
varianzaPobl    <- var(Lucy_Orden_copia$Income)
summary(Lucy_Orden_copia)
hist(Lucy_Orden_copia$Income)

cat("Muestra\n")

# Seleccionar 30 edades al azar sin repeticiones
indices_Selec   <- sample(Lucy_Orden_copia$Caso,30,replace = FALSE)
muestraAle      <- Lucy_Orden_copia[indices_Selec,]
print(muestraAle$Income)
varianzaMues    <- var(muestraAle$Income)
View(muestraAle)
summary(muestraAle)
hist(muestraAle$Income)