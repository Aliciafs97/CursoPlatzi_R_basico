#DESVIACIÓN ESTANDAR

summary(mtcars) #resumen estadístico

desviacion = sd(mtcars$mpg) # desviacion = 6,02

media = mean(mtcars$mpg)  #media 20,09

coef_variacion = (desviacion/media)*100
coef_variacion # = 29,99% se pasa del 25% por lo que hay desviación de los datos
               
#df orange

desv = sd(orange$Internet.penetration...population) # = 17.27
desv

media = mean(orange$Internet.penetration...population)
media # = 68.41

coef_var = (desv/media)*100
coef_var # = 25.24% no se pasa mucho del 25% pero aun así, sería mejor
         #apoyarnos en la mediana o en un quartil que en la media.


#Quitamos valores nulos de la variable Creat.Ind...GDP

media = mean(orange$Creat.Ind...GDP, na.rm = TRUE)#rm = remove. Elimina los NA
media #=3.29

desviacion = sd(orange$Creat.Ind...GDP, na.rm = TRUE)
desviacion # = 2.00

CoefVar = (desviacion/media)*100
CoefVar # = 61.00% los valores están muy desviados de la media