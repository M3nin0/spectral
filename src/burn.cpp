#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector nbr_op(NumericVector& nir, NumericVector& swir_2) {
  return (nir - swir_2) / (nir + swir_2);
}

// [[Rcpp::export]]
NumericVector nbr2_op(NumericVector& swir_1, NumericVector& swir_2) {
  return (swir_1 - swir_2) / (swir_1 + swir_2);
}
