#Cargar datos 

#Filtrar datos 2019
PCD_TIPO2019 <- PCD_TIPO[PCD_TIPO$year == "2019",]


#Cargar ggplot2
library(ggplot2)


#Grafico de puntos

ggplot(data = PCD_TIPO2019,
       mapping = aes(x = population,
                     y = total_pcd))+
  geom_point()


#Color
ggplot(data = PCD_TIPO2019,
       mapping = aes(x = population,
                     y = total_pcd,
                     color = region))+
  geom_point()


#Grafico final
ggplot(data = PCD_TIPO2019,
       mapping = aes(x = population,
                     y = total_pcd,
                     color = region))+
  geom_point()+
  
  geom_text(label = PCD_TIPO2019$state,
            color = "black",
            size = 3)