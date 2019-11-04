#Vital rate sensitivities
#################packages needed############### 
library(popbio)

#################fixed parameters############## 

#stage length
C<-1
J<-7.67
A<-65
#Survival
Sc<-0.914
Sj<-0.98
Sa<-0.98
#transition
Tj<-0.1002
#reproduction
Ma<-(1/3.14)/2
Fa<-(Sa*Ma)
############Constructing matrix############### whale.el<-expression(
0, 0, Ma*Sa, Sc, Sj*(1-Tj), 0, 0, Sj*Tj, Sa)
###########Length and names of variables for matrix estimates##### whale.vr<-list(Sc = Sc,Sj=Sj, Tj=Tj , Sa=Sa , Ma=Ma) #names of variables n<-length(whale.vr) #size of matrix
vr<-seq(0,1,0.001) #range of matrix entries
###########Vectors used to save output######################### vrsen<-matrix(numeric(n*length(vr)), ncol=n, dimnames=list(vr, names(whale.vr))) ############Loop analysis#####################
for (h in 1:n)
{
  whale.vr2<-list(Sc = Sc,Sj=Sj, Tj=Tj , Sa=Sa , Ma=Ma) for (i in 1:length(vr))
  {
    whale.vr2[[h]]<-vr[i]
    A<-matrix(sapply(whale.el, eval,whale.vr2 , NULL),
              nrow=sqrt(length(whale.el)), byrow=TRUE)
    vrsen[i,h] <- max(Re(eigen(A)$values)) #saves estimates of growth rate
  } #inter loop } #outer loop
  ###################Final plot for sensitivities#################### sens<-data.frame(vrsen)
  par(mfrow=c(1,2))
  ######Calf Survival##############
  plot(vr,sens$Sc, type='l', lwd=2, las=1,ylim=c(0.8,1.2),xlim=c(0.796,1),lty=3, col=2, cex=0.9,xlab="",ylab="")
  101
  
  title(main=expression(paste("Calf Survival"," " ,(sigma[c]))),cex.main=2.1) title(ylab=expression(paste("Population growth rate"," ",(lambda[infinity]))),cex.lab=1.1) title(xlab="Value of demographic rate",cex.lab=1.1)
  abline(h = 1.056, col = "gray60")
  abline(h = 0, v = 0.834,col = "red")
  abline(h = 0, v = 0.964, col = "red")
  ###########Juvenile Survival############
  plot(vr,sens$Sj, type='l', lwd=2, las=1,ylim=c(0.8,1.2),xlim=c(0.87,1),lty=2, col=3, cex=0.9,
       ylab="", xlab="")
  title(main=expression(paste("Juvenile Survival"," " ,(sigma[j]))),cex.main=2.1) title(ylab=expression(paste("Population growth rate"," ",(lambda[infinity]))),cex.lab=1.2) title(xlab="Value of demographic rate",cex.lab=1.2)
  abline(h = 1.056, col = "gray60")
  abline(h = 0, v = 0.91,col = "red")
  abline(h = 0, v = 1, col = "red")
  #abline(h = 0, v = 0, col = "gray60")
  #############Adult Survival##############
  par(mfrow=c(1,2))
  plot(vr,sens$Sa, type='l', lwd=2, las=1,ylim=c(0.8,1.2),xlim=c(0.87,1),lty=5, col=3, cex=0.9,
       ylab="", xlab="")
  title(main=expression(paste("Adult Survival"," " ,(sigma[a]))),cex.main=2.1) title(ylab=expression(paste("Population growth rate"," ",(lambda[infinity]))),cex.lab=1.1) title(xlab="Value of demographic rate",cex.lab=1.1)
  abline(h = 1.056, col = "gray60")
  abline(h = 0, v = 0.91,col = "red")
  abline(h = 0, v = 1, col = "red")
  #abline(h = 0, v = 0, col = "gray60")
  ########Juvenile Transition################
  plot(vr,sens$Tj,type='l', lwd=2, las=1,ylim=c(0.8,1.2),xlim=c(0.04,0.16),lty=4, col=65, cex=0.9,
       , ylab="", xlab="")
  title(main=expression(paste("Juvenile Transition"," " ,(gamma[j]))),cex.main=2.1) title(ylab=expression(paste("Population growth rate"," ",(lambda[infinity]))),cex.lab=1.1) title(xlab="Value of demographic rate",cex.lab=1.1)
  abline(h = 1.056, col = "gray60")
  abline(h = 0, v = 0.12,col = "red")
  abline(h = 0, v = 0.08, col = "red")
  ################Fecundity##############
  par(mfrow=c(1,1))
  plot(vr,sens$Ma, type='l', lwd=2, las=1,ylim=c(0.8,1.2),lty=9, col=34, cex=0.9,
       ylab="",xlab="", main="",xlim=c(0.09,0.22)) title(main=expression(paste("Fecundity"," ","(Mx)")),cex.main=2.1) title(ylab=expression(paste("Population growth rate"," ",(lambda[infinity]))),cex.lab=1.2) title(xlab="Value of demographic rate",cex.lab=1.2)
  abline(h = 1.056, col = "gray60")
  abline(h = 0, v = 0.13,col = "red")
  abline(h = 0, v = 0.18, col = "red")