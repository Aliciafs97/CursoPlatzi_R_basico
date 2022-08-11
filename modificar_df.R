#AJUSTAMOS DATOS

coches_eficientes = mean(mtcars$mpg)
coches_eficientes

mtcars = mtcars %>%
  mutate(mas_eficientes = ifelse(mpg<coches_eficientes,
                                 "bajo_media", "en ó sobre media"))

mas_rapidos = mtcars[mtcars$qsec<16,]
mas_rapidos

mtcars = mtcars %>%
  mutate(velocidad_cuarto_milla = ifelse(qsec > 16,
                                         "Menos de 16 seg",
                                         "Más de 16 seg"))

mtcars = mtcars %>%
  mutate(peso_kilos = (wt/2)*1000)

mtcars = mtcars %>%
  mutate(peso = ifelse(peso_kilos <= 1500,
                       "poco pesados", "pesados"))


#Df orange

orange = orange %>%
  mutate(creciemiento_PIB = ifelse(GDP.Growth.. >= 2.5,
                                   "2.5% o más", "menos de 2.5%"))

orange = orange %>%
  mutate(paises_econ_naranja = ifelse(Creat.Ind...GDP >= 2.5,
                                      "más econ.naranja",
                                      "menos econ.naranja"))

orange %>%
  arrange(desc(Creat.Ind...GDP))

top_econ_naranaja = orange %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina",
                        "Colombia", "Brasil"))
top_econ_naranaja
 