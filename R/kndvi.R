#' Calculate the Kernel Normalized Difference Vegetation Index (KNDVI).
#'
#' The Kernel Normalized Difference Vegetation Index (KNDVI) is a vegetation index that is calculated using the specified formula: kndvi = tanh(((nir - red) / (sigma_kndvi * 2))^2).
#'
#' @param red_band A vector or matrix containing the values of the red band.
#' @param nir_band A vector or matrix containing the values of the NIR band.
#' @param sigma_kndvi A numeric value representing the standard deviation or kernel width for KNDVI.
#'
#' @return A vector or matrix containing the calculated KNDVI values.
#'
#' @export
#'
#' @references
#' Camps-Valls, G., Campos-Taberner, M., Moreno-Martínez, Á., Walther, S., Duveiller, G., Cescatti, A., ... & Running, S. W. (2021). A unified vegetation index for quantifying the terrestrial biosphere. Science Advances, 7(9), eabc7447.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' sigma_kndvi <- 0.5*(nir_band + red_band)
#' kndvi(red_band, nir_band, sigma_kndvi)
kndvi <- function(red_band, nir_band, sigma_kndvi) {
  kndvi <- tanh(((nir_band - red_band) / (sigma_kndvi * 2))^2)
  return(kndvi)
}
