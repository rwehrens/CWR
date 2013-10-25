\name{GA}
\Rdversion{1.1}
\alias{GA}
\alias{GAfun}
\alias{GAfun2}
\alias{GA.init.pop}
\alias{GA.select}
\alias{GA.mut}
\alias{GA.XO}
\title{Genetic Algorithms for variable selection in classification}
\description{
A set of functions implementing simple variable selection in
classification applications using genetic algorithms.   
}
\usage{
GAfun(X, C, eval.fun, kmin, kmax, popsize = 20, niter = 50,
      mut.prob = 0.05, ...)
GAfun2(X, C, eval.fun, kmin, kmax, popsize = 20, niter = 50,
       mut.prob = 0.05, ...)

GA.init.pop(popsize, nvar, kmin, kmax)
GA.select(pop, number, qlts, min.qlt = 0.4, qlt.exp = 1)
GA.mut(subset, maxvar, mut.prob = 0.01)
GA.XO(subset1, subset2)
}
\arguments{
  \item{X}{Data matrix: independent variables used by \code{eval.fun}}
  \item{C}{Class vector, used by \code{eval.fun}}
  \item{eval.fun}{evaluation function. Should take a data matrix, a
    class vector (or factor), and a subset argument}
  \item{kmin}{Minimal number of variables to retain}
  \item{kmax}{Maximal number of variables to retain}
  \item{popsize}{Size of the GA population}
  \item{niter}{Number of iterations}
  \item{mut.prob}{Mutation probability}
  \item{\dots}{Further arguments to the evaluation function}
  \item{nvar}{The total number of variables to choose from}
  \item{pop, subset, subset1, subset2}{A (part of a) population of trial
    solutions}
  \item{number}{The number of trial solutions that may produce offspring}
  \item{qlts}{Vector of quality measures for members in a population}
  \item{min.qlt}{Minimal quality of a trial solution to be considered as
    a future parent}
  \item{qlt.exp}{Quality scaling parameter: the larger this number, the
    more discrimination between good and bad solutions, and the more
    greedy the search characteristics}
  \item{maxvar}{Number of variables to choose from}
}
\details{The function generates a population of trial solutions, each
  containing a number of variables to be retained. For every member of
  the population, the evaluation function calculates a quality measure,
  which determines the chance of that member to create offspring. In a
  process of "survival of the fittest", this leads to subsets for which
  the evaluation function has a maximal value.

  The initialization is done randomly. Selection
  is simple threshold selection. Mutation swaps variables in or out of
  the subset; the cross-over type is uniform. Functions
  \code{GA.init.pop}, \code{GA.select}, \code{GA.mut} and \code{GA.XO}
  are auxiliary functions, not meant to be called directly by the user.

}
\value{Functions \code{GAfun} and \code{GAfun2} both return a list
  containing the following fields:
  \item{best}{The best subset}
  \item{best.q}{The quality of the best subset}
  \item{n.iter}{The number of iterations}
  
  In addition, the outcome of \code{GAfun2} also contains
  \item{qualities}{A matrix containing the best, median and worst
    quality value throughout the optimization}
}
\author{Ron Wehrens}
\references{
  R. Wehrens. "Chemometrics with R - Multivariate Data Analysis in the
  Natural Sciences and Life Sciences". Springer, Heidelberg, 2011.
}
\seealso{\code{\link{Evaluation}}, \code{\link{SA}}}
\examples{
if (require("pls")) {
  data(gasoline, package = "pls")
  ## Usually more iterations are needed
  GAobj <- GAfun(gasoline$NIR, gasoline$octane,
                 eval.fun = pls.cvfun, niter = 20,
                 kmin = 3, kmax = 25, ncomp = 2)
  GAobj
} else {
  cat("Package pls not available.\nInstall it by typing 'install.packages(\"pls\")'")
}
}
\keyword{optimize}
