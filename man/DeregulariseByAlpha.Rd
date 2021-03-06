% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DeregulariseByAlpha.R
\name{DeregulariseByAlpha}
\alias{DeregulariseByAlpha}
\title{Function to deregularise densities to have (smaller) minimum value}
\usage{
DeregulariseByAlpha(x, y, alpha = 0)
}
\arguments{
\item{x}{support of the density}

\item{y}{values of the density}

\item{alpha}{scalar to deregularise with (default = 0) - this will be the minimum value of the deregularised density, unless \code{min(y) < alpha}, in which case 
no deregularisation will be performed}
}
\value{
dens density values on x
}
\description{
If possible, deregularises the input density \code{y} to have minimum density value is \code{alpha}. See details.
}
\details{
If \code{min(y) <= alpha}, or \code{y} is the uniform distribution, no deregularisation is performed and \code{y} is returned.  If \code{min(y)*diff(range(x)) > 1}, 
the deregularisation is not possible and an error is thrown.  Otherwise, the deregularised density in an inverse manner to \code{RegulariseByAlpha}.
}
\examples{

 x = seq(0,1,length.out=122)
 y = seq(0.1,1.9,length.out=122)
 z = DeregulariseByAlpha(x=x, y=y, alpha = 0)
 
}
\seealso{
\code{\link{RegulariseByAlpha}}
}
