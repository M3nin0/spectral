#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("EVI operation produces the correct result with vector", {
  red <- c(1, 2, 3)
  nir <- c(1, 2, 3)

  evi_res_excepted <- (nir - red) / (nir + red + 1)
  evi_res_produced <- evi2(red, nir)

  expect_equal(evi_res_produced,
               evi_res_excepted)
})


test_that("EVI operation produces the correct result with SpatRaster", {
  red <- local_create_fake_raster()
  nir <- local_create_fake_raster()

  evi_res_excepted <- (nir - red) / (nir + red + 1)
  evi_res_produced <- evi2(red, nir)

  expect_equal(terra::values(evi_res_produced),
               terra::values(evi_res_excepted))
})
