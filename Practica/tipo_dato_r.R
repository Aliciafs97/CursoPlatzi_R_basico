str(mtcars)
class(mtcars$vs)

#Convertimos la variable 'vs' de integer a booleano
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(mtcars)

#Vemos el tipo de datos del csv 'orange'
str(orange) #Vemos que en algunas variables ha NA

#Herramientas estadísticas
summary(orange) #Resumen estadístico

