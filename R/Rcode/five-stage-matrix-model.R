library(popbio)

projection_matrix <- matrix(
  c(
    0,     0,      0,      4.665,      61.896,
    0.675, 0.703,  0,      0,          0,
    0,     0.047,  0.657,  0,          0,
    0,     0,      0.019,  0.682,      0,
    0,     0,      0,      0.061,      0.809
  )
  ,nrow=5,ncol=5,byrow=T
)

projection_matrix

Abundance_year0 <- c(2000,500,300,300,20)
Abundance_year0

nYears <- 100                                            # set the number of years to project
TMat <- projection_matrix                               # define the projection matrix
InitAbund <- Abundance_year0                            # define the initial abundance

## NOTE: the code below can be re-used without modification:
allYears <- matrix(0,nrow=nrow(TMat),ncol=nYears+1)     # build a storage array for all abundances!
allYears[,1] <- InitAbund  # set the year 0 abundance
for(t in 2:(nYears+1)){   # loop through all years
  allYears[,t] <-  TMat %*% allYears[,t-1]
}
plot(1,1,pch="",ylim=c(0,max(allYears)),xlim=c(0,nYears+1),xlab="Years",ylab="Abundance",xaxt="n")  # set up blank plot
cols <- rainbow(5)    # set up colors to use
for(s in 1:5){
  points(allYears[s,],col=cols[s],type="l",lwd=2)     # plot out each life stage abundance, one at a time
}
axis(1,at=seq(1,nYears+1),labels = seq(0,nYears))   # label the axis
legend("topright",col=cols,lwd=rep(2,3),legend=paste("Stage ",seq(1:nrow(TMat))),bty="n")  # put a legend on the plot

