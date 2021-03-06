% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FuzzyMMOORA.R
\name{FuzzyMMOORA}
\alias{FuzzyMMOORA}
\title{Implementation of Fuzzy MULTIMOORA Method for Multi-Criteria Decision Making Problems.}
\usage{
FuzzyMMOORA(decision, weights, cb)
}
\arguments{
\item{decision}{The decision matrix (\emph{m} x (\emph{n}*3)) with the values of the \emph{m} alternatives, for the \emph{n} criteria, and multiplied by 3 since they are triangular fuzzy numbers.}

\item{weights}{A vector of length \emph{n}*3, containing the fuzzy weights for the criteria.}

\item{cb}{A vector of length \emph{n}. Each component is either \code{cb(i)='max'} if the \emph{i-th} criterion is benefit or \code{cb(i)='min'} if the \emph{i-th} criterion is a cost.}
}
\value{
\code{FuzzyMMOORA} returns a data frame which contains the scores and the four rankings calculated (Ratio System, Reference Point, Multiplicative Form and Multi-MOORA ranking).
}
\description{
The \code{FuzzyMMOORA} function implements both the Fuzzy Multi-Objetive Optimization by Ration Analysis (MOORA) and the Fuzzy "Full Multiplicative Form" (Fuzzy MULTIMOORA).
}
\examples{

 d <- matrix(c(0.63,0.42,0.63,0.67,0.8,0.59,0.8,0.84,0.92,0.75,0.92,0.92,0.29,0.71,0.75,
 0.42,0.46,0.88,0.92,0.59,0.63,1,1,0.71,0.75,0.59,0.42,0.42,0.92,0.75,0.58,0.59,1,0.88,
 0.76,0.75,0.59,0.71,0.42,0.33,0.75,0.88,0.58,0.51,0.88,0.96,0.71,0.67,0.5,0.67,0.67,
 0.67,0.67,0.84,0.84,0.84,0.84,0.92,0.96,0.96,0.67,0.54,0.54,0.25,0.84,0.71,0.71,0.42,
 0.96,0.88,0.88,0.59,0.67,0.71,0.42,0.25,0.84,0.88,0.59,0.42,0.96,0.96,0.75,0.58,0.54,
 0.625,0.625,0.295,0.705,0.79,0.795,0.46,0.88,0.92,0.875,0.62),nrow=4,ncol=24)
 w <- c(1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24,
 1/24,1/24,1/24,1/24,1/24,1/24,1/24,1/24)
 cb <- c('max','max','max','max','max','max','max','max')
 FuzzyMMOORA(d,w,cb)
}
\references{
Balezentis, T. and Balezentis, A. A Survey on Development and Applications of the Multi-criteria Decision Making Method MULTIMOORA. Journal of Multi-Criteria Decision Analysis, 21(3-4), 209-222, 2014.
}

