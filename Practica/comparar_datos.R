#COMPARAR Y UBICAR DATOS

mtcars[mtcars$cyl<6,] #Simpre con coma al final
                      #Busca en el dataset que coches tienen menos de 6 cilindros


orange[orange$GDP.PC>=15000,]#Que paises tienen un Per Cápita mayor a 15000

orange[orange$Creat.Ind...GDP<=2,]

#SUBSETS

neworange = subset(orange,Internet.penetration...population>80
                   & Education.invest...GDP >= 4.5)

neworange   #Mas del 80% de la población recibe internet 
            #y tienen mas de 4.5 de su PIB en educación  

neworange = subset(orange,Internet.penetration...population>80
                   & Education.invest...GDP >= 4.5, 
                   select = Creat.Ind...GDP)
neworange
       
       
#RENOMBRAR
rename(orange,c("Creat.Ind...GDP" = "Aporte_ec_nja"))
       
       
       
       
       
       
]