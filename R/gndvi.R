#' Calculate the Green Normalized Difference Vegetation Index (GNDVI).
#'
#' The Green Normalized Difference Vegetation Index (GNDVI) is a vegetation index that is calculated as (NIR - Green) / (NIR + Green).
#'
#' @param green_band A vector or matrix containing the values of the green band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated GNDVI values.
#'
#' @export
#'
#' @references
#' Gitelson, A. A., & Merzlyak, M. N. (1998). Remote sensing of chlorophyll concentration in higher plant leaves. Advances in Space Research, 22(5), 689-692.
#'
#' @examples
#' green_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' gndvi(green_band, nir_band)
gndvi <- function(green_band, nir_band) {
  gndvi <- (nir_band - green_band) / (nir_band + green_band)
  return(gndvi)
}
