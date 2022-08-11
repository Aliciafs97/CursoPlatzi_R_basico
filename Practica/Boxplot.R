#BOXPLOT 

boxplot(mtcars$hp,
        ylab="Caballos",
        main="Cantidad de coches con un número de caballos")
#Vemos que hay un outlier. Significa que hay un coche que tiene muchos caballos
#a diferencia de los demás coches
#Si nos vamos a la tabla y ordenamos los caballos 'hp' de menor a mayor, 
#vemos que hay un Maserati con 335 caballos.

#Libreria ggplot

ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+
  geom_boxplot(alpha=0.6)+   #alpha para cambiar el color de las cajas
  labs(x="cilindros", y="caballos",
       title= "Caballos en los coches")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#Solo nos sale un boxplot porque necesitamos una variable categórica/etiqueta
#Cuando las cajas son más alargadas significa que los datos están más desviado,
#más lejos de le media

ggplot(mtcars, aes(x=am, y=mpg, fill=am))+
  geom_boxplot()+
  labs(x='Tipo de caja', y='Millas por galón',
       title="Millas según el tipo de cajas")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#'am' tiene TRUE y FALSE por lo que no es bueno representarlo. Así que lo cambiaremos

#rm(mtcars) # eliminar el objeto
mtcars$am = factor(mtcars$am , levels = c(1,0),labels = c("Manual","Automatico"))
ggplot(mtcars, aes(x=am, y=mpg, fill=am))+
  geom_boxplot()+
  labs(x='Tipo de caja', y='Millas por galón',
       title="Millas según el tipo de cajas")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


#BOXPLOT ORANGE

#Grupos de paises por encima o por debajo del promedio del Pip per Cápita

economy = mean(orange$GDP.PC)
economy

#Libreria dplyr
orange = orange %>%  #Vamos a 'pasarlo' a /'cambiarlo' a...va a mutar, creamos una nueva variable
  mutate(economia_fuerte = ifelse(GDP.PC < economy, #Si el PIP es menor a la media(economy) entonces (la primera frase), sino (la segunda frase)
                                  "Por debajo del promedio pip",
                                  "Por encima del pip"))

ggplot(orange, aes(x=economia_fuerte, y=Creat.Ind...GDP,
                   fill= economia_fuerte))+
  geom_boxplot(alpha=0.4)+
  labs(x='Tipo de país', y= 'Aporte economia naranja al pib',
       title= 'Aporte economía naranaja en piub paisesn latam con alto
       y bajo pib')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot(orange, aes(x=economia_fuerte, y=Internet.penetration...population,
                   fill= economia_fuerte))+
  geom_boxplot(alpha=0.4)+
  labs(x='Tipo de país', y= 'Aporte economia naranja al pib',
       title= 'Penetración de internet(%) paises latam con alto
       y bajo pib')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
