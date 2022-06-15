## Run analysis, write model results

## Before:
## After:

library(icesTAF)

mkdir("model")

(load(taf.data.path("sam_fit/fit.RData")))

save(fit, file = "model/fit.RData")
