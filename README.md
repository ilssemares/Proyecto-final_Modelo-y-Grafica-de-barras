# Proyecto-final_Modelo-y-Grafica-de-barras
Se realizó un modelo de regresión lineal múltiple para analizar la relación entre el robo de negocio y las variables robo en casa y robo con violencia. Asi mismo, tambien se creo grafica de barras donde los datos cuantitativos muestran que tipo de robos es el que tiene un mayor peso en los problemas de la sociedad.
 
## Formúla que se utilizo para ejecutar cada acción
 
#### Modelo de regesión lineal múltiple
 
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
 
 
#### Grafica de barras con datos
 
install.packages("ggplot2")
library(ggplot2)
df_barras <- data.frame( problemas = c("Robo de negocio", "Robo en casa", "Robo con violencia"), personas = c(75, 38 , 44) )
print(df_barras)
instalar.paquetes("ggplot2") biblioteca(ggplot2)
ggplot(df_barras, aes(x = problemas, y = personas))+ geom_col(aes(fill = problemas))+ labs( title = "Cantidad de personas por problemas", x = "problemas", y = "Número de personas" ) + theme_minimal()
 
 
## Resultados
 
> install.packages("readxl")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
 
https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/bodes/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/readxl_1.4.5.zip'
Content type 'application/zip' length 765088 bytes (747 KB)
downloaded 747 KB
 
package ‘readxl’ successfully unpacked and MD5 sums checked
 
The downloaded binary packages are in
​C:\Users\bodes\AppData\Local\Temp\Rtmp21uNqQ\downloaded_packages
> library(readxl)
> list.files()                                                      
[5] "Base_datos_municipios_gto.xlsx"                                                
                                       
> datos <- read_excel("Base_datos_municipios_gto.xlsx")
> View(datos)
> summary(datos)
 Municipio             Sexo                Edad       Transporte que utiliza Robo de negocio  Robo de vehículo  Robo en casa  
Length:50          Length:50          Min.   :18.00   Length:50              Min.   : 9.215   Min.   : 5.052   Min.   : 5.252  
Class :character   Class :character   1st Qu.:31.00   Class :character       1st Qu.:13.418   1st Qu.: 5.335   1st Qu.: 8.183   
Mode  :character   Mode  :character   Median :43.50   Mode  :character       Median :22.945   Median :10.386   Median :10.219  
                                      Mean   :43.60                          Mean   :24.882   Mean   :11.658   Mean   :12.601  
                                      3rd Qu.:58.75                          3rd Qu.:36.918   3rd Qu.:17.687   3rd Qu.:16.253  
                                      Max.   :65.00                          Max.   :37.611   Max.   :24.132   Max.   :22.310  
Robo con violencia
Min.   : 3.501     
1st Qu.:20.220    
Median :67.402    
Mean   :48.252    
3rd Qu.:73.333    
Max.   :73.485    
> install.packages("tidyverse")
Restarting R session...
> install.packages("tidyverse")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
 
https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/bodes/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/tidyverse_2.0.0.zip'
Content type 'application/zip' length 431698 bytes (421 KB)
downloaded 421 KB
 
package ‘tidyverse’ successfully unpacked and MD5 sums checked
 
The downloaded binary packages are in
​C:\Users\bodes\AppData\Local\Temp\RtmpWGm946\downloaded_packages
> library(tidyverse)
── Attaching core tidyverse packages ───────────────────────────────────────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.2.1     ✔ readr     2.2.0
✔ forcats   1.0.1     ✔ stringr   1.6.0
✔ ggplot2   4.0.3     ✔ tibble    3.3.1
✔ lubridate 1.9.5     ✔ tidyr     1.3.2
✔ purrr     1.2.2    
── Conflicts ─────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
> glimpse(datos)
Rows: 50
Columns: 8
$ Municipio                <chr> "Celaya", "Celaya", "Moroleon", "Moroleon", "Irapuato", "Celaya", "Silao", "Irapuato", "Silao"…
$ Sexo                     <chr> "Hombre", "Hombre", "Mujer", "Mujer", "Mujer", "Hombre", "Hombre", "Mujer", "Mujer", "Mujer", …
$ Edad                     <dbl> 61, 38, 24, 35, 31, 40, 47, 31, 37, 38, 61, 51, 18, 21, 51, 52, 61, 43, 38, 19, 24, 18, 61, 29…
$ `Transporte que utiliza` <chr> "Camión", "Automóvil", "A pie", "Bicicleta", "Camión", "Bicicleta", "Bicicleta", "Camión", "A …
$ `Robo de negocio`        <dbl> 34.837390, 34.837390, 10.503282, 10.503282, 37.610905, 34.837390, 22.945318, 37.610905, 22.945…
$ `Robo de vehículo`       <dbl> 24.132149, 24.132149, 7.002188, 7.002188, 10.386275, 24.132149, 17.687016, 10.386275, 17.68701…
$ `Robo en casa`           <dbl> 15.422803, 15.422803, 5.251641, 5.251641, 8.183126, 15.422803, 16.252934, 8.183126, 16.252934,…
$ `Robo con violencia`     <dbl> 73.485117, 73.485117, 3.501094, 3.501094, 73.333395, 73.485117, 67.401873, 73.333395, 67.40187…
 
> modelo<-lm(`Robo de negocio` ~ `Robo en casa` +`Robo con violencia`, data=datos)
> summary(modelo)
 
Call:
lm(formula = `Robo de negocio` ~ `Robo en casa` + `Robo con violencia`,
   data = datos)
 
Residuals:
  Min     1Q Median     3Q    Max
-5.856 -4.377  1.032  3.371  4.292
 
Coefficients:
                    Estimate Std. Error t value Pr(>|t|)    
`Robo de negocio`         17.43336    1.62549   10.72 3.19e-14 ***
`Robo en casa`       -0.71336    0.09907   -7.20 4.06e-09 ***
`Robo con violencia`  0.34068    0.01916   17.78  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
 
Residual standard error: 3.783 on 47 degrees of freedom
Multiple R-squared:  0.8851,​Adjusted R-squared:  0.8802
F-statistic: 180.9 on 2 and 47 DF,  p-value: < 2.2e-16
 
 
> install.packages("ggplot2")
Restarting R session...
> install.packages("ggplot2")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
 
https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/bodes/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/ggplot2_4.0.3.zip'
Content type 'application/zip' length 8465966 bytes (8.1 MB)
downloaded 8.1 MB
 
package ‘ggplot2’ successfully unpacked and MD5 sums checked
 
The downloaded binary packages are in
​C:\Users\bodes\AppData\Local\Temp\Rtmpy6cYHo\downloaded_packages
> library(ggplot2)
> df_barras <- data.frame( problemas = c("Robo de negocio", "Robo en casa", "Robo con violencia"), personas = c(75, 38 , 44) )
 
 
> print(df_barras)
          problemas personas
1    Robo de negocio       75
2       Robo en casa       38
3 Robo con violencia       44
> instalar.paquetes("ggplot2") biblioteca(ggplot2)
Error: unexpected symbol en "instalar.paquetes("ggplot2") biblioteca"
 
> ggplot(df_barras, aes(x = problemas, y = personas))+ geom_col(aes(fill = problemas))+ labs( title = "Cantidad de personas por problemas", x = "problemas", y = "Número de personas" ) + theme_minimal()
 
### Grafica de barras
<img width="891" height="732" alt="image" src="https://github.com/user-attachments/assets/aba12b11-dde5-4d5e-8618-b80faacd9ea8" />
[Base_datos_municipios_gto.xlsx](https://github.com/user-attachments/files/27618487/Base_datos_municipios_gto.xlsx) Excel
 

# Conclusiones
Se realizó una regresión lineal múltiple con el objetivo de analizar la relación entre el robo de negocio, el robo en casa y el robo con violencia. Los resultados muestran que el robo con violencia tiene una relación positiva con el robo de negocio, mientras que el robo en casa presenta una relación negativa. Ambas variables resultaron estadísticamente significativas, lo que indica que influyen en el comportamiento del robo de negocio. Asimismo, el modelo obtuvo un R² de 0.8851, lo que significa que explica aproximadamente el 88.5% de la variación observada, indicando un ajuste fuerte y adecuado del modelo.