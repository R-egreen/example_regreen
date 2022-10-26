#' @description
#' Calculates the average of the attributes of a species.
#' @param df dataframe containing species data. Each record is an individual
#' for which the attributes were measured.
#' @param species_name species name by which attribute average will be
#' calculate.
#' @param attribute characteristics for which the average will be calculated.
#' Example petal or sepal.
#' @return a list containing an error flag and a vector with the average
#' values of the species attributes.
#' @examples
#' species <- rep(c("setosa", "versicolor", "virginica"), times = 20)
#' attributes <- matrix(runif(n = 60, min = 0, max = 5), nrow = 15)
#' df <- data.frame(attributes, species)
#' avg_sepal_setosa <- calculates_attribute_mean(df, "setosa", "X2")
#'
calculates_attribute_mean <- function(df,
                                      species_name,
                                      attribute) {
  mean_size <- tryCatch(
    {
      spp_data <- df[df$species == species_name, ]
      attribute_data <- spp_data[, grepl(attribute, colnames(spp_data))]
      mean_size <- sapply(Filter(is.numeric, attribute_data), mean)
      return(mean_size)
    },
    error = function(e) {
      return(NULL)
    }
  )
}
