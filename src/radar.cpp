#include <Rcpp.h>

using namespace Rcpp;

// [[Rcpp::export]]
NumericVector dpdd_op(NumericVector& vv, NumericVector& vh) {
  return (vv + vh) / (std::pow(2.0, 0.5));
}

// [[Rcpp::export]]
NumericVector dprvihh_op(NumericVector& hv, NumericVector& hh) {
  return (4.0 * hv) / (hh + hv);
}

// [[Rcpp::export]]
NumericVector dprvivv_op(NumericVector& vv, NumericVector& vh) {
  return (4.0 * vh) / (vv + vh);
}

// [[Rcpp::export]]
NumericVector ndpoll_op(NumericVector& vv, NumericVector& vh) {
  return (vv - vh) / (vv + vh);
}

// [[Rcpp::export]]
NumericVector qprvi_op(NumericVector& vv, NumericVector& hv, NumericVector& hh) {
  return (8.0 * hv) / (hh + vv + 2.0 * hv);
}
