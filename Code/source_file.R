
gitpath = "/Users/sjifradeleeuw/GitHub/"

basedir = paste0(gitpath, "Replication-Code-Explaining-Citizen-Attitudes-to-Strategies-of-Democratic-Defense/")

# Data directories
datadir = paste0(basedir, "Data/")

# Output directories
figdir = paste0(basedir, "Output/Figures/")
tabdir = paste0(basedir, "Output/Tables/")

# Function to obtain intra-class correlation from model object
icc = function(m){
 vc = as.data.frame((VarCorr(m)))
 l = vc$vcov
 data_frame(grp=vc$grp, icc=sapply(l, function(x){x/sum(l)}))}
