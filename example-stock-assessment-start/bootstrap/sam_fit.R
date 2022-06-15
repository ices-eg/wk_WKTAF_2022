
library(stockassessment)

# download model from stockassessment.org
fit <- fitfromweb("WBCod_2021_cand01")

retro_fit <- stockassessment::retro(fit, year = 2019:2021)

# save to model folder
save(fit, file = "fit.RData")
save(retro_fit, file = "retro_fit.RData")
