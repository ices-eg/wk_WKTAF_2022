
install.packages("remotes")

# remotes::install_github("fishfollower/sam/stockassessment")
# remotes::install_github("fishfollower/SAM/stockassessment", INSTALL_opts=c("--no-multiarch"))

# because this is a special package we need to add it to
# the taf analysis

library(icesTAF)

# add any special packages (almost always github ones)
draft.software("stockassessment")
draft.software("stockassessment", file = TRUE)

taf.bootstrap(software = TRUE)

library(stockassessment)
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
