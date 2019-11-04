#### killer whale example
library(popbio)
time = 100 # the ages you like to reconstruct

A <- array(0, dim = c(4,4,time))
A[2,1,] <- 0.9775
A[2,2,] <- 0.9111
A[3,2,] <- 0.0736
A[3,3,] <- 0.9534
A[4,3,] <- 0.0452
A[4,4,] <- 0.9804
A[1,2,] <- 0.0043
A[1,3,] <- 0.1132

# calc lambda and stable stage distribution
lambda <- array(NA, dim = time)
w <- array(NA, dim = c(4,time))
for(t in 1:time){
  lambda[t] <- eigen(A[,,t])$values[1]
  w[,t] <- stable.stage(A[,,t])
}

# fecundity matrix
FEC <- A
FEC[2:4,,] <- 0

# transition matrix
TRANS <- A
TRANS[1,,] <- 0

# array to save age-specific abundances
X <- array(0, dim = c(4,time), dimnames = list(c("stage 1", "stage 2", "stage 3", "stage 4"),c(1:time)))

X.func <- function(){
  X[,1] <- FEC[,,1]%*%w[,1] # born in this year (year t)
  for(t in 2:time){
    temp <- lambda[t]^(-(t-1))*FEC[,,t]%*%w[,t] # born in year t-a as explained in the book
    for(u in (t-1):1){ # t-1 for the year the cohort has to survive until each age
      temp <- TRANS[,,t]%*%temp # survivors in year that came originally cohort t-a
    }#u
    X[,t]   <- temp
  } #t
  X <- X/rowSums(X) # re-scale age distribution
  return(X)
} # funtion

X <- X.func()

plot(c(1:time), X[2,], type = "l", lwd = 1.5, xlab = "Age class", ylab = "Proportion") # stage 2
points(c(1:time), X[3,], type = "l", lty = "dashed", lwd = 1.5) # stage 3
points(c(1:time), X[4,], type = "l", lty = "dotted", lwd = 1.5) # stage 4
