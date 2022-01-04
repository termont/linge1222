
# [1] import the data into a variable
rangs <- read.csv(file="rangs.csv",header=TRUE,sep=";",dec=",")


# [2] compute the median of Alumni
meanAlumni <- median(rangs$Score.on.Alumni)

# [3] .3 quantile of SCI
q30SCI <- quantile(rangs$Score.on.SCI,0.3)

# [4] correlation between Alumni and Award
correlation  <- cor(rangs$Score.on.Alumni,rangs$Score.on.Award)

# [5] variable with the higher variance 
lapply(rangs[7:13],var)
# the variable Award has the higher variance