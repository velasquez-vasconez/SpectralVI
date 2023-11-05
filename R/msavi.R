#' Calculate the Modified Soil-Adjusted Vegetation Index (MSAVI).
#'
#' The Modified Soil-Adjusted Vegetation Index (MSAVI) is a vegetation index used in remote sensing to assess plant health while considering the influence of bare soil. It is a modification of the Soil-Adjusted Vegetation Index (SAVI).
#'
#' @param red_band A vector or matrix containing the red band values.
#' @param nir_band A vector or matrix containing the near-infrared (NIR) band values.
#' @param L0 A numeric value representing the soil-adjustment factor for MSAVI0. Typically, L0 is set to 0.5 for minimal soil influence.
#'
#' @return A vector or matrix containing the calculated MSAVI values.
#'
#' @references
#' Qi, J., Chehbouni, A., Huete, A. R., Kerr, Y. H., & Sorooshian, S. (1994). A modified soil adjusted vegetation index. Remote sensing of environment, 48(2), 119-126.
#'
#' @export
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' L0 <- 0.5
#' msavi(red_band, nir_band, L0)
msavi <- function(red_band, nir_band, L0) {
  msavi <- ((2 * nir_band + 1) - sqrt((2 * nir_band + 1)^2 - 8 * (nir_band - red_band))) / 2
  return(msavi)
}
