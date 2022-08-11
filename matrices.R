#MATRICES

tiempo_platzi = c(25,5,10,15,10)
tiempo_lectura = c(30,10,5,10,15)

tiempo_matrix = matrix(c(tiempo_platzi, tiempo_lectura, 
                         nrow = 2, byrow = TRUE))
dias = c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
Tiempo = c("tiempo_platzi"," tiempo_lectura")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix)<- Tiempo

tiempo_matrix

colSums(tiempo_matrix)

final_matrix = rbind(tiempo_matrix, c(10,15,30,5,0))
final_matrix

colSums(final_matrix)

final_matrix[1,5] #fila 1, columnas 5
