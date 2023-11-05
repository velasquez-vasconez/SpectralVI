# Load your functions
source("R/osavi.R")
source("R/ndvi.R")
source("R/clg.R")
source("R/dvi.R")
source("R/gndvi.R")
source("R/kndvi.R")
source("R/mcari.R")
source("R/msavi.R")
source("R/ndwi.R")
source("R/nrvi.R")
source("R/rvi.R")
source("R/savi.R")
source("R/sr.R")
source("R/tvi.R")
source("R/ctvi.R")

#' Calculate multiple vegetation indices.
#'
#' This function calculates various vegetation indices using the specified formulas and appends the results to the input data frame.
#'
#' @param data A data frame containing the spectral bands.
#' @param red_band_col A character string specifying the column name for the red band.
#' @param nir_band_col A character string specifying the column name for the NIR band.
#' @param redEdge_band_col A character string specifying the column name for the Red Edge band.
#' @param green_band_col A character string specifying the column name for the green band.
#' @param L_osavi A numeric value representing the L parameter for OSAVI.
#' @param L_savi A numeric value representing the L parameter for SAVI.
#' @param L0 A numeric value representing the L parameter for MSAVI.
#'
#' @return A data frame with additional columns for each calculated vegetation index.
#'
#' @export
#'
#' @examples
#'df <- data.frame(
#'red_band = c(0.1, 0.2, 0.3, 0.4, 0.5),
#'nir_band = c(0.2, 0.3, 0.4, 0.5, 0.6),
#'redEdge_band = c(0.8, 0.9, 0.7, 1.0, 1.2),
#'green_band = c(0.4, 0.5, 0.6, 0.7, 0.8))
#'# Data frame
#'result_df <- all_indices(df, "red_band", "nir_band", "redEdge_band", "green_band")
#'# Results
#'result_df
all_indices <- function(data, red_band_col, nir_band_col, redEdge_band_col, green_band_col,
                        L_osavi = 0.16, L_savi = 0.5, L0 = 0.5) {
  if (!all(c(red_band_col, nir_band_col, redEdge_band_col, green_band_col) %in% colnames(data))) {
    stop("Las columnas especificadas para las bandas rojas, NIR, Red Edge y verde no existen en el data frame.")
  }

  # Calcular OSAVI
  data$osavi <- osavi(data[[red_band_col]], data[[nir_band_col]], L_osavi)

  # Calcular NDVI
  data$ndvi <- ndvi(data[[red_band_col]], data[[nir_band_col]])

  # Calcular CLG
  data$clg <- clg(data[[redEdge_band_col]], data[[green_band_col]])

  # Calcular CTVI
  data$ctvi <- ctvi(data[[red_band_col]], data[[nir_band_col]])

  # Calcular DVI
  data$dvi <- dvi(data[[red_band_col]], data[[nir_band_col]])

  # Calcular GNDVI
  data$gndvi <- gndvi(data[[green_band_col]], data[[nir_band_col]])

  # Calcular KNDVI
  data$kndvi <- kndvi(data[[red_band_col]], data[[nir_band_col]], 0.5 * (data[[nir_band_col]] + data[[red_band_col]]))

  # Calcular nrvi
  data$nrvi <- nrvi(data[[red_band_col]], data[[nir_band_col]])

  # Calcular rvi
  data$rvi <- rvi(data[[red_band_col]], data[[nir_band_col]])

  # Calcular savi
  data$savi <- savi(data[[red_band_col]], data[[nir_band_col]], L_savi)

  # Calcular sr
  data$sr <- sr(data[[red_band_col]], data[[nir_band_col]])

  # Calcular ndwi
  data$ndwi <- ndwi(data[[green_band_col]], data[[nir_band_col]])

  # Calcular tvi
  data$tvi <- tvi(data[[red_band_col]], data[[nir_band_col]])

  # Calcular msavi
  data$msavi <- msavi(data[[red_band_col]], data[[nir_band_col]], L0)

  # Calcular mcari
  data$mcari <- mcari(data[[red_band_col]], data[[redEdge_band_col]], data[[green_band_col]])

  return(data)
  }

