#' Calculate the Simple Ratio Vegetation Index (SR).

#'
#' The Simple Ratio Vegetation Index (SR) is a vegetation index that is calculated using the formula: SR = nir / red.
#'
#' @param red_band A vector or matrix containing the values of the red band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated SR values.
#'
#' @export
#'
#' @references
#' Birth, G. S., & McVey, G. R. (1968). Measuring the color of growing turf with a reflectance spectrophotometer 1. Agronomy Journal, 60(6), 640-643.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' sr(red_band, nir_band)
sr <- function(red_band, nir_band) {
  sr <- nir_band / red_band
  return(sr)
}
