#CORRELACIONES(gráficas)

pairs(mtcars[,2:6])#Todas la filas de la columna 2 a la 6
#Vemnos que cuando los puntos están de forma descendente, es que
#hay una correlación negativa es decir a mas de X, menos de Y

#Cuando los puntos van de forma ascendente, es al reves, 
#correlación positiva. Cuando mas de X, mas de Y.

#Cuando los puntos estan dispersos sin una forma visible, es que
#las variables no están muy correlacionadas.

newdata = subset(mtcars, select=c(2,7:8,11,12))#Columna 2, columna de la 7 a la 8 y luego la 11 y 12
pairs(newdata)

pairs(mtcars[,-c(1,3,4,5,6,9,10)])


coches_eficientes = filter(mtcars,mpg >= 30) #Filtramos que la variable 'mpg' sea mayor a 30
coches_eficientes

pairs(coches_eficientes[,2:6])

#Libreria stringr
merc = mtcars %>%
  filter(str_detect(model, "Merc")) #Busca un string en la variable
                                    #'model' que tenga la palabra 'Merc'
merc

pairs(merc[,2:6])


#df orange

pairs(orange[,2:6])
#Puede haber una corr positiva entre x = los aportes de servicios en el pib
# y entre y=pib per capita.
#Es decir, los paises que más aportan al pib, tienen mayor pib per capita


pairs(orange[,5:10])

