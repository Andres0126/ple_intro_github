#Crear un codigo que orde un vector de menor a mayor.

# Creamos un vector
numeros <- c(42, 15, 8, 23, 4, 16)

# Obtenemos la longitud del vector
n <- length(numeros) #con "length" calculamos cu?ntos elementos hay en el vector

# Algoritmo de ordenamiento burbuja
for (i in 1:(n-1)) { #El primer bucle for que se va a repetir (n-1) veces, se encarga de hacer varias pasadas por el vector.
  for (j in 1:(n - i)) { # Segundo bucle for que recorre los elementos del vector que a?n no est?n en su lugar. En cada pasada, se va acortando porque el n?mero m?s grande "va flotando" al final
    if (numeros[j] > numeros[j + 1]) { #Esta es la condici?n, si el numero actual es mayor que el numero que sigue, entonces hay que intercambiarlos.
      # Intercambiamos los elementos
      temp <- numeros[j] #Usamos temp como una variable temporal para guardar valores, Los [] se utilizan para acceder a un valor especifico dentro del vector 
      numeros[j] <- numeros[j + 1]
      numeros[j + 1] <- temp
    }
  }
}

# Mostramos el vector ordenado
print(numeros)

#Este codigo te permite entender mejor como funciona la computadora

numeros <- c(24,3,1,8,23,54,90,10,2)
n <- length(numeros)

# Bucle externo: controla cu?ntas pasadas se hacen
for (i in 1:(n-1)) {
  cat("Pasada", i, "->", numeros, "\n")  # Muestra el vector antes de cada pasada
  
  # Bucle interno: compara y acomoda los elementos
  for (j in 1:(n - i)) {
    if (numeros[j] > numeros[j + 1]) {
      # Intercambio de valores
      temp <- numeros[j]
      numeros[j] <- numeros[j + 1]
      numeros[j + 1] <- temp
    }
  }
}

# Resultado final
cat("Vector ordenado ->", numeros, "\n")

###########################################################################

#Mismo ejercicio con bucle while 

numeros <- c(24,3,1,8,23,54,90,10,2)
n <- length(numeros)

cambio <- TRUE
pasada <- 1  # Para contar cu?ntas pasadas hacemos

while (cambio) {
  cat("Pasada", pasada, "->", numeros, "\n")  # Imprime antes de empezar la pasada
  
  cambio <- FALSE
  j <- 1
  
  while (j < n) {
    if (numeros[j] < numeros[j + 1]) {
      temp <- numeros[j]
      numeros[j] <- numeros[j + 1]
      numeros[j + 1] <- temp
      cambio <- TRUE
    }
    j <- j + 1
  }
  
  pasada <- pasada + 1  # Avanzamos el contador de pasadas
}

cat("Vector ordenado ->", numeros, "\n")



# Vector de ejemplo
v <- c(8, 3, 5, 1, 9)

# Variables necesarias
n <- length(v)
cambio <- TRUE

# Bucle while que sigue mientras haya cambios
while (cambio==TRUE) {
  cambio <- FALSE  # asumimos que no habrá cambios esta vez
  i <- 1
  
  # Comparamos pares de elementos adyacentes
  while (i < n) {
    if (v[i] > v[i + 1]) {
      # Intercambiamos los valores si están desordenados
      temp <- v[i]
      v[i] <- v[i + 1]
      v[i + 1] <- temp
      cambio <- TRUE  # hubo un cambio, así que repetimos
    }
    i <- i + 1
  }
}

# Mostrar el vector ordenado
print(v)
