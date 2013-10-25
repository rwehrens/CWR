\name{Evaluation}
\Rdversion{1.1}
\alias{Evaluation}
\alias{lda.loofun}
\alias{pls.cvfun}
\title{Evaluation function examples for SA- or GA-based variable
  selection in classification applications.}
\description{Two examples of functions that can be used in variable
  selection for classification. The outcome of these functions should be
  maximized by the optimization.
}
\usage{
lda.loofun(x, grouping, subset, ...)
pls.cvfun(x, response, subset, ...)
}
\arguments{
  \item{x}{Data matrix: independent variables used by \code{eval.fun}}
  \item{grouping}{Class vector, possibly a factor}
  \item{response}{Dependent variable, typically a real number}
  \item{subset}{A vector containing the indices of the variables to be included}
  \item{\dots}{Further arguments, such as the number of latent
    variables to use in \code{plscvfun}}
}
\details{The evaluation function should give high values for good
  subsets, and low values for bad subsets. The \code{lda.loofun}
  function simply counts the number of correct predictions in LOO
  crossvalidation, and subtracts the number of variables in the
  subset. Function \code{pls.cvfun} returns the mean squared error of
  cross-validation.
}
\value{One value indicating the quality of the subset}
\references{
  R. Wehrens. "Chemometrics with R - Multivariate Data Analysis in the
  Natural Sciences and Life Sciences". Springer, Heidelberg, 2011.
}
\author{Ron Wehrens}
\seealso{\code{\link{GA}}, \code{\link{SA}}}
\keyword{optimize}
