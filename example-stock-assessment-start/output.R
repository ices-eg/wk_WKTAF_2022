## Extract results of interest, write TAF output tables

## Before:
## After:

library(icesTAF)

mkdir("output")

## Extract results of interest, write TAF output tables

## Before:
## After: csv tables of assessment output

library(icesTAF)
library(stockassessment)

mkdir("output")

# load fit
(load("model/fit.rData"))

# Model Parameters
partab <- partable(fit)

# Fs
fatage <- faytable(fit)
fatage <- fatage[, -1]
fatage <- as.data.frame(fatage)

# Ns
natage <- as.data.frame(ntable(fit))

# Catch
catab <- as.data.frame(catchtable(fit))
colnames(catab) <- c("Catch", "Low", "High")

# TSB
tsb <- as.data.frame(tsbtable(fit))
colnames(tsb) <- c("TSB", "Low", "High")

# Summary Table
tab.summary <- cbind(as.data.frame(summary(fit)), tsb)
tab.summary <- cbind(tab.summary, rbind(catab, NA))
colnames(tab.summary)[1] <- "R_a0"
colnames(tab.summary)[7] <- "Fbar_a3_5"

## Write tables to output directory
write.taf(
  c("partab", "tab.summary", "natage", "fatage"),
  dir = "output"
)
