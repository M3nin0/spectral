#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("NBR operation produces the correct result with vector", {
  nir <- c(1, 2, 3, 4)
  swir_2 <- c(5, 6, 7, 8)

  nbr_res_excepted <- (nir - swir_2) / (nir + swir_2)
  nbr_res_produced <- nbr(nir, swir_2)

  expect_equal(nbr_res_produced,
               nbr_res_excepted)
})


test_that("NBR operation produces the correct result with SpatRaster", {
  nir <- local_create_fake_raster()
  swir_2 <- local_create_fake_raster()

  nbr_res_excepted <- (nir - swir_2) / (nir + swir_2)
  nbr_res_produced <- nbr(nir, swir_2)

  expect_equal(terra::values(nbr_res_produced),
               terra::values(nbr_res_excepted))
})


test_that("NBR2 operation produces the correct result with vector", {
  swir_1 <- c(1, 2, 3, 4)
  swir_2 <- c(5, 6, 7, 8)

  nbr_res_excepted <- (swir_1 - swir_2) / (swir_1 + swir_2)
  nbr_res_produced <- nbr2(swir_1, swir_2)

  expect_equal(nbr_res_produced,
               nbr_res_excepted)
})


test_that("NBR2 operation produces the correct result with SpatRaster", {
  swir_1 <- local_create_fake_raster()
  swir_2 <- local_create_fake_raster()

  nbr_res_excepted <- (swir_1 - swir_2) / (swir_1 + swir_2)
  nbr_res_produced <- nbr2(swir_1, swir_2)

  expect_equal(terra::values(nbr_res_produced),
               terra::values(nbr_res_excepted))
})
