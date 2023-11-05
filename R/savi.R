#' Calculate the Soil-Adjusted Vegetation Index (SAVI).
#'
#' The Soil-Adjusted Vegetation Index (SAVI) is a vegetation index used in remote sensing to assess plant health while considering the influence of bare soil. It includes a soil-adjustment factor "L."
#'
#' @param red_band  A vector or matrix containing the red band values.
#' @param nir_band  A vector or matrix containing the near-infrared (NIR) band values.
#' @param L_savi    A numeric value representing the soil-adjustment factor for SAVI. Typically, L_savi is set to 0.5 for minimal soil influence.
#'
#' @return A vector or matrix containing the calculated SAVI values.
#'
#' @export
#'
#' @references
#' Huete, A. R. (1988). A soil-adjusted vegetation index (SAVI). Remote sensing of environment, 25(3), 295-309.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' L_savi <- 0.5
#' savi(red_band, nir_band, L_savi)
savi <- function(red_band, nir_band, L_savi) {
  savi <- ((nir_band - red_band) / (nir_band + red_band + L_savi)) * (1 + L_savi)
  return(savi)
}
