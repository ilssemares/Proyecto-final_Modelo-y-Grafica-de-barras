library(readxl)
install.packages("readxl")
list.files()
datos <- read_excel("Base_datos_municipios_gto.xlsx")
View(datos)
summary(datos)
install.packages("tidyverse")
library(tidyverse)
glimpse(datos)
modelo<-lm(`Robo de negocio` ~ `Robo en casa` +`Robo con violencia`, data=datos)
summary(modelo)


#Grafica de barras con datos 

install.packages("ggplot2")

library(ggplot2)
df_barras <- data.frame( problemas = c("Robo de negocio", "Robo en casa", "Robo con violencia"), personas = c(75, 38 , 44) )

print(df_barras)

instalar.paquetes("ggplot2") biblioteca(ggplot2)

ggplot(df_barras, aes(x = problemas, y = personas))+ geom_col(aes(fill = problemas))+ labs( title = "Cantidad de personas por problemas", x = "problemas", y = "Número de personas" ) + theme_minimal()


