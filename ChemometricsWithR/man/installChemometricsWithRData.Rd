\name{installChemometricsWithRData}
\alias{installChemometricsWithRData}
\title{Installation of ChemometricsWithRData}
\description{
  Function to download and install the \pkg{ChemometricsWithRData} package
  from its github location.
}
\details{The total size of the data sets in the ChemometricsWithRData package
  (\code{Prostate2000Raw}, \code{prostate}, \code{bdata} and
  \code{shootout}) is too large for CRAN according to current
  guidelines. The data package is now available from github only.
}
\author{
  \packageAuthor{ChemometricsWithR}
  
  Maintainer: \packageMaintainer{ChemometricsWithR}
} 
\references{Ron Wehrens (2011). Chemometrics With R: Multivariate Data
  Analysis in the Natural Sciences and Life Sciences. Springer, Heidelberg.
}
\keyword{ data }
\examples{
\dontrun{
  installChemometricsWithRData()
}
}
