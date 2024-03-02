#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Normalized Difference Water Index (NDWI2)
#'
#' @description Calculate the Normalized Difference Water Index (NDWI2).
#'
#' @note This index can be used to water-related applications.
#'
#' @param green Green spectral band data.
#' @param nir NIR spectral band data.
#'
#' @return NDWI2 data.
#' @export
#'
#' @examples
#'
#' green <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' nir <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' ndwi2(green, nir)
ndwi2 <- function(green, nir) {
  UseMethod("ndwi2")
}

#' @noRd
#' @export
ndwi2.default <- function(green, nir) {
  .ndwi2(green , nir)
}

#' @noRd
#' @export
ndwi2.SpatRaster <- function(green, nir) {
  .raster_from_template(template = green,
                        values = .ndwi2(terra::values(green), terra::values(nir)))
}
