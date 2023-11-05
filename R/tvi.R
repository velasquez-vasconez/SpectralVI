#' Calculate the Transformed Vegetation Index (TVI).
#'
#' The Transformed Vegetation Index (TVI) is a vegetation index that is calculated using the formula: TVI = sqrt((nir - red) / (nir + red) + 0.5).
#'
#' @param red_band A vector or matrix containing the values of the red band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated TVI values.
#'
#' @export
#'
#' @references
#' Perry Jr, C. R., & Lautenschlager, L. F. (1984). Functional equivalence of spectral vegetation indices. Remote sensing of environment, 14(1-3), 169-182.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' tvi(red_band, nir_band)
tvi <- function(red_band, nir_band) {
  tvi <- sqrt((nir_band - red_band) / (nir_band + red_band) + 0.5)
  return(tvi)
}
