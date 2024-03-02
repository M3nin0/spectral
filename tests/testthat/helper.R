#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @noRd
#' @title Create fake raster.
#'
#' @description Create a fake [terra::rast].
#'
local_create_fake_raster <- function() {
  tmp <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))

  terra::ext(tmp) <- c(0, 5, 0, 5)
  terra::crs(tmp) <- "EPSG:4326"

  tmp
}
