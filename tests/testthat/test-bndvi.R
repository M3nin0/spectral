#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("BNDVI operation produces the correct result with vector", {
  blue <- c(1, 2, 3)
  nir <- c(5, 6, 7)

  bndvi_res_excepted <- (nir - blue) / (nir + blue)
  bndvi_res_produced <- bndvi(blue, nir)

  expect_equal(bndvi_res_produced,
               bndvi_res_excepted)
})


test_that("BNDVI operation produces the correct result with SpatRaster", {
  blue <- local_create_fake_raster()
  nir <- local_create_fake_raster()

  bndvi_res_excepted <- (nir - blue) / (nir + blue)
  bndvi_res_produced <- bndvi(blue, nir)

  expect_equal(terra::values(bndvi_res_produced),
               terra::values(bndvi_res_excepted))
})
