\name{recursive.B}
\alias{recursive.B}
\title{Compute the Gap-Linearity Test Statistics}
\description{
  An internal function used to recursively compte gap-linearity test
statistics. This function is not intended to be used by an end user.
}
\usage{
recursive.B(x, indices = FALSE);
}
\arguments{
  \item{x}{A sequence of numbers. }
  \item{indices}{ Whether to keep track of indices of the end points of the most
gap-linear subsequences.}
}

\value{
  A table of computed test statistics. If \code{indices} is \code{TRUE},
almost return the indices of the end points of the most gap-linear
subsequences.
}
\references{Di and Perlman (2007)}
\author{Yanming Di}
\keyword{internal}% at least one, from doc/KEYWORDS
