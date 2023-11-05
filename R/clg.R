#' Calculate the Chlorophyll Green Index (CLG).
#'
#' The Chlorophyll Green Index (CLG) is a vegetation index used to estimate chlorophyll content in plants. It is calculated as (redEdge_band/green_band - 1).
#'
#' @param redEdge_band A vector or matrix containing the values of the Red Edge band.
#' @param green_band A vector or matrix containing the values of the green band.
#'
#' @return A vector or matrix containing the calculated CLG values.
#'
#' @references
#' Gitelson, A. A. (2016). 15 remote sensing estimation of crop biophysical characteristics at various scales. Hyperspectral Remote Sens. Veget., 20, 329.
#'
#' @export
#'
#' @examples
#' redEdge_band <- c(0.8, 0.9, 0.7, 1.0, 1.2)
#' green_band <- c(0.4, 0.5, 0.6, 0.7, 0.8)
#' clg(redEdge_band, green_band)
clg <- function(redEdge_band, green_band) {
  clg <- (redEdge_band / green_band) - 1
  return(clg)
}
