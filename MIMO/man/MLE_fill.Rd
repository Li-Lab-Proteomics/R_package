% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MLE_fill.R
\name{MLE_fill}
\alias{MLE_fill}
\title{Wrapper function for MLE-based imputation}
\usage{
MLE_fill(data)
}
\arguments{
\item{RawData}{Matrix with missing values}
}
\value{
A complete matrix with missing values imputed by MLE
}
\description{
This function is a wrapper for the \code{\link{impute.wrapper.MLE}} function, which performs MLE imputation on a data matrix containing missing values. Use the maximum likelihood estimation principle to obtain the unknown parameter estimates obeyed by the quantitative data.
}
\note{
Require \code{\link{imputeLCMD}}
}
\examples{
##################################### a simulated example #################
rm(list = ls())
set.seed(2020)
a <- matrix(data = rnorm(100000), ncol = 100) # Generate random matrix
a[sample(length(a), 10000)] <- NA # Generate missing values randomly
if(require(imputeLCMD)){
  a_1 <- MLE_fill(a)
}

}
\seealso{
\code{\link{BPCA_fill}}, \code{\link{LLS_fill}},  \code{\link{Mean_fill}}, \code{\link{QRILC_fill}}, \code{\link{kNN_fill}}, \code{\link{SVD_fill}}, \code{\link{Min_fill}}
}
