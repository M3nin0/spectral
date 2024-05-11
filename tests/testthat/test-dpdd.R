#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("DPDD operation produces the correct result with vector", {
  vv <- c(1, 2, 3, 4)
  vh <- c(5, 6, 7, 8)

  dpdd_res_excepted <- (vv + vh) / (2**0.5)
  dpdd_res_produced <- dpdd(vv, vh)

  expect_equal(dpdd_res_produced,
               dpdd_res_excepted)
})


test_that("DPDD operation produces the correct result with SpatRaster", {
  vv <- local_create_fake_raster()
  vh <- local_create_fake_raster()

  dpdd_res_excepted <- (vv + vh) / (2**0.5)
  dpdd_res_produced <- dpdd(vv, vh)

  expect_equal(terra::values(dpdd_res_produced),
               terra::values(dpdd_res_excepted))
})
