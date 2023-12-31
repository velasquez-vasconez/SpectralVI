% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ndvi.R
\name{ndvi}
\alias{ndvi}
\title{Calculate the Normalized Difference Vegetation Index (NDVI).}
\usage{
ndvi(red_band, nir_band)
}
\arguments{
\item{red_band}{A vector or matrix containing the red band values.}

\item{nir_band}{A vector or matrix containing the near-infrared (NIR) band values.}
}
\value{
A vector or matrix containing the calculated NDVI values.
}
\description{
Calculate the Normalized Difference Vegetation Index (NDVI).
}
\examples{
red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
ndvi(red_band, nir_band)
}
\references{
Carlson, T. N., & Ripley, D. A. (1997). On the relation between NDVI,
fractional vegetation cover, and leaf area index. Remote sensing of Environment, 62(3), 241-252.
}
