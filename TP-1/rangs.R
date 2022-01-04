
# [1] import the data into a variable
rangs <- read.csv(file="rangs.csv",header=TRUE,sep=";",dec=",")


# [2] compute the median of Alumni
meanAlumni <- median(rangs$Score.on.Alumni)
