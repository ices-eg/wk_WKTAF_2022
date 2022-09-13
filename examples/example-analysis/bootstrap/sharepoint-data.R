
library(icesTAF)
# install.packages('icesSharePoint', repos = 'https://ices-tools-prod.r-universe.dev')
library(icesSharePoint)

# spdir("WKTAF June 2022/06. Data", site = "/ExpertGroups/WKTAF/")

spgetfile(
  "WKTAF June 2022/06. Data/1.IntroTo_icesTAF_package.zip",
  "/ExpertGroups/WKTAF",
  "https://community.ices.dk",
  destdir = "."
)

unzip("1.IntroTo_icesTAF_package.zip", exdir = "temp")
unlink("1.IntroTo_icesTAF_package.zip")

trees2 <- read.taf("temp/1.IntroTo_icesTAF_package/2.after/taf-workshop-example-1/data/trees.csv")

write.taf(trees2)

unlink("temp", recursive = TRUE)
