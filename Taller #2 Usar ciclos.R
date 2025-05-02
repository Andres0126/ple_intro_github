#Ejercici? 1. Un código que multiplique dos vectores punto a punto 
#y sume los resultados. 

#Usando ciclo for

a <- c(3,24,1) 
b <- c(43,5,10)
m <- a*b
for (var in m){
  n <- m[1]+m[2]+m[3]
}
print (n)

#Usando ciclo while

a <- c(3,24,1) 
b <- c(43,5,10)

resultado <- 0
i <- 1

while (i <= length(a)) {
  resultado <- resultado + a[i] * b[i]
  i <- i + 1
}

print(resultado)

#Ejercicio 2. Un código que calcule el máximo de un vector.

#Usando ciclo for

a <- c(3,24,1,100,43,254,30,50) 

max <- a[1]

for (numero in a){
  if (numero > max){
    max <- numero
  }
}
print(paste("El número máximo es:", max))

#Usando ciclo while 

a <- c(3,24,1,100,43,254,30,50)

maximo <- a[1]

i <- 2

while (i <= length(a)) {
  if (a[i] > maximo) {
    maximo <- a[i]
  }
  i <- i + 1
}

print(maximo)

#Crear un codigo que orde un vector de menor a mayor.

#Usando ciclo for

a <- c(3,24,1,100,43,254,30,50)

n <- length(a) 

for (i in 1:(n-1)) { 
  for (j in 1:(n - i)) { 
    if (a[j] > a[j + 1]) { 
      temp <- a[j] 
      a[j] <- a[j + 1]
      a[j + 1] <- temp
    }
  }
}

print(a)

#Usandi ciclo while 

a <- c(3,24,1,100,43,254,30,50)

n <- length(a)
cambio <- TRUE

while (cambio==TRUE) {
  cambio <- FALSE  
  i <- 1
  while (i < n) {
    if (a[i] > a[i + 1]) {
      temp <- a[i]
      a[i] <- a[i + 1]
      a[i + 1] <- temp
      cambio <- TRUE
    }
    i <- i + 1
  }
}
print(a)