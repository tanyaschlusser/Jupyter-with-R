\name{student.alevels.by.subject}
\alias{student.alevels.by.subject}
\docType{data}
\title{Student A-Levels by Subject and by Year}
\description{
  The total number of A-Level exams taken by the
  incoming student class, by subject.
}
\usage{data("student.alevels.by.subject")}
\format{
  A data frame with 42 observations on the following 3 variables.
  The numbers are for students who entered the Department of Earth Science and Engineering.
  \describe{
    \item{\code{year.entering}}{Year the students entered university.}
    \item{\code{subject}}{The general subject area of the A-Levl exam -- a factor with levels \code{Biology} \code{Chemistry} \code{Computing} \code{Geology} \code{Maths} \code{Other} \code{Physics}}
    \item{\code{students}}{Number of students who took that exam before entering university.}
  }
}
\details{
  Total number of A-Level (Further Education) qualifications attained
  (by subject) to each year's departmental student intake. The 2010 and 2011
  programming classes were for second year students, respectively corresponding
  to the 2009 and 2010 intake. Not all of the studensts from the 2009 intake
  took the programming course in 2010, since it was optional just for that year,
  which is why the number of A-Levels in 2009 sometimes exceeds the total number
  of 2010 programming students in Table 1. The 2012 programming class combined
  both the first and second year students, corresponding to th 2011 and 2012
  intake respectively.
}
\source{
C. T. Jacobs, G. J. Gorman, H. E. Rees, L. E. Craig (In Press).
Experiences with efficient methodologies for teaching computer
programming to geoscientists. \emph{Journal of Geoscience Education}.
Pre-print: \url{http://arxiv.org/abs/1505.05425}
}
\references{
Related blog post: \url{http://software-carpentry.org/blog/2016/06/teaching-python-to-undergraduate-geoscientists.html}
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(student.alevels.by.subject)
## maybe str(student.alevels.by.subject) ; plot(student.alevels.by.subject) ...
}
\keyword{datasets}
