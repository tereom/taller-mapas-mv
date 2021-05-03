# Ejercicios ---------

## Llamar paquetes ----
library(tidyverse) # arreglar datos (dplyr) y graficar (ggplot2)
library(sf) # simple features para trabajar con datos espaciales

## 1. Ejercicios: Montevideo ----
# Grafica los polígonos de barrios de Montevideo
# archivos en datos/poligonos-uy/ine_barrios_mvd_nbi85
barrios_mv <- read_sf(#rellena)

ggplot(barrios_mv) +
  geom_#cambia()

#Lee el archivo en `datos/uptu_cultura` y agrega a la misma gráfica que los
# polígonos.
cultura_mv <- #rellena
ggplot() +
  #rellena
  #rellena
