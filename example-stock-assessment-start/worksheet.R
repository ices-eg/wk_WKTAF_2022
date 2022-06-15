
install.packages("remotes")

#remotes::install_github("fishfollower/sam/stockassessment")

library(icesTAF)
library(rmarkdown)

taf.bootstrap()

sourceTAF("data")
sourceTAF("model")
sourceTAF("output")
sourceTAF("report")


render("report.Rmd",
  output_file = "report.html",
  encoding = "UTF-8"
)

browseURL("report.html")
