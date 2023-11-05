
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SpectralVI

<!-- badges: start -->
<!-- badges: end -->

**SpectralVI** is an R package designed to unlock the full potential of
spectral data analysis. It empowers researchers, scientists, and data
enthusiasts to harness the power of spectral information for a wide
range of applications, from remote sensing to environmental monitoring.

## Key Features

- Analyze and visualize spectral data with ease.
- Perform advanced remote sensing tasks, such as vegetation index
  calculations and land cover classification.
- Access a rich set of tools for spectral data pre-processing and
  post-processing.
- Seamlessly integrate spectral analysis into your data science and
  geospatial workflows.

Whether you’re an ecologist, agronomist, or simply passionate about
exploring the world through spectral data, SpectralVI provides the tools
and capabilities you need to make sense of the complex spectral world.

## Installation

You can install the development version of SpectralVI from
[GitHub](https://github.com/) with:

``` r
# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Install SpectralVI
devtools::install_github("velasquez-vasconez/SpectralVI")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(SpectralVI)
set.seed(1234)
# Generate random data
n <- 100
Yield <- rnorm(n, mean = 50, sd = 10)
Height <- rnorm(n, mean = 160, sd = 20)
Diameter <- rnorm(n, mean = 40, sd = 5)

# Define the response column name
response_col <- "Yield"

# Define predictor columns
predictors <- c("Height", "Diameter")

# Create a data frame
df <- data.frame(Yield, Height, Diameter)

# Define a list of indices
indices <- c("osavi", "ndvi", "clg", "ctvi", "dvi", "gndvi", "nrvi", "rvi",
    "savi", "sr", "ndwi", "tvi", "msavi", "mcari")

# Add columns for indices with random data
for (index in indices) {
  df[[index]] <- runif(n, min = 0, max = 1)
}

# Set the percentage of data for training
train_percent <- 0.7

# Define the hyperparameter tuning grid to evaluate Random Forest Model
tune_grid <- expand.grid(mtry = c(2, 4, 6, 8))

# Results: Evaluate the Random Forest Model with Multiple Indices
evaluate_indices_rf(df, response_col, predictors, indices, train_percent, tune_grid)
#>    Index    R2     MSE   MAE   RMSE   MAPE PearsonCorr SpearmanCorr
#> 1  osavi 0.101 143.837 9.265 11.993 19.674      -0.317       -0.253
#> 2   ndvi 0.195  99.442 8.088  9.972 17.615       0.441        0.293
#> 3    clg 0.019 116.542 8.475 10.795 18.367       0.139        0.121
#> 4   ctvi 0.001 126.187 8.590 11.233 18.702       0.035       -0.028
#> 5    dvi 0.000 124.868 8.939 11.174 19.216       0.014        0.096
#> 6  gndvi 0.109 103.943 8.444 10.195 18.095       0.330        0.290
#> 7   nrvi 0.030 113.252 8.630 10.642 18.660       0.174        0.048
#> 8    rvi 0.023 149.927 9.737 12.244 20.548      -0.150       -0.151
#> 9   savi 0.003 120.248 8.592 10.966 18.324       0.050        0.059
#> 10    sr 0.067 112.080 8.825 10.587 19.489       0.258        0.155
#> 11  ndwi 0.011 127.164 8.878 11.277 18.956       0.103        0.181
#> 12   tvi 0.000 123.222 8.930 11.101 19.589       0.010       -0.023
#> 13 msavi 0.081 107.636 8.086 10.375 17.538       0.284        0.206
#> 14 mcari 0.047 112.991 8.817 10.630 19.279       0.218        0.200
```

## Contributing

We welcome contributions from the community. If you find a bug, have a
feature request, or want to contribute to the development of SpectralVI,
please follow these steps:

1.  Check if an issue already exists in the [issue
    tracker](https://github.com/pavelasquezvasconez/SpectralVI/issues).
    If not, open a new issue, providing as much detail as possible.

2.  If you’re interested in contributing code, please fork the
    repository and submit a pull request. Make sure to follow our coding
    guidelines and maintain clear commit messages.

3.  Help us improve the documentation by fixing typos, improving
    explanations, or adding examples.

Your contributions are greatly appreciated.
