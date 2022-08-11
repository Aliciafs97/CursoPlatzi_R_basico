#FACTORES
nivel_curso = c("Básico", "Intermedio", "Avanzado")
nivel_curso

head(mtcars)#Vistazo de las primeras filas
head(orange)

tail(mtcars)#Vistazo de las últimas filas
tail(orange)

glimpse(orange)#Libreria dplyr
#'dbl' = doble, números con comas, float

#LISTAS
my_vector = 1:8 #Del 1 al 8
my_matrix = matrix(1:9, ncol = 3)
my_df = mtcars[1:4,] #De la fila 1 a la 4 y todas las columnas

my_list = list(my_vector,my_matrix,my_df)
my_list
