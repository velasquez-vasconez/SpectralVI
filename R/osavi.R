#' Calculate the Soil-Adjusted Vegetation Index (OSAVI).
#'
#' The Soil-Adjusted Vegetation Index (OSAVI) is a vegetation index used in remote sensing to assess plant health while minimizing the influence of bare soil. It is a modification of the Normalized Difference Vegetation Index (NDVI) that includes a soil-adjustment factor "L."
#'
#' @param red_band A vector or matrix containing the red band values.
#' @param nir_band A vector or matrix containing the near-infrared (NIR) band values.
#' @param L_osavi A numeric value representing the soil-adjustment factor. Typically, L is set to 0.16 for vegetation with minimal soil cover.
#'
#' @return A vector or matrix containing the calculated OSAVI values.
#'
#' @export
#'
#' @references
#' Rondeaux, G., Steven, M., & Baret, F. (1996). Optimization of soil-adjusted vegetation indices. Remote sensing of environment, 55(2), 95-107.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' L_osavi <- 0.16
#' osavi(red_band, nir_band, L_osavi)
osavi <- function(red_band, nir_band, L_osavi) {
  osavi <- (nir_band - red_band) / (nir_band + red_band + L_osavi)
  return(osavi)
}
