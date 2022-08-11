#CORRELACIONES (estadística)

cor(mtcars[,2:6])
#Aqui podemos ver por ejemplo que la variable disp y mpg la corr es
#-0.84 por lo que está mas cerca de -1, es decir, corr negativa.
#A más disp, menos mpg.

newdata = subset(mtcars, select=c(2,7:8,11,12))
cor(newdata)

merc = mtcars %>%
  filter(str_detect(model, "Merc"))
cor(merc[,2:6])


#df orange
cor(orange[,2:6])
#Tenemos valores NA en la columna de Creat.Ind...GDP

cor(orange[,2:6], use='complete.obs') #Que 'use' solo las obs(observaciones) completas,
                                      #es decir, que obvie los NA


