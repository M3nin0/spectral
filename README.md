
<!-- README.md is generated from README.Rmd. Please edit that file -->

# spectral 🌈

The `spectral` package offers a performant and flexible solution for
calculating various spectral indices from spectral data. Developed with
a focus on efficiency and compatibility, it leverages the power of C++
through Rcpp, ensuring fast computations even with large datasets. This
package is inspired by the Python package `spyndex` and aims to provide
a comprehensive suite of spectral indices for environmental and remote
sensing analysis. Its design is simple, making it a valuable tool for
researchers, students, and professionals working with geospatial data in
R.

> **Note**: This is a **hobby project** created to learn more about [Rcpp](https://www.rcpp.org/).

## Installation

You can install the `spectral` package directly from GitHub (assuming a
future GitHub repository) using the `devtools` package:

``` r
# install.packages("devtools")
devtools::install_github("M3nin0/spectral")
```

# Usage

The `spectral` package simplifies the calculation of spectral indices.
Here’s how to calculate some of the most commonly used indices:

**Load the package**

``` r
library(spectral)
```

**Calculate indices**

``` r
ndvi_result = ndvi(red_band, nir_band)
```

## Available Spectral Indices

The package includes a wide range of spectral indices, implementing
those listed in the “Awesome Spectral Indices” repository. Some of the
indices available include:

- Enhanced Vegetation Index 2 (EVI2)
- Normalized Difference Vegetation Index (NDVI)
- Normalized Difference Water Index (NDWI2)

…and many others, catering to various applications in remote sensing and
environmental monitoring.

# References

- [spyndex](https://github.com/davemlz/spyndex) Python package
- [Rcpp](https://www.rcpp.org/) for Seamless R and C++ Integration
- [Awesome Spectral
  Indices](https://awesome-ee-spectral-indices.readthedocs.io/en/latest/index.html)
