#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector ndvi_op(NumericVector& red, NumericVector& nir) {
  return (nir - red) / (nir + red);
}


// [[Rcpp::export]]
NumericVector evi2_op(NumericVector& red, NumericVector& nir) {
  return (nir - red) / (nir + red + 1);
}


// [[Rcpp::export]]
NumericVector ndwi2_op(NumericVector& green, NumericVector& nir) {
  return (green - nir) / (green + nir);
}


// [[Rcpp::export]]
NumericVector bndvi_op(NumericVector& blue, NumericVector& nir) {
  return (nir - blue) / (nir + blue);
}
