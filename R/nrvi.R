#' Calculate the Normalized Ratio Vegetation Index (NRVI).
#'
#' The Normalized Ratio Vegetation Index (NRVI) is a vegetation index calculated using the formula: NRVI = ((red / nir) - 1) / ((red / nir) + 1)
#' @param red_band A vector or matrix containing the values of the red band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated NRVI values.
#'
#' @export
#'
#' @references
#' Baret, F., & Guyot, G. (1991). Potentials and limits of vegetation indices for LAI and APAR assessment. Remote sensing of environment, 35(2-3), 161-173.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' nrvi(red_band, nir_band)
nrvi <- function(red_band, nir_band) {
  nrvi <- ((red_band / nir_band) - 1) / ((red_band / nir_band) + 1)
  return(nrvi)
}
