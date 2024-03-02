#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Enhanced Vegetation Index 2 (EVI2).
#'
#' @description Calculate the Enhanced Vegetation Index 2 (EVI2).
#'
#' @param red Red spectral band data.
#' @param nir NIR spectral band data.
#'
#' @note This index can be used to vegetation-related applications.
#'
#' @return EVI2 data.
#' @export
#'
#' @examples
#'
#' red <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' nir <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' evi2(red, nir)
evi2 <- function(red, nir) {
  UseMethod("evi2")
}

#' @noRd
#' @export
evi2.default <- function(red, nir) {
  .evi2(red, nir)
}

#' @noRd
#' @export
evi2.SpatRaster <- function(red, nir) {
  .raster_from_template(template = red,
                        values = .evi2(terra::values(red), terra::values(nir)))
}
