\name{prostate}
\alias{prostate}
\alias{prostate.type}
\docType{data}
\title{Averaged prostate data from package msProstate.}
\description{
Prostate data, originally from package msProstate, where the three
replicates have been averaged. Vector \code{prostate.type} is a factor,
describing the type of sample: a control, a benign prostate enlargement
or tumourous sample. Matrix \code{prostate} contains 327 rows (samples)
and 10523 variables. Since package msProstate is orphaned at the end of
2012, the original data are also included here.}  
\usage{data(prostate)}
\seealso{\code{\link{Prostate2000Raw}}}
\source{R package msProstate (orphaned end 2012).}
\references{
  R. Wehrens. "Chemometrics with R - Multivariate Data Analysis in the
  Natural Sciences and Life Sciences". Springer, Heidelberg, 2011.
}
\examples{
data(prostate)
mz <- as.numeric(colnames(prostate))
plot(mz, prostate[1,], type = "h", xlab = "m/z", ylab = "Intensity",
     main = "Prostate data")
}
\keyword{datasets}
