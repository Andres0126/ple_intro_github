#Uso de la funci�n Merge

# Crear una tabla 

conos <- data.frame(
  Sabor= c('mora','vainilla', 'chocolate', 'mora', 'chocolate'),
  precio= c(3500, 4700, 6500, 5200, 5700)
)
conos 

# Crear otra tabla
Valoracion <- data.frame(
  Tipo = c("mora", "chocolate", "vainilla"),
  calificacion = c(2.5, 3.5, 4)
)
print(Valoracion)

#unir ambas tablas usando la funci�n .Merge

clasificado <- merge(conos, Valoracion, by.x = "Sabor", by.y = "Tipo")
#No se utiliza .merge, simplemente merge
#Si solo ponemos los nombres de la tabla "conos, valoraci�n" une las dos tablas indiscriminadamente
#by.x = "sabor" indica que la union se hara usando la columna sabor de la tabla conos
#by.y = "Tipo" indica que la columna que se usar� para unir en la tabla Valoraciones "Tipo".

print(clasificado) #R omite la columna TIPO automaticamente a diferencia de python 

#Si queremos borrar una columna en R debemos hacer lo siguiente.

#clasificado$precio <- NULL#clasificado$Sabor <- NULL # Esta linea borra la columna que uno quiera
#Dejare comentada la linea anterior para seguir trabajando con la tabla anterior
print(clasificado)

#Generar una nueva columna que divida precio con calificaci�n 

clasificado$'precio/Punto N' <- round(clasificado$precio / clasificado$calificacion, 0)
# Creamos una nueva columna 
# round(..., 0) se usa al principio si queremos que el numero se limite a 0 decimales
# dataframe$Columna se utiliza para acceder a una columna especifica de una tabla determinada

print(clasificado)

#En R no existe la funci�n .Join que existe en python 
#pero si queremos hacer algo similar al Join en R podriamos hacer esto:

clasificado_2 <- merge(conos, Valoracion, by.x = "Sabor", by.y = "Tipo", all = FALSE)
# Al igual que el merge anterior relaciona las tablas por las columnas
# Las filas que tienen coincidencias entre sabor y tipo obtienen el valor de calificacion

print(clasificado_2)

#Mostrar solo los datos de una fila 

clasificado[clasificado$Sabor == "vainilla", ] #Esto solo mostrara la linea de la fila que cumple la condici�n

#Generar una m�scara de resultados boleanos 

clasificado$Sabor == "vainilla"

#Utilizamos la funci�n groupBy

helados <- data.frame(
  Sabor = c('mora','vainilla', 'chocolate', 'mora', 'chocolate', 'vainilla' ),
  precio = c(3500, 4700, 6500, 5200, 5700, 4800),
  ciudad = c('Bogot�', 'Bogot�', 'Cali', 'Medell�n', 'Bogot�', 'Cali')
)
helados

#Calculamos el promedio de los precios 
#La funci�n aggregate()en R es una funci�n base muy �til para agrupar datos y aplicarles una funci�n
aggregate(precio ~ Sabor, data = helados, FUN = mean)
#aggregate(formula, data, FUN) formula= y ~ x aplica la funci�n en y agrupando por x
#data se refiere al data.frame en el que estan los datos
#FUN =  significa la funci�n deseada a aplicar mean() sum() etc. 

#Muestra el tama�o de una varibale de un data.frame

# Devuelve una tabla de frecuencias que muestra cuantas veces aparece cada valor �nico.
table(helados$ciudad)

#Sumar los precios para que arroje un valor total

aggregate(precio ~ Sabor, data= helados, FUN = sum) #utilizamos la misma funcion aggregate ahora con la funcion suma

# Obtener varias estadisticas al mismo tiempo

library(dplyr) ##dplyr es un paquete de R muy popular para manipular y transformar datos 

helados %>% #El s�mbolo %>%se llama el pipe operator 
  #toma el data.frame heladosy p�salo a la siguiente funci�n..."
  group_by(Sabor) %>% #Agrupa los datos por la columna Sabor.
  # Esta parte calcula estad�sticas para cada grupo
  summarise( #Reduce M�ltiples filas a una sola fila por grupo 
    promedio = mean(precio),
    maximo = max(precio),
    minimo = min(precio),
    cantidad = n()
  )

#Agrupar sabor y precio y saca el promedio de precios 

#Ya esto lo hicimos antes con aggregate pero ahora lo haremos con dplyr

library(dplyr)

helados %>%
  group_by(Sabor) %>%
  summarise(promedio = mean(precio))

##Agrupar por dos columnas 

library(dplyr)

helados %>%
  group_by(ciudad, Sabor) %>%
  summarise(promedio = mean(precio), .groups = "drop")


