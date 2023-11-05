#' Calculate the Modified Chlorophyll Absorption Ratio Index (MCARI).
#'
#' The Modified Chlorophyll Absorption Ratio Index (MCARI) is a vegetation index that is calculated using the specified formula.
#'
#' @param red_band A vector or matrix containing the values of the red band.
#' @param redEdge_band A vector or matrix containing the values of the Red Edge 1 band.
#' @param green_band A vector or matrix containing the values of the green band.
#'
#' @return A vector or matrix containing the calculated MCARI values.
#'
#' @export
#'
#' @references
#' Daughtry, C. S., Walthall, C. L., Kim, M. S., De Colstoun, E. B., & McMurtrey Iii, J. E. (2000). Estimating corn leaf chlorophyll concentration from leaf and canopy reflectance. Remote sensing of Environment, 74(2), 229-239.
#'
#' @examples
#' red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
#' redEdge_band <- c(0.15, 0.25, 0.35, 0.45, 0.55)
#' green_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
#' mcari(red_band, redEdge_band, green_band)
mcari <- function(red_band, redEdge_band, green_band) {
  mcari <- ((redEdge_band - red_band) - (redEdge_band - green_band)) * (redEdge_band / red_band)
  return(mcari)
}
