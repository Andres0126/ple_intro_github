# No necesitas importar librerías para data.frame básico
conos <- data.frame(
  Sabor = c('mora', 'vainilla', 'chocolate', 'cebolla', 'chococrispi'),
  precio = c(3500, 4700, 6500, 5200, 5700)
)

# Mostrar el data frame
print(conos) #Imprime la tabla
conos #Imprime la tabla
conos[1:3, ] #En R, el índice empieza en 1 (no en 0) y sí incluye el último número, por tanto imprime los 3 valores de la tabla

#En R dentro de [] la primera parte antes de la coma "," se refiere a las filas , y la segunda parte después de la coma se refiere a las columnas .
conos[, c('Sabor', 'precio')] 
conos[order(conos$Sabor), ] #Genera el orden correcto de las filas calculadas en el valor de "Sabor".
conos[order(conos$Sabor, decreasing = TRUE), ] #Genera el orden de forma descendente (Z???A)

head(conos, 2) #significa:Muéstrame las primeras "2" filas de conos.
tail(conos, 2)#significa:Muéstrame las últimas 2 filas deconos

# Seleccionar una fila aleatoria de la tabla "conos"

nrow(conos) #devuelve el número total de filas en el DataFrame conos
sample(nrow(conos), 1) #selecciona aleatoriamente un número entre 1 y el número total de filas.
#El 1 indica a R que escoja la primera fila aleatoria de las x filas que tiene el vector

#Recuerda que dentro de un vector [,] la coma separa las filas de las columnas

conos[sample(nrow(conos), ), ] #Estamos arrojando la tabla con los datos al azar
conos[sample(nrow(conos), 1), ] #Estamos arrojando un solo dato de la tabla al azar.
#Esto se debe a que sample(,) esta seleccionando datos aleatorios del indice y 1 solo de las columnas

conos[sample(nrow(conos), 1)] #R no sabe si estás seleccionando una fila o una columna.
#Sin la coma , R trataría de seleccionar una columna , no una fila, y te daría un error o un resultado incorrecto.

summary(conos) #Entrega todos los datos de abajo
#Devuelve valores como: count, mean, std, min, 25%, 50%, 75%, max para las columnas numéricas ( precio).

str(conos) # Muestra el tipo de objeto ( data.frame), el número, el tipo de dato de cada columna ( Factor, Numeric,Character, etc.), los primeros valores de cada columna

#R no maneja indices, El índice son implícitamente las filas : 1, 2, 3, 4, etc.

rownames(conos) #acceder a los números de fila 
as.numeric(rownames(conos)) #Si queremos los indices como numeros 

conos[4, ] #ubicación por índice numérico.

#Seleccione la fila 1 en adelante, la fila 2 a la 4 y las fila 1 y 4.

#La fila 1 en adelante

conos
conos[1:nrow(conos), ]

#la fila 2 a la 4

conos[2:4, ]

#las fila 1 y 4.

conos[c(1,4), ]

#Selecciona el precio de la fila 3

conos[3, "precio"]


# Cambiar el indice numerico por la columna "Sabor"

conos_i <- conos


rownames(conos_i) <- conos_i$Sabor


conos_i$Sabor <- NULL


conos_i

