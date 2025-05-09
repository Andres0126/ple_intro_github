#Creamos un vector en R

words <- c("nombre", "pronombre", "verbo", "adverbio", "adjetivo", "conjunci�n", "Preposici�n")

words[1] #En R la posiciones de los vectores empiezan desde 1 en adelante
words[1:7] #selecciona los elementos del �ndice 1 hasta el 7, en R si incluye el fin
length(words) #Cuenta los elementos del vector
words[1:length(words)] #Selecciona desde la posici�n que se indique hasta el fin del vector
rev(words) #Invierte los elementos del vector

numbers <- c(1,3,5.3)
numbers

sum(numbers) #Sumar n�meros 
length(numbers)#Tama�o del vector
mean(numbers) #Promedio del vector
numbers != 0 #arroja valores boleanos de los valores diferentes de 0 (true/false)
sum(numbers != 0) #Suma los valores boleanos, determinando as� la cantidad de numeros diferentes de 0 hay en el vector.
round(numbers) #Redondea todos los flotantes en el vector al entero m�s cercano

#Redondear un numero especifico del vector 

numbers[3] <- round(numbers[3]) #Guardamos el valor redondeado dentro del vector y su posici�n original.
numbers #Imprimimos el vector nuevo

sort(numbers) #Ordena el vector de forma ascendente
rev(numbers)
