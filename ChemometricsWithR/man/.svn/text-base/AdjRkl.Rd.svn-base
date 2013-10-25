\name{AdjRkl}
\alias{AdjRkl}
\title{Adjusted Rand Index}
\description{The Adjusted Rand Index is a measure of similarity for two
  groupings or clusterings. A value of 1 indicates total agreement.}
\usage{
AdjRkl(part1, part2)
}
\arguments{
  \item{part1}{First partitioning.}
  \item{part2}{Second partitioning.}
}
\value{Number.}
\author{Ron Wehrens}
\references{
  R. Wehrens. "Chemometrics with R - Multivariate Data Analysis in the
  Natural Sciences and Life Sciences". Springer, Heidelberg, 2011.
}
\examples{
if (require("kohonen")) {
  data(wines, package = "kohonen")
  wines.dist <- dist(scale(wines))
  wines.sl <- hclust(wines.dist, method = "single")
  wines.cl <- hclust(wines.dist, method = "complete")

  AdjRkl(cutree(wines.sl, 4), cutree(wines.cl, 4))
} else {
  cat("Package kohonen not available.\nInstall it by typing 'install.packages(\"kohonen\")'")
}
}
\keyword{cluster}
