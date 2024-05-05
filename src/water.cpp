#include <Rcpp.h>
using namespace Rcpp;


// [[Rcpp::export]]
NumericVector ndwi_op(NumericVector& green, NumericVector& nir) {
  return (green - nir) / (green + nir);
}

