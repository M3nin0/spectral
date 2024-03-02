#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Normalized Difference Vegetation Index (NDVI)
#'
#' @description Calculate the Normalized Difference Vegetation Index (NDVI).
#'
#' @param red Red spectral band data.
#' @param nir NIR spectral band data.
#'
#' @note This index can be used to vegetation-related applications.
#'
#' @return NDVI data.
#' @export
#'
#' @examples
#'
#' red <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' nir <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' ndvi(red, nir)
ndvi <- function(red, nir) {
  UseMethod("ndvi")
}

#' @noRd
#' @export
ndvi.default <- function(red, nir) {
  .ndvi(red, nir)
}

#' @noRd
#' @export
ndvi.SpatRaster <- function(red, nir) {
  .raster_from_template(template = red,
                        values = .ndvi(terra::values(red), terra::values(nir)))
}
