\name{ChemometricsWithRData-package}
\alias{ChemometricsWithRData-package}
\alias{ChemometricsWithRData}
\docType{package}
\title{
\packageTitle{ChemometricsWithRData}
}
\description{
\packageDescription{ChemometricsWithRData}
}
\details{The data sets in this package (\code{Prostate2000Raw},
  \code{prostate}, \code{bdata} and \code{shootout}) are too large for CRAN
  according to current guidelines. Consult
  their manual pages for more details.
}
\author{
\packageAuthor{ChemometricsWithRData}

Maintainer: \packageMaintainer{ChemometricsWithRData}
} 
\references{Ron Wehrens (2011). Chemometrics With R: Multivariate Data
  Analysis in the Natural Sciences and Life Sciences. Springer, Heidelberg.
}
\keyword{ package }
\seealso{
  \code{\link[ChemometricsWithR:ChemometricsWithR-package]{ChemometricsWithR}}
}
\examples{
  ## The package can be installed using the devtools package:
  if (require(devtools)) {
    install_github("rwehrens/CWR", subdir = "ChemometricsWithRData")
  }
}
