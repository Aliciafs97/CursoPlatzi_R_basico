#EDA SCATTER PLOT

plot(mtcars$mpg ~ mtcars$cyl,
     xlab = "cilindros", ylab = "millas por galón",
     main = "Relación cilindros y millas por galón")

plot(mtcars$mpg ~ mtcars$hp,
     xlab = "caballos", ylab = "millas por galón",
     main = "Relación caballos y millas por galón")
#Vemos que hay una relación inversa, es decir, hay más caballos 
#que millas por galón
plot(orange$Unemployment ~orange$Education.invest...GDP,
     xlab = "Inversión educación(%PIB",
     ylab = "Desempleo",
     main = "Relación inversión en educación y desempleo")
#Hay mucha vairación 

plot(orange$GDP.PC ~orange$Creat.Ind...GDP,
     xlab = "Aporte economía naranja %PIB",
     ylab = "PIB per Cápita",
     main = "Relación economía naranja y PIB per cápita")


#HISTOGRAMAS

hist(mtcars$hp,
     xlab='Caballos',
     main = 'Coches según caballos')

#Libreria ggplot2

ggplot(mtcars, aes(x=hp))+
  geom_histogram()+
  labs(x = 'Caballos', y = 'Cantidad de coches',
       title = 'Caballos en los coches')+
  theme(legend.position = 'none')+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())



ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)
  labs(x = 'Caballos', y = 'Cantidad de coches',
       title = 'Caballos en los coches')+
  theme(legend.position = 'none')+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
  

ggplot()+geom_histogram(data=mtcars,
                        aes(x=hp), fill = 'blue', 
                        color = 'red',
                        binwidth = 20)+
  labs(x = 'Caballos', y = 'Cantidad de coches',
       title = 'Caballos en los coches')+
  xlim(c(80,280))+
  theme(legend.position = 'none')+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
  
  
