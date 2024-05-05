#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Anthocyanin Reflectance Index (ARI)
#'
#' @description Calculate the Anthocyanin Reflectance Index (ARI).
#'
#' @param green Green spectral band data.
#' @param red_edge_1 Red Edge 1 spectral band data.
#'
#' @note This index can be used to vegetation-related applications.
#'
#' @return ARI data.
#' @export
#'
#' @examples
#'
#' green <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' red_edge_1 <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' ari(green, red_edge_1)
ari <- function(green, red_edge_1) {
  UseMethod("ari")
}

#' @noRd
#' @export
ari.default <- function(green, red_edge_1) {
  ari_op(green, red_edge_1)
}

#' @noRd
#' @export
ari.SpatRaster <- function(green, red_edge_1) {
  .raster_from_template(template = green,
                        values = ari_op(
                          terra::values(green),
                          terra::values(red_edge_1)
                        ))
}
