#GRAFICAS CON MÁS DE UNA VARIABLE
#Gráfica de dispersión

ggplot(mtcars, aes(hp,mpg))+
  geom_point()+
  labs(x='caballos', y='millas por galón',
       title='Relación de caballos y millas')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#El gráfico nos muestra los coches que tienen más caballos recorren 
#menos millas por galón. Seguramente porque consumen más

ggplot(mtcars, aes(wt,hp))+
  geom_point()+
  labs(x='peso del coche', y='potencia(caballos)',
       title='Relación entre el peso y la potencia')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
#Lo que nos dice la gráfica los coches que tienen más peso, también tienen más potencia

ggplot(mtcars, aes(hp,qsec))+
  geom_point(aes(color=am, size=cyl))+
  labs(x='caballos', y='velocidad en un cuarto de milla',
       title='caballos-velocidad según cilindraje y tipo de caja')
