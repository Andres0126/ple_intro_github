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

#Ejercicio 2. Un código que calcule el m?ximo de un vector.



#Ejercicio hecho por el profesor 
vec1 <- c(1,2,3,1)
vec2 <- c(1,2,3,1)
if(length(vec1)==length(vec2)){
  acc <- 0
  for(i in 1:length(vec1)){
    aux <- vec1[i]*vec2[i]
    acc <- acc+aux
  }
}else{
  print("Las longitudes de los vectores son distintas!")
  }




#Un codigo que ordene un vector de menor a mayor.

in

a <- c(10,20,5,3,12,6)

for (i in a){
  
  
}



 


