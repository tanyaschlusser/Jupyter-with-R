\name{student.demographics}
\alias{student.demographics}
\docType{data}
\title{Student Demographics by Year}
\description{
Demographic information for each year's departmental student intake.
}
\usage{data("student.demographics")}
\format{
  A data frame with 6 observations on the following 6 variables.
  \describe{
    \item{\code{year.entering}}{Year the students entred university.}
    \item{\code{gender.m}}{Number of male students.}
    \item{\code{gender.f}}{Number of female students.}
    \item{\code{student.status.uk}}{Number of students from the UK or qualifying territories.}
    \item{\code{student.status.eu}}{Number of students from the EU but not from the UK.}
    \item{\code{student.status.overseas}}{Number of students from all of the other places.}
  }
}
\details{
Note that 'EU' (European Union) does not
include the UK here, and 'Overseas' denotes any non-EU
or non-UK country, except qualifying overseas territories
determined by The Education (Fees and Awards) (England) Regulations 2007.
The 2010 and 2011 programming classes were for second year
students, respectively corresponding to the 2009 and 2010 intake.
The 2012 programming class combined both the first and second
year students, corresponding to the 2011 and 2012 intake respectively.
}
\source{
C. T. Jacobs, G. J. Gorman, H. E. Rees, L. E. Craig (In Press).
Experiences with efficient methodologies for teaching computer
programming to geoscientists. \emph{Journal of Geoscience Education}.
Pre-print: \url{http://arxiv.org/abs/1505.05425}
}
\references{
Related blog post: \url{http://software-carpentry.org/blog/2016/06/teaching-python-to-undergraduate-geoscientists.html}
}
\examples{
data(student.demographics)
## maybe str(student.demographics) ; plot(student.demographics) ...
}
\keyword{datasets}
