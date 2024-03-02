#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export(.ndvi)]]
NumericVector ndvi(NumericVector& red, NumericVector& nir) {
  return (nir - red) / (nir + red);
}


// [[Rcpp::export(.evi2)]]
NumericVector evi2(NumericVector& red, NumericVector& nir) {
  return (nir - red) / (nir + red + 1);
}


// [[Rcpp::export(.ndwi2)]]
NumericVector ndwi2(NumericVector& green, NumericVector& nir) {
  return (green - nir) / (green + nir);
}


// [[Rcpp::export(.bndvi)]]
NumericVector bndvi(NumericVector& blue, NumericVector& nir) {
  return (nir - blue) / (nir + blue);
}




