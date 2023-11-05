#' Calculate the Normalized Difference Water Index (NDWI).
#'
#' The Normalized Difference Water Index (NDWI) is a water index that is calculated using the specified formula: (green - NIR) / (green + NIR).
#'
#' @param green_band A vector or matrix containing the values of the green band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#'
#' @return A vector or matrix containing the calculated NDWI values.
#'
#' @export
#'
#' @references
#' McFeeters, S. K. (1996). The use of the Normalized Difference Water Index (NDWI) in the delineation of open water features. International journal of remote sensing, 17(7), 1425-1432.
#'
#' @examples
#' green_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' ndwi(green_band, nir_band)
ndwi <- function(green_band, nir_band) {
  ndwi <- (green_band - nir_band) / (green_band + nir_band)
  return(ndwi)
}
