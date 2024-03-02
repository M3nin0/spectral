#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("NDVI operation produces the correct result with vector", {
  red <- c(1, 2, 3)
  nir <- c(1, 2, 3)

  ndvi_res_excepted <- (nir - red) / (nir + red + 1)
  ndvi_res_produced <- ndvi(red, nir)

  expect_equal(ndvi_res_produced,
               ndvi_res_excepted)
})


test_that("NDVI operation produces the correct result with SpatRaster", {
  red <- local_create_fake_raster()
  nir <- local_create_fake_raster()

  ndvi_res_excepted <- (nir - red) / (nir + red)
  ndvi_res_produced <- ndvi(red, nir)

  expect_equal(terra::values(ndvi_res_produced),
               terra::values(ndvi_res_excepted))
})
