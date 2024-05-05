#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Normalized Difference Water Index (NDWI)
#'
#' @description Calculate the Normalized Difference Water Index (NDWI).
#'
#' @note This index can be used to water-related applications.
#'
#' @param green Green spectral band data.
#' @param nir NIR spectral band data.
#'
#' @return NDWI data.
#' @export
#'
#' @examples
#'
#' green <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' nir <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' ndwi(green, nir)
ndwi <- function(green, nir) {
  UseMethod("ndwi")
}

#' @noRd
#' @export
ndwi.default <- function(green, nir) {
  ndwi_op(green , nir)
}

#' @noRd
#' @export
ndwi.SpatRaster <- function(green, nir) {
  .raster_from_template(template = green,
                        values = ndwi_op(
                          terra::values(green),
                          terra::values(nir)
                        ))
}
