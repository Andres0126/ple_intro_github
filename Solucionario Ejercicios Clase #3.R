#Crear un codigo que orde un vector de menor a mayor.

# Creamos un vector
numeros <- c(42, 15, 8, 23, 4, 16)

# Obtenemos la longitud del vector
n <- length(numeros) #con "length" calculamos cuántos elementos hay en el vector

# Algoritmo de ordenamiento burbuja
for (i in 1:(n-1)) { #El primer bucle for que se va a repetir (n-1) veces, se encarga de hacer varias pasadas por el vector.
  for (j in 1:(n - i)) { # Segundo bucle for que recorre los elementos del vector que aún no están en su lugar. En cada pasada, se va acortando porque el número más grande "va flotando" al final
    if (numeros[j] > numeros[j + 1]) { #Esta es la condición, si el numero actual es mayor que el numero que sigue, entonces hay que intercambiarlos.
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

# Bucle externo: controla cuántas pasadas se hacen
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

