#ESTADISTICA
summary(mtcars)

#Tranformamos la variable 'wt'(peso) de libras a kilos
wt = (mtcars$wt*1000)/2
wt

#Pasamos este cambio al dataset
mtcars.new = transform(mtcars,wt=wt*1000/2)
mtcars.new

summary(mtcars.new)

#VECTORES
#Tipo numerico
tiempo_platzi = c(25,5,10,15,10)
tiempo_lectura = c(30,10,5,10,15)
tiempo_aprendizaje = tiempo_platzi + tiempo_lectura
tiempo_aprendizaje

#Tipo categorico
dias_aprendizaje = c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
dias_aprendizaje

#Tipo Booleano
dias_mas_20min = c(TRUE,FALSE,FALSE,TRUE,TRUE)
dias_mas_20min

#Nos hacemos la pregunta de cuantos minutos al día adicionales pasamos estudiando 
total_tiempo_platzi = sum(tiempo_platzi)
total_tiempo_platzi
total_tiempo_lectura = sum(tiempo_lectura)
total_tiempo_lectura
total_tiempo_adicional = total_tiempo_lectura+total_tiempo_platzi
# - vemos que no nos responde a la pregunta, por lo que tendremos que utilizar matrices



total_tiempo_adicional

