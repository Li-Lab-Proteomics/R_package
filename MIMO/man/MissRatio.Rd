% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MissRatio.R
\name{MissRatio}
\alias{MissRatio}
\title{Function to calculate missing ratio}
\usage{
MissRatio(x)
}
\arguments{
\item{x}{a vector, matrix, array or dataframe}
}
\value{
Missing ratio of the input data
}
\description{
Calculate the proportion of missing values in the input data. Input must be a vector, matrix, array or dataframe
}
\examples{
##################################### a simulated example #################
rm(list = ls())
set.seed(2020)
a <- matrix(data = rnorm(100000), ncol = 100) # Generate random matrix
a[sample(length(a), 10000)] <- NA # Generate missing values randomly
MissRatio(a) # Calculate the missing ratio of 'a'

}
