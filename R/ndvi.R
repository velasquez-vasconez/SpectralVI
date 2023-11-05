#' Calculate the Normalized Difference Vegetation Index (NDVI).
#'
#' @param red_band A vector or matrix containing the red band values.
#' @param nir_band A vector or matrix containing the near-infrared (NIR) band values.
#'
#' @return A vector or matrix containing the calculated NDVI values.
#'
#' @export
#'
#' @references
#' Carlson, T. N., & Ripley, D. A. (1997). On the relation between NDVI,
#' fractional vegetation cover, and leaf area index. Remote sensing of Environment, 62(3), 241-252.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' ndvi(red_band, nir_band)
ndvi <- function(red_band, nir_band) {
  ndvi <- (nir_band - red_band) / (nir_band + red_band)
  return(ndvi)
}
