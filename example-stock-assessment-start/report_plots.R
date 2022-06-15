
library(icesTAF)
library(stockassessment)

mkdir("report")

load("model/fit.rData")

## Report Plots ##
# taf.png("summary")
# plot(SSB~Year, x, type="l", lwd=2, ylim=lim(x$SSB), yaxs="i",
# 	ylab="SSB (1000 t)", main="Biomass")
# plot(fit,partial=F)
# dev.off()

taf.png("SSB")
ssbplot(fit, addCI = T)
dev.off()

taf.png("Fbar")
fbarplot(fit, xlab = "", partial = F)
dev.off()

taf.png("Rec")
recplot(fit, xlab = "")
dev.off()

taf.png("Landings")
catchplot(fit, xlab = "")
dev.off()
