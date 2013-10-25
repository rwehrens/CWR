\name{SA}
\Rdversion{1.1}
\alias{SA}
\alias{SAfun}
\alias{SAfun2}
\alias{SAstep}
\title{Simulated Annealing for variable selection in classification}
\description{
A set of functions implementing simple variable selection in
classification applications using simulated annealing}
\usage{
SAfun(x, response, eval.fun, Tinit, niter = 100,
      cooling = 0.05, fraction = 0.3, ...)
SAfun2(x, response, eval.fun, Tinit, niter = 100,
       cooling = 0.05, fraction = 0.3, ...)

SAstep(curr.set, maxvar, fraction = .3, size.dev = 1)
}
\arguments{
  \item{x}{Data matrix: independent variables used by \code{eval.fun}}
  \item{response}{Class vector, used by \code{eval.fun}}
  \item{eval.fun}{evaluation function. Should take a data matrix, a
    class vector (or factor), and a subset argument}
  \item{Tinit}{Initial temperature}
  \item{niter}{Maximal number of iterations}
  \item{cooling}{Cooling speed}
  \item{fraction}{Size of the desired subset, as a fraction of the total
    number of variables}
  \item{\dots}{Further arguments to the evaluation function}
  \item{curr.set}{Current trial solution}
  \item{maxvar}{The total number of variables to choose from}
  \item{size.dev}{Parameter governing the variability in size of
    subsequent subsets}
}
\details{Simulated Annealing (SA) starts with a random subset, and
  proceeds by random moves in the solution space. In this
  implementation, a new solution may deviate in length at most
  \code{size.dev} variables: at most two variables may be swapped in or
  out at each step. If a step is an improvement, it is unconditionally
  accepted. If not, acceptance is a stochastic process depending on the
  current temperature - with high temperatures, "bad" moves are more
  likely to be accepted than with low temperatures. The process stops
  after a predefined number of iterations.
}
\value{Functions \code{SAfun} and \code{SAfun2} both return a list
  containing the following fields:
  \item{best}{The best subset}
  \item{best.q}{The quality of the best subset}
  
  In addition, the outcome of \code{SAfun2} also contains
  \item{qualities}{A vector containing quality values of solutions
    seen throughout the optimization}
  \item{accepts}{A vector containing logicals indicating which
    solutions were accepted and which were rejected}
}
\author{Ron Wehrens}
\references{
  R. Wehrens. "Chemometrics with R - Multivariate Data Analysis in the
  Natural Sciences and Life Sciences". Springer, Heidelberg, 2011.
}
\seealso{\code{\link{Evaluation}}, \code{\link{GA}}}
\examples{
if (require("pls")) {
data(gasoline, package = "pls")
## usually more than 50 iterations are needed
SAobj <- SAfun(gasoline$NIR, gasoline$octane,
               eval.fun = pls.cvfun, Tinit = 3,
               fraction = .02, niter = 50, ncomp = 2)
SAobj
} else {
  cat("Package pls not available.\nInstall it by typing 'install.packages(\"pls\")'")
}
}
\keyword{optimize }
