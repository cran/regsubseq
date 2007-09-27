\name{most.gaplin.sub}
\alias{most.gaplin.sub}
\title{Find the Most Gap-Linear Subsequence.}
\description{
  Find the most gap-linear length k+1 subsequence of the input sequence. The
subsequence found by this function has the same end points as the original
sequence. This function is not intended to be used by an end user directly.
Users should use \code{test.gaplin.t}, \code{test.gaplin.p} or
\code{test.gaplin} instead.
}
\usage{
  most.gaplin.sub(x, k, T);
}
\arguments{
  \item{x}{ The input sequence, a vector of numbers. }
  \item{k}{ The length of the subsequences for which we want to test gap-linearity. }
  \item{T}{ A threshold value. A subsequence will only be examined when its
gap-linearity test statistic can be bigger than this \code{t}.}
}

\value{
  \item{improved}{\code{TRUE} if we found a subsequence with a gap-linearity test
statistic more extreme than the input \code{t}.}
  \item{t}{The gap-linearity test statistic corresponding to the most gap-linear subsequence.}
  \item{sub}{The most gap-linear subsequence.}
  \item{sigma}{The indices corresponding to the most gap-linear subsequence.}
}
\references{Di and Perlman (2007)}
\author{ Yanming Di }
\seealso{
   \code{\link{test.gaplin}}, \code{\link{test.gaplin.t}},
\code{\link{test.gaplin.p}}.
}
\keyword{internal}% at least one, from doc/KEYWORDS
