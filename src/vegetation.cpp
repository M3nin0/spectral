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
NumericVector bndvi_op(NumericVector& blue, NumericVector& nir) {
  return (nir - blue) / (nir + blue);
}


// [[Rcpp::export]]
NumericVector ari_op(NumericVector& green, NumericVector& red_edge_1) {
  return (1 / green) - (1 / red_edge_1);
}
