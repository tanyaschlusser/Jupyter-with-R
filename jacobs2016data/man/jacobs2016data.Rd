\name{jacobs2016data}
\alias{jacobs2016data}
\docType{package}
\title{Data Sets from Jacobs et al. (2016)}
\description{
  Data sets showing class and performance statistics related to the
  new programming class described in Jacobs et al. (2016) .
}
\usage{
  data("class.data")
  data("feedback.topics")
  data("lecturer.scores")
  data("module.scores")
  data("student.demographics")
  data("student.alevels.by.subject")
}
\format{
  
}
\details{
  Six datasets:

  \describe{
    \item{\code{\link{class.data}}}{
        Students sitting for the exam each year, mean score, and number of TAs.}
    \item{\code{\link{feedback.topics}}}{
        Breakdown of topics in student feedback each year.}
    \item{\code{\link{lecturer.scores}}}{
        Student ratings of lecturer performance each year.}
    \item{\code{\link{module.scores}}}{
        Student ratings of course material each year.}
    \item{\code{\link{student.demographics}}}{
        Demographics of the incoming class, by year.}
    \item{\code{\link{student.alevels.by.subject}}}{
        Count of A-Level exams (like AP) taken by each incoming class.}
  }
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
## maybe str(class.size) ; plot(class.size) ...
}
\keyword{datasets}
