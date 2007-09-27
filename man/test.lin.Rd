\name{test.lin}
\alias{test.lin}
\alias{test.lin.t}
\alias{test.lin.p}
\title{Detect and Test Almost Linear Subsequences.}
\description{
  \code{test.lin.t} find the most almost-linear length k+1 subsequence
of a given sequence and compute the almost-linearity test statistic for
this subsequence. \code{test.lin.p} compute the p-value corresponding to
a computed test statistic. \code{test.lin} compute the test statistics
and the p-values for subsequences of all lengths.
}
\usage{
test.lin(Tn);
test.lin.t(Tn, k);
test.lin.p(t, n, k);
}
\arguments{
  \item{Tn}{A sequence of numbers. Currently, only support sequences of length
    less than 50.}
  \item{k}{The length of the subsequences for which we want to test for
    almost-linearity.}
  \item{n}{The length of the sequence for which we want to test for
    subsequence almost-linearity.}
  \item{t}{Test statistic computed for a length k+1 subsequence of a length
    n+1 sequence.}
}
\details{
  Almost-linear means the spacings of the sequence are almost equal, or
the distance between the standardized spacings as a vector and (1/k,
..., 1/k) is too small. The p-value is computed by comparing the test
statistic to a procomputed test statistic quantile table. See Di and
Perlman (2007) for more details.
}
\value{
\code{test.lin.t} returns the most linear length k+1 subsequence of
the input sequence and corresponding almost-linearity test
statistic. \code{test.lin.p} returns the p-value corresponding to the
input test statistic \code{t}. \code{test.lin} has no return value,
instead, a table containing the most almost linear subsequences,
corresponding test staistics and p-values will be outputed.
}
\references{ Di and Perlman, 2007}
\author{Yanming Di}
\seealso{
  \code{\link{test.gaplin}}.
}
\examples{
  ## A sequence representing arrival times of events.
  Tn = c(13, 21, 24, 33, 40, 55, 59, 63, 72, 85, 87);

  ## Test for almost linearity.
  t = test.lin.t(Tn, 4);
  print(t$sub);
  p = test.lin.p(t$t, 10, 4);
  print(p);
  test.lin(Tn);
}
\keyword{htest}% at least one, from doc/KEYWORDS
