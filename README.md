# geoTerrainR

Paquete en R para análisis de terreno a partir de un DEM.

## Funciones

- `clase_pendiente()`: clasifica la pendiente en 4 categorías

## Ejemplo

```r
library(terra)

dem <- rast(nrows = 50, ncols = 50)
values(dem) <- runif(2500, 0, 1000)

slope <- clase_pendiente(dem)

plot(slope)
