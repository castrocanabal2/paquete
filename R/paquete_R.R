#' Clasificar la pendiente a partir de un DEM
#'
#' Esta función calcula la pendiente desde un modelo digital de elevaciones (DEM)
#' y la clasifica en cuatro categorías:
#' 1 = llana, 2 = suave, 3 = moderada, 4 = fuerte.
#'
#' @param dem Un objeto `terra::SpatRaster` que representa un DEM.
#' @param unit Unidad de la pendiente. Por defecto `"degrees"`.
#' @importFrom terra terrain
#' @return Un `terra::SpatRaster` con clases de pendiente.
#' @export

clase_pendiente <- function(dem, unit = "degrees") {

  if (!inherits(dem, "SpatRaster")) {

    stop("`dem` debe ser un SpatRaster.")
  }

  slope <- terra::terrain(dem, v = "slope", unit = unit)

  out <- slope

  out[] <- NA

  out[slope < 5] <- 1

  out[slope >= 5 & slope < 15] <- 2

  out[slope >= 15 & slope < 30] <- 3

  out[slope >= 30] <- 4

  levels(out) <- data.frame(

    value = 1:4,

    class = c("llana", "suave", "moderada", "fuerte")
  )

  names(out) <- "slope_class"

  return(out)
}

