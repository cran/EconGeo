% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locational_gini_curve.r
\name{locational_gini_curve}
\alias{locational_gini_curve}
\title{Plot a locational Gini curve from regions - industries matrices}
\usage{
locational_gini_curve(mat, pdf = FALSE, pdf_location = NULL)
}
\arguments{
\item{mat}{An incidence matrix with regions in rows and industries in columns. The input can also be a vector of industrial regional count (a matrix with n regions in rows and a single column).}

\item{pdf}{Logical; shall a pdf be saved?  Defaults to FALSE. If set to TRUE, a pdf with all will be compiled and saved to R's temp dir if no 'pdf_location' is specified.}

\item{pdf_location}{Output location of pdf file}
}
\value{
No return value, produces a plot or pdf.
}
\description{
This function plots a locational Gini curve following Krugman from regions - industries matrices.
}
\examples{

## generate a region - industry matrix
mat <- matrix(
  c(
    100, 0, 0, 0, 0,
    0, 15, 5, 70, 10,
    0, 20, 10, 20, 50,
    0, 25, 30, 5, 40,
    0, 40, 55, 5, 0
  ),
  ncol = 5, byrow = TRUE
)
rownames(mat) <- c("R1", "R2", "R3", "R4", "R5")
colnames(mat) <- c("I1", "I2", "I3", "I4", "I5")

## run the function (shows industry #5)
locational_gini_curve(mat, pdf = FALSE)
locational_gini_curve(mat, pdf = FALSE)

## Save output as pdf
locational_gini_curve(mat, pdf = TRUE)

## To specify an output directory for the pdf,
## specify 'pdf_location', for instance as '/Users/jones/locational_gini_curve.pdf'
## locational_gini_curve(mat, pdf = TRUE, pdf_location = '/Users/jones/locational_gini_curve.pdf')

}
\references{
Krugman P. (1991) \emph{Geography and Trade}, MIT Press, Cambridge (chapter 2 - p.56)
}
\seealso{
\code{\link{hoover_gini}}, \code{\link{locational_gini}}, \code{\link{hoover_curve}}, \code{\link{lorenz_curve}}, \code{\link{gini}}
}
\author{
Pierre-Alexandre Balland \email{p.balland@uu.nl}
}
\keyword{concentration}
\keyword{inequality}
