\name{module.scores}
\alias{module.scores}
\docType{data}
\title{Module Scores from Student Feedback}
\description{
Module scores from student evaluations for each year of the course.
}
\usage{data("module.scores")}
\format{
  A data frame with 22 observations on the following 3 variables.
  \describe{
    \item{\code{year}}{Year the course was offered.}
    \item{\code{criterion}}{Criterion for scoring -- a factor with levels \code{Approachability} \code{Content} \code{Explanation} \code{Feedback} \code{Intellectual stimulation} \code{Interest generated} \code{Organisation} \code{Overall satisfaction} \code{Structure} \code{Structure/delivery} \code{Support material}.}
    \item{\code{score}}{Weighted average score (with weights from -2 to 2) from all student ratings.}
  }
}
\details{
  The SOLE (Student OnLine Evaluation) scores are a weighed
  average of student responses to questions related to each 
  listed criterion. (Details are in the reference.)

  An average score of -2 to -1.5 indicates 'Very Poor', 
  -1.5 to -0.5 indicates 'Poor', -0.5 to 0.5 indicates
  'Satisfactory', 0.5 to 1.5 indicates 'Good', and 1.5 to 2
  indicates 'Very Good'.
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
data(module.scores)
## maybe str(module.scores) ; plot(module.scores) ...
}
\keyword{datasets}
