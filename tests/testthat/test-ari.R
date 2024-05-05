#
# Copyright (C) 2024 Spectral Package.
#
# Spectral Package is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

test_that("ARI operation produces the correct result with vector", {
  green <- c(10, 50, 100)
  red_edge_1 <- c(1, 2, 3)

  ari_res_excepted <- (1 / green) - (1 / red_edge_1)
  ari_res_produced <- ari(green, red_edge_1)

  expect_equal(ari_res_produced,
               ari_res_excepted)
})


test_that("ARI operation produces the correct result with SpatRaster", {
  green <- local_create_fake_raster()
  red_edge_1 <- local_create_fake_raster()

  ari_res_excepted <- (1 / green) - (1 / red_edge_1)
  ari_res_produced <- ari(green, red_edge_1)

  expect_equal(terra::values(ari_res_produced),
               terra::values(ari_res_excepted))
})
