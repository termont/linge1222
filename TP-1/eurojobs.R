
# make sure we can load the file
setwd("~/2021 - UCL/LINGE1222/git-repo/TP-1")

# import Eurojobs
EuroJobs <- read.csv(header=TRUE,sep=",",dec=".",row.names = 1,file="Eurojobs.csv")

# compute the request data (mean , median) for Agr
meanAgr <- mean(EuroJobs$Agr)
medianAgr <- median(EuroJobs$Agr)

s2Man = var(EuroJobs$Man)
varMan = mean(EuroJobs$Man^2) - mean(EuroJobs$Man)^2
