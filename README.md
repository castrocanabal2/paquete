# Paquete

Paquete en R para análisis de terreno a partir de un DEM.

## Funciones

- `clase_pendiente()`: clasifica la pendiente en 4 categorías

## Ejemplo

```r
library(terra)

# Cargar un DEM desde archivo
dem <- rast("ruta/a/tu/dem.tif")

# Aplicar la función
slope <- clase_pendiente(dem)

# Visualizar resultado
plot(slope)
