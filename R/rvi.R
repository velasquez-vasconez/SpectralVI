#' Calculate the Ratio Vegetation Index.
#'
#' The Ratio Vegetation Index (RVI) is a vegetation index that is calculated using the formula: RVI = red / nir.
#'
#' @param red_band A vector or matrix containing the values of the red band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated Ratio Index values.
#'
#' @export
#'
#' @references
#' Jackson, R. D., & Huete, A. R. (1991). Interpreting vegetation indices. Preventive veterinary medicine, 11(3-4), 185-200.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' rvi(red_band, nir_band)
rvi <- function(red_band, nir_band) {
  rvi <- red_band / nir_band
  return(rvi)
}
