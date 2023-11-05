#' Calculate the Corrected Transformed Vegetation Index (CTVI) based on a previously calculated NDVI.
#'
#' The Corrected Transformed Vegetation Index (CTVI) is a vegetation index derived from NDVI. It is calculated as (NDVI + 0.5) / sqrt(abs(NDVI + 0.5)).
#'
#' @param red_band A vector or matrix containing the red band values.
#' @param nir_band A vector or matrix containing the near-infrared (NIR) band values.
#'
#' @return A vector or matrix containing the calculated CTVI values.
#'
#' @export
#'
#' @references reference
#' Perry Jr, C. R., & Lautenschlager, L. F. (1984). Functional equivalence of spectral vegetation indices. Remote sensing of environment, 14(1-3), 169-182.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#'
ctvi <- function(red_band, nir_band) {
  # Calcular el NDVI
  ndvi_result <- (nir_band - red_band) / (nir_band + red_band)

  # Calcular el CTVI utilizando la fórmula
  ctvi <- (ndvi_result + 0.5) / sqrt(abs(ndvi_result + 0.5))

  return(ctvi)
}
