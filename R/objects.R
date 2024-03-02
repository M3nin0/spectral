#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @noRd
#'
#' @title Create raster from template.
#'
#' @description Creates a new raster, with values, from an already existing
#'              raster.
#'
.raster_from_template <- function(template, values) {
  tmp <- terra::rast(
    nrows = terra::nrow(template),
    ncols = terra::ncol(template),
    crs = terra::crs(template),
    extent = terra::ext(template)
  )

  terra::values(tmp) <- values

  tmp
}
