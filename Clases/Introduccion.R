# Marco Aurelio González Tagle
# Matrícula: 12345678
# Tema: Introducción
# 29/07/2016


# Operaciones básicas -----------------------------------------------------


n <- 10
n
n + n 

n * n + 5

sqrt(n)

# Operaciones con más detalles ---------------------------------------------

DBH <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 
         7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 
         11.5, 14.3, 17.2, 16.8)

# Determinar G ------------------------------------------------------------


# Área basal de los 30 pinos
G <- 0.7854 * (DBH/100)^2
G

# Área basal por parcela
g.1000 <- sum(G)

# Área basal por hectárea
g.ha <- g.1000*10


# Importar Datos ----------------------------------------------------------

parcela.1 <- read.csv("datos/dbh_2012.csv", header=TRUE)
head(parcela.1)


# Estadísticas básicas ----------------------------------------------------

mean(parcela.1$DBH)
sd(parcela.1$DBH)
var(parcela.1$DBH)
median(parcela.1$DBH)



# Selección Restricciones -------------------------------------------------

# ¿Cuántos individuos son menores a la media?
sum(parcela.1$DBH < mean(parcela.1$DBH))

# ¿Cuántos individuos son mayores a la media?
sum(parcela.1$DBH > mean(parcela.1$DBH))

# ¿Cuántos individuos son iguales a la media?
sum(parcela.1$DBH == mean(parcela.1$DBH))

# ¿Cuántos individuos no son iguales a la media?
sum(parcela.1$DBH != mean(parcela.1$DBH))

# ¿Cuántos individuos  menores o iguales a la media?
sum(parcela.1$DBH <= mean(parcela.1$DBH))

# ¿Cuántos individuos  mayores o iguales a la media?
sum(parcela.1$DBH >= mean(parcela.1$DBH))

media.dbh <- mean(parcela.1$DBH)
# Crear submuestras -------------------------------------------------------

dbh.menores <- subset(parcela.1, DBH <= media.dbh)



# Gráficas ----------------------------------------------------------------

# Gráfica de histograma con todos los diánetros
hist(parcela.1$DBH, col="red", xlab="Diámetro (cm)",
     ylab="Frecuencia", main="Parcela 1")

# Gráfica de histograma con diametros menores a la media

hist(dbh.menores$DBH, col="red", xlab="Diámetro (cm)",
     ylab="Frecuencia", main="Parcela menores")

# Boxplot de los diametros de la parcela 1
boxplot(parcela.1$DBH, col="green", xlab="Parcela 1", 
        ylab="Diámetro")
