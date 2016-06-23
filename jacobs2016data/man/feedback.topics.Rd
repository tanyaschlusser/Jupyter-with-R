\name{feedback.topics}
\alias{feedback.topics}
\docType{data}
\title{Course Feedback Topics}
\description{
Topics emerging from the bottom row of the annual student
feedback form -- overall student seniments.
}
\usage{data("feedback.topics")}
\format{
  A data frame with 20 observations on the following 3 variables.
  \describe{
    \item{\code{year}}{Year the course was offered.}
    \item{\code{topic}}{Primary topic in the student feedback remarks -- a factor with levels \code{Lecturer} \code{Material} \code{Pace} \code{Support} \code{Terminology}.}
    \item{\code{fraction.of.feedback}}{Percent of feedback related to the named topic.}
  }
}
\details{
  Notes for 2010
  \itemize{
    \item
      Lectured in the traditional sense but with less time for practical
      exercises.
    \item
      Largely negative sentiments about pace and difficulty of material.
    \item
      Students were positive about the traditional lecture approach,
      although the learning outcomes were poor.
  }
  Notes for 2011
  \itemize{
    \item
      Doubled the teaching time to 6 hours by introducing a separate
      3-hour pratical workshop.
    \item
      Significantly more positive comments about the support received.
    \item
      However, the pace was still too fast and material still too hard
      to follow.
  }
  Notes for 2012
  \itemize{
    \item
      YouTube videos introduced.
    \item
      Largely negative comments about the lecturer adn method of delivery,
      as a result of the moving away from the traditional passive classroom
      environment.
    \item
      Comments regarding the material were, unlike previous years, mostly
      positive; students liked that they could work through
      the lecture material at their own pace, and go back to repeat certain
      parts of the video. Furthermore, the students responded positively to
      the removal of advanced material such as classes and objects.
  }
  Notes about 2013
  \itemize{
    \item
      Moved away from the video and traditional style of lecturing, to a
      blended learning approach.
    \item
      Positive feedback regarding one-on-one support, and almost no negative
      comments regarding quantity of material covered, unlike previous years.
    \item
      But the majority of comments about the lecturing style were negative because
      it did not match with their expectations of what a traditional lecture was.
  }
  Notes about 2014
  \itemize{
    \item
      Explained the blended learning approach and emphasized the benefits
      throughout the course.
    \item
      Split up the workshops into 'bite-sized' chunks; a series of 10 minute
      lectures followed by practical exercies, rather than one long practical
      session.
    \item
      Sudents felt reassured, resulting in only positive comments regarding
      the style of lecturing.
    \item
      The sticky notes and ability to give feedback at the end of each
      workshop resulted in positive comments regarding support.
  }
}
\source{
C. T. Jacobs, G. J. Gorman, H. E. Rees, L. E. Craig (In Press).
Experiences with efficient methodologies for teaching computer
programming to geoscientists. \emph{Journal of Geoscience Education}.
Pre-print: \url{http://arxiv.org/abs/1505.05425}
}
\examples{
data(feedback.topics)
## maybe str(feedback.topics) ; plot(feedback.topics) ...
}
\keyword{datasets}
