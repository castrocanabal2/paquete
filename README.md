# geoTerrainR

Paquete en R para análisis de terreno a partir de un DEM.

## Funciones

- `slope_classes()`: clasifica la pendiente en 4 categorías

## Ejemplo

```r
library(terra)

dem <- rast(nrows = 50, ncols = 50)
values(dem) <- runif(2500, 0, 1000)

slope <- slope_classes(dem)

plot(slope)
