##
## future self: make package using these instructions:
##  http://www.stat.ufl.edu/system/r-pkg-tut/
##
## original data source:
##  http://arxiv.org/pdf/1505.05425v3.pdf (Jacobs et al.)
##
## slides for his talk:
##  http://christianjacobs.uk/hen-2016-sticky-notes
##
## Jupyter hub set up tutorial
##  http://jupyterhub-tutorial.readthedocs.io/en/latest/JupyterHub-Tutorial.html
##  https://github.com/minrk/jupyterhub-pydata-2016/blob/master/JupyterHub.pdf (slides)
##


class.data <- data.frame(
  year=seq(2010,2014),
  students=c(35,89,162,85,87),
  gtas=c(4,7,9,18,14),
  mean.marks=c(0.505, 0.689, 0.603, 0.745, 0.68)
);

student.alevels.by.subject <- data.frame(
  year.entering=rep(seq(2009,2014),7),
  subject=rep(
    c('Maths','Physics','Chemistry','Geology','Biology','Computing','Other'),
    each=6
  ),
  students=c(
    51, 68, 71, 67, 75, 74,  # Maths
    37, 53, 57, 49, 55, 60,  # Physics
    38, 45, 52, 51, 63, 52,  # Chemistry
    18, 24, 24, 13, 35, 26,  # Geology
    19, 27, 25, 20, 26, 22,  # Biology
     2,  0,  1,  0,  2,  0,  # Computing
    46, 79, 39, 79, 74, 16   # Other
  )
);

student.demographics <- data.frame(
  year.entering=seq(2009,2014),
  gender.m=c(39,56,50,44,53,53),
  gender.f=c(25,33,39,29,32,34),
  student.status.uk=c(55,79,68,61,64,60),
  student.status.eu=c(0,3,10,3,4,5),
  student.status.overseas=c(9,7,11,9,17,22)
)

module.scores <- data.frame(
  year=rep(seq(2010,2014), c(6, 6, 2, 4, 4)),
  criterion=c(
    rep(c(
      'Support material',
      'Organisation',
      'Structure/delivery',
      'Explanation',
      'Approachability',
      'Interest generated'
      ), 2),
    c('Structure/delivery', 'Content'),
    rep(c(
      'Structure',
      'Intellectual stimulation',
      'Feedback',
      'Overall satisfaction'
      ), 2)
  ),
  score=c(
    1.20, 0.89, 1.11, 1.11, 1.65, 1.26,  # 2010
    0.58, 0.82, 0.65, 0.37, 1.10, 0.95,  # 2011
    0.38, 0.49,  #2012
    0.45, 0.72, 0.47, 0.36,  #2013
    1.26, 1.30, 1.32, 1.21  #2014
  )
)

lecturer.scores <- data.frame(
  year=rep(seq(2010,2014), c(4, 4, 1, 4, 4)),
  criterion=c(
    rep(c(
      'Structure/delivery',
      'Explanation',
      'Approachability',
      'Interest generated'
      ), 2),
    c('Structure/delivery'),
    rep(c(
      'Explanation',
      'Interest generated',
      'Approachability',
      'Overall satisfaction'
      ), 2)
  ),
  score=c(
    1.11, 1.11, 1.65, 1.26,  # 2010
    0.65, 0.37, 1.10, 0.95,  # 2011
    0.38,  # 2012
    -0.06, 0.67, 1.33, 0.71,  #2013
    1.11, 1.59, 1.73, 1.69
  )
)

feedback.topics <- data.frame(
  year=rep(seq(2010,2014), each=4),
  topic=c(
    'Pace', 'Lecturer', 'Material', 'Support',
    'Pace', 'Terminology', 'Material', 'Support',
    'Pace', 'Lecturer', 'Material', 'Support',
    'Pace', 'Lecturer', 'Material', 'Support',
    'Pace', 'Lecturer', 'Material', 'Support'
  ),
  fraction.of.feedback=c(
    0.500, 0.143, 0.286, 0.071,
    0.407, 0.056, 0.278, 0.259,
    0.043, 0.284, 0.440, 0.233,
    0.042, 0.521, 0.271, 0.167,
    0.086, 0.086, 0.314, 0.514
  )
) 
