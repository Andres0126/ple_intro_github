# No necesitas importar librerías para data.frame básico
conos <- data.frame(
  Sabor = c('mora', 'vainilla', 'chocolate', 'mora', 'chocolate'),
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


