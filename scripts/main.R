library(raster)
library(sf)
source("./functions/calculates_attribute_mean.R")

# Reading tabular data -----------------------------------
iris <- read.csv("./data/csv/iris.csv")
names(iris) <- tolower(names(iris))

# Running example function -----------------------------
avg_sepal_versicolor <- calculates_attribute_mean(iris, "Iris-versicolor", "sepal")
print(avg_sepal_versicolor)

# Reading raster -----------------------------------------
neon_harv_raster <- raster("./data/rasters/neon_harvard_crop.tif")
neon_harv_raster #metadata

# Reading shapefile
neon_boundary_shp <- st_read("./data/shapes/neon_harvard_site.shp")
neon_boundary_shp #metadata


