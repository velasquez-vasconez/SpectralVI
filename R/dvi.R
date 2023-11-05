#' Calculate the Difference Vegetation Index (DVI).
#'
#' The Difference Vegetation Index (DVI) is a simple vegetation index calculated as NIR - Red.
#'
#' @param red_band A vector or matrix containing the values of the red band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated DVI values.
#'
#' @export
#'
#' @references
#' Richardson, A. J., & Everitt, J. H. (1992). Using spectral vegetation indices to estimate rangeland productivity. Geocarto International, 7(1), 63-69.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' dvi(red_band, nir_band)
dvi <- function(red_band, nir_band) {
  dvi <- nir_band - red_band
  return(dvi)
}


