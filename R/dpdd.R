#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

#' @title Dual-Pol Diagonal Distance (DPDD).
#'
#' @description Dual-Pol Diagonal Distance (DPDD).
#'
#' @param vv VV band data.
#' @param vh VH band data.
#'
#' @return DPDD data.
#' @export
#'
#' @examples
#'
#' vv <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5))
#' vh <- terra::rast(base::matrix(1:25, nrow = 5, ncol = 5)) + 1
#'
#' dpdd(vv, vh)
dpdd <- function(vv, vh) {
  UseMethod("dpdd")
}

#' @noRd
#' @export
dpdd.default <- function(vv, vh) {
  dpdd_op(vv, vh)
}

#' @noRd
#' @export
dpdd.SpatRaster <- function(vv, vh) {
  .raster_from_template(template = vv,
                        values = dpdd_op(
                          terra::values(vv),
                          terra::values(vh)
                        ))
}
