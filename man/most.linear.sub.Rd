\name{most.linear.sub}
\alias{most.linear.sub}
\title{Find the Most Lineaer Subsequence}
\description{
  Find the most linear length k+1 subsequence of the input sequence. The
subsequence found by this function has the same end points as the original
sequence. This function is not intended to be used by an end user directly.
Users should use \code{test.lin.t}, \code{test.lin.p} or \code{test.lin}
instead.
}
\usage{
  most.linear.sub(x, k, t);
}
\arguments{
  \item{x}{ The input sequence, a vector of numbers. }
  \item{k}{ The length of the subsequences for which we want to test linearity. }
  \item{t}{ A threshold value. A subsequence will only be examined when its
linearity test statistic can be bigger than this \code{t}.}
}

\value{
  \item{improved}{\code{TRUE} if we found a subsequence with a linearity test
statistic more extreme than the input \code{t}.}
  \item{t}{The linearity test statistic corresponding to the most linear subsequence.}
  \item{sub}{The most linear subsequence.}
  \item{sigma}{The indices corresponding to the most linear subsequence.}
}
\references{Di and Perlman (2007)}
\author{ Yanming Di }
\seealso{
   \code{\link{test.lin}}, \code{\link{test.lin.t}}, \code{\link{test.lin.p}}.
}
\keyword{internal}% at least one, from doc/KEYWORDS
