% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clg.R
\name{clg}
\alias{clg}
\title{Calculate the Chlorophyll Green Index (CLG).}
\usage{
clg(redEdge_band, green_band)
}
\arguments{
\item{redEdge_band}{A vector or matrix containing the values of the Red Edge band.}

\item{green_band}{A vector or matrix containing the values of the green band.}
}
\value{
A vector or matrix containing the calculated CLG values.
}
\description{
The Chlorophyll Green Index (CLG) is a vegetation index used to estimate chlorophyll content in plants. It is calculated as (redEdge_band/green_band - 1).
}
\examples{
redEdge_band <- c(0.8, 0.9, 0.7, 1.0, 1.2)
green_band <- c(0.4, 0.5, 0.6, 0.7, 0.8)
clg(redEdge_band, green_band)
}
\references{
Gitelson, A. A. (2016). 15 remote sensing estimation of crop biophysical characteristics at various scales. Hyperspectral Remote Sens. Veget., 20, 329.
}
