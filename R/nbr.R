#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Normalized Burn Ratio (NBR).
#'
#' @description Normalized Burn Ratio (NBR).
#'
#' @param nir NIR spectral band data.
#' @param swir_2 SWIR 2 spectral band data.
#'
#' @note This index can be used to burn-related applications.
#'
#' @return NBR data.
#' @export
#'
#' @examples
#'
#' nir <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' swir_2 <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' nbr(nir, swir_2)
nbr <- function(nir, swir_2) {
  UseMethod("nbr")
}

#' @noRd
#' @export
nbr.default <- function(nir, swir_2) {
  nbr_op(nir, swir_2)
}

#' @noRd
#' @export
nbr.SpatRaster <- function(nir, swir_2) {
  .raster_from_template(template = nir,
                        values = nbr_op(
                          terra::values(nir),
                          terra::values(swir_2)
                        ))
}

#' @title Normalized Burn Ratio 2 (NBR2).
#'
#' @description Normalized Burn Ratio 2 (NBR2).
#'
#' @param swir_1 SWIR 1 spectral band data.
#' @param swir_2 SWIR 2 spectral band data.
#'
#' @note This index can be used to burn-related applications.
#'
#' @return NBR2 data.
#' @export
#'
#' @examples
#'
#' swir_1 <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' swir_2 <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' nbr2(swir_1, swir_2)
nbr2 <- function(swir_1, swir_2) {
  UseMethod("nbr2")
}

#' @noRd
#' @export
nbr2.default <- function(swir_1, swir_2) {
  nbr2_op(swir_1, swir_2)
}

#' @noRd
#' @export
nbr2.SpatRaster <- function(swir_1, swir_2) {
  .raster_from_template(template = swir_1,
                        values = nbr2_op(
                          terra::values(swir_1),
                          terra::values(swir_2)
                        ))
}
