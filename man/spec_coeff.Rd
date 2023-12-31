% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spec_coeff.r
\name{spec_coeff}
\alias{spec_coeff}
\title{Compute the Hoover coefficient of specialization from regions - industries matrices}
\usage{
spec_coeff(mat)
}
\arguments{
\item{mat}{An incidence matrix with regions in rows and industries in columns}
}
\value{
A vector representing the Hoover coefficient of specialization for each region. The values in the vector indicate the degree of regional specialization, with higher values indicating greater specialization.
}
\description{
This function computes the Hoover coefficient of specialization from regions - industries matrices. The higher the coefficient, the greater the regional specialization. This index is closely related to the Krugman specialisation index.
}
\examples{
## generate a region - industry matrix
set.seed(31)
mat <- matrix(sample(0:100, 20, replace = TRUE), ncol = 4)
rownames(mat) <- c("R1", "R2", "R3", "R4", "R5")
colnames(mat) <- c("I1", "I2", "I3", "I4")

## run the function
spec_coeff(mat)
}
\references{
Hoover, E.M. and Giarratani, F. (1985) \emph{An Introduction to Regional Economics}. 3rd edition. New York: Alfred A. Knopf (see table 9-4 in particular)
}
\seealso{
\code{\link{krugman_index}}
}
\author{
Pierre-Alexandre Balland \email{p.balland@uu.nl}
}
\keyword{specialization}
