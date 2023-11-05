#' Evaluate Random Forest Models with Multiple Indices
#'
#' This function evaluates Random Forest models for a given response variable, predictors, and a set of indices.
#'
#' @param df A data frame containing the input data.
#' @param response_col The name of the response variable.
#' @param predictors A character vector containing the names of predictor variables.
#' @param indices A character vector containing the names of indices to be tested.
#' @param train_percent The percentage of data to use for training.
#' @param tune_grid A data frame specifying the hyperparameter grid for tuning.
#'
#' @return None
#'
#' @import caret
#' @import randomForest
#' @import stats
#'
#' @export
#'
#' @examples
#' @examples
#' \dontrun{
# set.seed(1234)
# n <- 100
# Yield <- rnorm(n, mean = 50, sd = 10)
# Height <- rnorm(n, mean = 160, sd = 20)
# Diameter <- rnorm(n, mean = 40, sd = 5)
# response_col <- "Yield"
# predictors <- c("Height", "Diameter")
# # Data frame
# df <- data.frame(Yield, Height, Diameter)
#
# indices <- c("osavi", "ndvi", "clg", "ctvi", "dvi", "gndvi", "nrvi", "rvi",
# "savi", "sr", "ndwi", "tvi", "msavi", "mcari")
#
# for (index in indices) {
# df[[index]] <- runif(n, min = 0, max = 1)
# }
#
# train_percent <- 0.7
# tune_grid <- expand.grid(mtry = c(2, 4, 6, 8))
#
# evaluate_indices_rf(df, response_col, predictors, indices, train_percent, tune_grid)
# }
evaluate_indices_rf <- function(df, response_col, predictors, indices,
                                train_percent, tune_grid) {
  # Agrega columnas para índices aleatorios (osavi, ndvi, clg, etc.)
  indices <- c("osavi", "ndvi", "clg", "ctvi", "dvi", "gndvi", "nrvi", "rvi", "savi",
               "sr", "ndwi", "tvi", "msavi", "mcari")

  # Inicializa un dataframe para almacenar las métricas de cada modelo
  metrics_df <- data.frame(Index = character(0), R2 = numeric(0), MSE = numeric(0),
                           MAE = numeric(0), RMSE = numeric(0), MAPE = numeric(0),
                           PearsonCorr = numeric(0), SpearmanCorr = numeric(0))

  for (index in indices) {
    data <- df[, c(response_col, predictors, index)]

    # Dividir los datos en conjuntos de entrenamiento y prueba
    set.seed(123)  # Establecer una semilla para reproducibilidad
    trainIndex <- createDataPartition(data[[response_col]], p = train_percent, list = FALSE)
    train_data <- data[trainIndex, ]
    test_data <- data[-trainIndex, ]

    # Crear un objeto trainControl para el ajuste de hiperparámetros
    ctrl <- trainControl(method = "cv", number = 5)  # Validación cruzada con 5 folds

    # Realizar la búsqueda de hiperparámetros
    model <- train(
      train_data[, -1],  # Columnas predictoras
      train_data[, 1],   # Variable de respuesta
      method = "rf",
      trControl = ctrl,
      tuneGrid = tune_grid
    )

    # Evaluar el modelo
    predictions <- predict(model, test_data[, -1])
    r_squared <- cor(predictions, test_data[, 1])^2
    mse <- mean((predictions - test_data[, 1])^2)
    mae <- mean(abs(predictions - test_data[, 1]))
    rmse <- sqrt(mean((predictions - test_data[, 1])^2))
    mape <- mean(abs((predictions - test_data[, 1]) / test_data[, 1])) * 100
    pearson_corr <- cor(predictions, test_data[, 1], method = "pearson")
    spearman_corr <- cor(predictions, test_data[, 1], method = "spearman")

    # Almacena las métricas en el dataframe
    metrics_df <- rbind(metrics_df, data.frame(Index = index,
                                               R2 = round(r_squared, 3),
                                               MSE = round(mse, 3),
                                               MAE = round(mae, 3),
                                               RMSE = round(rmse, 3),
                                               MAPE = round(mape, 3),
                                               PearsonCorr = round(pearson_corr, 3),
                                               SpearmanCorr = round(spearman_corr, 3)))
  }

  # Imprimir las métricas
  print(metrics_df)
}



