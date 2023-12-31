% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exit_list.r
\name{exit_list}
\alias{exit_list}
\title{Generate a data frame of exit events from multiple regions - industries matrices (same matrix composition for the different periods)}
\usage{
exit_list(...)
}
\arguments{
\item{...}{Incidence matrices with regions in rows and industries in columns (period ... - optional)}
}
\value{
A data frame representing the exit events from multiple regions - industries matrices, with columns "region" (representing the region), "industry" (representing the industry), "exit" (representing the exit event), and "period" (representing the period)
}
\description{
This function generates a data frame of exit events from multiple regions - industries matrices (different matrix compositions are allowed). In this function, the maximum number of periods is limited to 20.
}
\examples{
## generate a first region - industry matrix in which cells represent the presence/absence
## of a RCA (period 1)
set.seed(31)
mat1 <- matrix(sample(0:1, 20, replace = TRUE), ncol = 4)
rownames(mat1) <- c("R1", "R2", "R3", "R4", "R5")
colnames(mat1) <- c("I1", "I2", "I3", "I4")

## generate a second region - industry matrix in which cells represent the presence/absence
## of a RCA (period 2)
mat2 <- mat1
mat2[2, 1] <- 0

## run the function
exit_list(mat1, mat2)

## generate a third region - industry matrix in which cells represent the presence/absence
## of a RCA (period 3)
mat3 <- mat2
mat3[5, 1] <- 0

## run the function
exit_list(mat1, mat2, mat3)

## generate a fourth region - industry matrix in which cells represent the presence/absence
## of a RCA (period 4)
mat4 <- mat3
mat4[5, 3] <- 0

## run the function
exit_list(mat1, mat2, mat3, mat4)
}
\references{
Boschma, R., Balland, P.A. and Kogler, D. (2015) Relatedness and Technological Change in Cities: The rise and fall of technological knowledge in U.S. metropolitan areas from 1981 to 2010, \emph{Industrial and Corporate Change} \strong{24} (1): 223-250 \cr
\cr
Boschma, R., Heimeriks, G. and Balland, P.A. (2014) Scientific Knowledge Dynamics and Relatedness in Bio-Tech Cities, \emph{Research Policy} \strong{43} (1): 107-114
}
\seealso{
\code{\link{entry_list}}
}
\author{
Pierre-Alexandre Balland \email{p.balland@uu.nl} \cr
Wolf-Hendrik Uhlbach \email{w.p.uhlbach@students.uu.nl}
}
\keyword{diversification}
