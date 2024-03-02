#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("NDWI2 operation produces the correct result with vector", {
  green <- c(1, 2, 3, 4)
  nir <- c(5, 6, 7, 8)

  ndwi2_res_excepted <- (green - nir) / (green + nir)
  ndwi2_res_produced <- ndwi2(green, nir)

  expect_equal(ndwi2_res_produced,
               ndwi2_res_excepted)
})


test_that("NDWI2 operation produces the correct result with SpatRaster", {
  green <- local_create_fake_raster()
  nir <- local_create_fake_raster()

  ndwi2_res_excepted <- (green - nir) / (green + nir)
  ndwi2_res_produced <- ndwi2(green, nir)

  expect_equal(terra::values(ndwi2_res_produced),
               terra::values(ndwi2_res_excepted))
})
