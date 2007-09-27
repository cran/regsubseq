\name{test.gaplin}
\alias{test.gaplin}
\alias{test.gaplin.t}
\alias{test.gaplin.p}
\title{ Detect and Test Almost Gap-Linear Subsequnces.}
\description{
  \code{test.gaplin.t} find the most almost gap-linear length k+1 subsequence
of a given sequence and compute the almost gap-linearity test statistic for
this subsequence. \code{test.gaplin.p} compute the p-value corresponding to
a computed test statistic. \code{test.gaplin} compute the test statistics
and the p-values for subsequences of all lengths.
}
\usage{
test.gaplin(Tn);
test.gaplin.t(Tn, k);
test.gaplin.p(t, n, k);
}
\arguments{
  \item{Tn}{A sequence of numbers. Currently, only support sequence of length
    less than 50.}
  \item{k}{The length of the subsequences for which we want to test for
    almost gap-linearity.}
  \item{n}{The length of the sequence for which we want to test for
    subsequence almost gap-linearity.}
  \item{t}{Test statistic computed for a length k+1 subsequence of a length
    n+1 sequence.}
}
\details{
 Almost gap-linear means the spacings of a subsequence are almost in
proportion to the spacings of the corresponding indicies. For example, for
Tn=c(11, 14, (.), 20), the subs sequence (11, 14, 20) is gap-linear, since the
spacings (3, 6) is in proportion with the spacings of hte corresponding
indicies (1, 2). Equivalently, almost gap-linearity can measured by the
distance between the standardized spacings of the subsequnce and the
standardized spacings of the corresponding indicies. See Di and Perlman (2007)
for more details.
}
\value{
\code{test.gaplin.t} returns the most gap-linear length k+1 subsequence of the
input sequence and corresponding almost gap-linearity test statistic.
\code{test.gaplin.p} returns the p-value corresponding to the input test
statistic \code{t}. \code{test.lin} has no return value, instead, a table
containing the most almost gap-linear subsequences, corresponding test
staistics and p-values will be outputed.
}
\references{Di and Perlman, 2007}
\author{Yanming Di}
\seealso{
  \code{\link{test.lin}}.
}
\examples{
  ## A sequence representing arrival times of events.
  Tn = c(13, 21, 24, 33, 40, 55, 59, 63, 72, 85, 87);

  ## Test for almost linearity.
  t = test.gaplin.t(Tn, 4);
  print(t$sub);
  p = test.gaplin.p(t$t, 10, 4);
  print(p);
  test.gaplin(Tn);
}
\keyword{htest}% at least one, from doc/KEYWORDS
