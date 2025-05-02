# No necesito importar librerias en R
conos <- data.frame(
  Sabor = c('mora', 'vainilla', 'chocolate', 'cebolla', 'chococrispi'),
  precio = c(3500, 4700, 6500, 5200, 5700)
)

# Mostrar el data frame
print(conos) #Imprime la tabla
conos #Imprime la tabla
conos[1:3, ] #En R, el ?ndice empieza en 1 (no en 0) y s? incluye el ?ltimo n?mero, por tanto imprime los 3 valores de la tabla

#En R dentro de [] la primera parte antes de la coma "," se refiere a las filas , y la segunda parte despu?s de la coma se refiere a las columnas .
conos[, c('Sabor', 'precio')] 
conos[order(conos$Sabor), ] #Genera el orden correcto de las filas calculadas en el valor de "Sabor".
conos[order(conos$Sabor, decreasing = TRUE), ] #Genera el orden de forma descendente (Z???A)

head(conos, 2) #significa:Mu?strame las primeras "2" filas de conos.
tail(conos, 2)#significa:Mu?strame las ?ltimas 2 filas deconos

# Seleccionar una fila aleatoria de la tabla "conos"

nrow(conos) #devuelve el n?mero total de filas en el DataFrame conos
sample(nrow(conos), 1) #selecciona aleatoriamente un n?mero entre 1 y el n?mero total de filas.
#El 1 indica a R que escoja la primera fila aleatoria de las x filas que tiene el vector

#Recuerda que dentro de un vector [,] la coma separa las filas de las columnas

conos[sample(nrow(conos), ), ] #Estamos arrojando la tabla con los datos al azar
conos[sample(nrow(conos), 1), ] #Estamos arrojando un solo dato de la tabla al azar.
#Esto se debe a que sample(,) esta seleccionando datos aleatorios del indice y 1 solo de las columnas

conos[sample(nrow(conos), 1)] #R no sabe si est?s seleccionando una fila o una columna.
#Sin la coma , R tratar?a de seleccionar una columna , no una fila, y te dar?a un error o un resultado incorrecto.

summary(conos) #Entrega todos los datos de abajo
#Devuelve valores como: count, mean, std, min, 25%, 50%, 75%, max para las columnas num?ricas ( precio).

str(conos) # Muestra el tipo de objeto ( data.frame), el n?mero, el tipo de dato de cada columna ( Factor, Numeric,Character, etc.), los primeros valores de cada columna

#R no maneja indices, El ?ndice son impl?citamente las filas : 1, 2, 3, 4, etc.

rownames(conos) #Acceder a los n?meros de fila 
as.numeric(rownames(conos)) #Si queremos los indices como numeros 

conos[4, ] #ubicaci?n por ?ndice num?rico.

#Seleccione la fila 1 en adelante, la fila 2 a la 4 y las fila 1 y 4.

#La fila 1 en adelante

conos
conos[1:nrow(conos), ]

#la fila 2 a la 4

conos[2:4, ]

#las fila 1 y 4.

conos[c(1,4), ]

#Selecciona el precio de la fila 3

conos[5, "Sabor"]


# Cambiar el indice n?merico por la columna "Sabor"

conos_i <- conos #Copiamos el data.frame original
#make.unique() agregar? .1, .2, etc., a los nombres repetidos
rownames(conos_i) <- make.unique(as.character(conos_i$Sabor)) ##Creamos ?ndices ?nicos a partir de la columna "Sabor"
conos_i$Sabor <- NULL #Eliminamos la columna "Sabor" para que no est? repetida
conos_i#Mostramos el resultado
conos_i["chococrispi", ]

#Escoger los conos que tienen un precio mayor a 5000

conos[conos[ ,"precio"]>5000, ] 
conos[conos$precio>5000, ]

#Seleccionar los sabores de precios entre 3 mil y 5 mil. 

conos[conos$precio >= 3000 & conos$precio <= 5000, c('Sabor')] #El vector c('Sabor') arroja solo la columna sabor.

conos[conos[ ,"precio"]>=3000 & conos[ , "precio"]<=5500,]  #Si le quitamos el vector c('sabor') arroja la tabla completa con los valores dentro del rango

