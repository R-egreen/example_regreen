library(raster)
library(sf)
source("./functions/calculates_attribute_mean.R")

# Reading tabular data ---------------------------------------------------------
iris <- read.csv("./data/csv/iris.csv")
names(iris) <- tolower(names(iris))

# Running example function -----------------------------------------------------
sepal_versicolor <- calculates_attribute_mean(df = iris,
                                              species_name = "Iris-versicolor",
                                              attribute = "sepal")
print(sepal_versicolor)

# Reading raster ---------------------------------------------------------------
neon_harv_raster <- raster("./data/rasters/neon_harvard_crop.tif")
neon_harv_raster

# Reading shapefile
neon_boundary_shp <- st_read("./data/shapes/neon_harvard_site.gpkg")
neon_boundary_shp
