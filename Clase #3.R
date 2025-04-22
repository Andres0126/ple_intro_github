a <- c(3,2,4) # C es una función que vectoriza una cadena de datos
a[3] <- 8 # "[]" busca el número ubicado en la memoria del vector y al asignarle otro valor lo cambia al momento de imprimirlo
b <- 1:3 # Rango del 1 al 3 en b
b[a[3]] #Buscar....
length(a) # Tamaño o cantidades de variables en un vector 
print(b)

a <- c(3,2,4)
b <- 1:3
for (variable in a) { #prcoceso que se repite segun el tamaño del vector
  print (variable)
}

for (var in b) {
  print (var)
}

cat("Texto no muy crativo",a[1],"\n") # "cat" Permite combinar textos y variables 
cat("Texto no muy crativo",b[1],"\n")

for (vara in a){
  for(varb in b){
    cat("vara:",vara,"varb",varb,"\n")
  }
}


