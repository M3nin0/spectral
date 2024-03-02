#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Normalized Difference NIR/Blue Blue-normalized difference (BNDVI).
#'
#' @description Calculate the BNDVI.
#'
#' @param blue Blue spectral band data.
#' @param nir NIR spectral band data.
#'
#' @note This index can be used to vegetation-related applications.
#'
#' @return BNDVI data.
#' @export
#'
#' @examples
#'
#' blue <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' nir <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' bndvi(blue, nir)
bndvi <- function(blue, nir) {
  UseMethod("bndvi")
}

#' @noRd
#' @export
bndvi.default <- function(blue, nir) {
  .bndvi(blue, nir)
}

#' @noRd
#' @export
bndvi.SpatRaster <- function(blue, nir) {
  .raster_from_template(template = blue,
                        values = .bndvi(terra::values(blue), terra::values(nir)))
}
