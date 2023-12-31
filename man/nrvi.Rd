% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nrvi.R
\name{nrvi}
\alias{nrvi}
\title{Calculate the Normalized Ratio Vegetation Index (NRVI).}
\usage{
nrvi(red_band, nir_band)
}
\arguments{
\item{red_band}{A vector or matrix containing the values of the red band.}

\item{nir_band}{A vector or matrix containing the values of the NIR band.}
}
\value{
A vector or matrix containing the calculated NRVI values.
}
\description{
The Normalized Ratio Vegetation Index (NRVI) is a vegetation index calculated using the formula: NRVI = ((red / nir) - 1) / ((red / nir) + 1)
}
\examples{
red_band <- c(0.1, 0.2, 0.3, 0.4, 0.5)
nir_band <- c(0.2, 0.3, 0.4, 0.5, 0.6)
nrvi(red_band, nir_band)
}
\references{
Baret, F., & Guyot, G. (1991). Potentials and limits of vegetation indices for LAI and APAR assessment. Remote sensing of environment, 35(2-3), 161-173.
}
