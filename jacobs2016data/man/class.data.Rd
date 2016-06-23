\name{class.data}
\alias{class.data}
\docType{data}
\title{Class Data}
\description{
  The size of the year's programming class(es), and their mean exam score.
}
\usage{data("class.data")}
\format{
  A data frame with 5 observations on the following 4 variables.
  \describe{
    \item{\code{year}}{Year the course was offered.}
    \item{\code{students}}{Number of students sitting for the final exam.}
    \item{\code{gtas}}{Number of Graduate Student Teaching Assistants.}
    \item{\code{mean.marks}}{Average score on the final exam.}
  }
}
\details{
  In 2010, students are all from the second year, and the
  course was not required, so only a fraction of the total
  number of students took it. It is required in subsequent years.
  In 2012, two separate classes were run: one comprising 73 first
  year students and the other comprising 89 second year students,
  to transition from a second to a first year class.
  In 2013 and 2014, the course contains only first-year students.

  The score in 2014 is estimated from the chart in the original
  paper.
}
\source{
C. T. Jacobs, G. J. Gorman, H. E. Rees, L. E. Craig (In Press).
Experiences with efficient methodologies for teaching computer
programming to geoscientists. \emph{Journal of Geoscience Education}.
Pre-print: \url{http://arxiv.org/abs/1505.05425}
}
\examples{
data(class.data)
}
\keyword{datasets}
