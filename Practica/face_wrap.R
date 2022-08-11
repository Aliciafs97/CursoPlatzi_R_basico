#Scatter Plot con ajustes y face_wrap

#Libreria dplyr

mtcars %>%
  arrange(desc(peso_kilos))

mas_pesados = mtcars %>%
  filter(model %in% c("Lincoln Continental", "Chrysler Imperial",
                      "Cadillac Fleetwood", "Merc 450SE"))
mas_pesados


ggplot(mas_pesados, aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model) #para crear un cuadro para cada modelo del coche

  geom_point()+
  facet_wrap(~am)

#df orange

top_econ_naranaja = orange %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina",
                        "Colombia", "Brazil", "Paraguay"))

ggplot(top_econ_naranaja, aes(x=Internet.penetration...population,
                              y = Services...GDP, size=GDP.PC))+
  geom_point()+
  facet_wrap(~Country)


ggplot(top_econ_naranaja, aes(x=Education.invest...GDP,
                              y = Creat.Ind...GDP, size=Unemployment))+
  geom_point()+
  facet_wrap(~Country)

#Libreria RColorBrewer
brewer.pal.info
myColors = brewer.pal(9,"Blues")
ggplot(top_econ_naranaja, aes(x=Internet.penetration...population,
                              y = GDP.PC, fill=Creat.Ind...GDP))+
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradient(colors=blues9)
