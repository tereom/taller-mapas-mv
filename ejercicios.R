# Ejercicios ---------

## Llamar paquetes ----
library(tidyverse) # arreglar datos (dplyr) y graficar (ggplot2)
library(sf) # simple features para trabajar con datos espaciales

## 1. Ejercicios: Estáticos ----
# Grafica los polígonos de barrios de Montevideo
# archivos en datos/poligonos-uy/ine_barrios_mvd_nbi85
barrios_mv <- read_sf(#rellena)

ggplot(barrios_mv) +
  geom_#rellena()

#Lee el archivo en `datos/uptu_cultura` y agrega a la misma gráfica que los
# polígonos.
cultura_mv <- #rellena
ggplot() +
  geom_#rellena
  geom_#rellena

## 2. Ejercicios: Interactivos ----
library(leaflet)
# 0. Corre el código
# 1. Reproyecta los datos cultura_mv para poder usar en leaflet (código 4326)
cultura_mv_longlat <- st_transform(#rellena, #rellena)
leaflet(data = cultura_mv_longlat) %>%
  addTiles() %>%
  addCircles()

barrios_longlat <- barrios_mv %>%
  st_transform(crs = 4326)

leaflet(data = barrios_longlat) %>%
  addTiles() %>%
  addPolygons()

# datos de ubicaciones RLadies
library(googlesheets4)
url <- ("https://docs.google.com/spreadsheets/d/1h7n3dpjqGofWYtKf5ADCDAr8nT5U5UalMFq9nS3G_ew/edit#gid=0")
gs4_deauth()
colab <- read_sheet(url)
# convertimos a objeto sf
colab_longlat <- colab %>%
  st_as_sf(coords = c("lat", "long")) %>%
  st_sf(crs = 4326)

# 2. Agrega al siguiente código la ubicación de los puntos de interés de Montevideo.
# Recuerda que debes usar datos en long/lat
leaflet(data = colab_longlat) %>%
  addTiles() %>%
  addMarkers(popup = ~nombre) %>%
  add#rellena(data = #rellena)

# 3. Experimenta con otros fondos, utiliza la función addProviderTiles() ----
### explora los fondo http://leaflet-extras.github.io/leaflet-providers/preview/index.html
leaflet(data = colab_longlat) %>%
  addProviderTiles(providers$#rellena) %>%
  addMarkers(popup = ~nombre)
