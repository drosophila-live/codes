G6Pdh<- read.csv("~/Desktop/H2O2 baseline/HyPer - KK/G6Pdh.csv")
source("~/Desktop/H2O2 baseline/HyPer - KK/HyPerKK_G6PdhKK (14) w corrections.R")
source("~/Desktop/H2O2 baseline/HyPer - KK/HyPerKK_G6PdhKK (14) wo corrections.R")
par(mfrow=c(2,4))
library(plotrix)                                                    # call library needed for std.error function
errorsG6PdhC<-c(1:length(mean_HyPer_G6PdhC_time_course))               # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritC<-numeric(length=nrow(matHyPer_G6PdhC_time_course))
for (i in 1:nrow(matHyPer_G6PdhC_time_course))
{maritC[i]<-std.error(matHyPer_G6PdhC_time_course[i,])}

errG6PdhC.pos<-c(mean_HyPer_G6PdhC_time_course+maritC)
errG6PdhC.neg<-c(mean_HyPer_G6PdhC_time_course-maritC)

HyPer_G6PdhC_base<-c(HyPer_G6PdhC_1_base,HyPer_G6PdhC_2_base,HyPer_G6PdhC_3_base,HyPer_G6PdhC_4_base,HyPer_G6PdhC_5_base,HyPer_G6PdhC_6_base,HyPer_G6PdhC_7_base,HyPer_G6PdhC_9_base,HyPer_G6PdhC_10_base,HyPer_G6PdhC_11_base,HyPer_G6PdhC_15_base)

plot(mean_HyPer_G6PdhC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgoldenrod3"))
lines(errG6PdhC.pos,col=c("lightgoldenrod1"))
lines(errG6PdhC.neg,col=c("lightgoldenrod1"))
segments(errorsG6PdhC,errG6PdhC.pos,x1=errorsG6PdhC,errG6PdhC.neg,col=c("lightgoldenrod1"),lwd=1)
points(mean_HyPer_G6PdhC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgoldenrod3"))
legend(x="topright",legend=c("G6PdhC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("darkgoldenrod3"))



errorsG6PdhUC<-c(1:length(mean_HyPer_G6PdhUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritUC<-numeric(length=nrow(matHyPer_G6PdhUC_time_course))
for (i in 1:nrow(matHyPer_G6PdhUC_time_course))
{maritUC[i]<-std.error(matHyPer_G6PdhUC_time_course[i,])}

errG6PdhUC.pos<-c(mean_HyPer_G6PdhUC_time_course+maritUC)
errG6PdhUC.neg<-c(mean_HyPer_G6PdhUC_time_course-maritUC)

HyPer_G6PdhUC_base<-c(HyPer_G6PdhUC_1_base,HyPer_G6PdhUC_2_base,HyPer_G6PdhUC_3_base,HyPer_G6PdhUC_4_base,HyPer_G6PdhUC_5_base,HyPer_G6PdhUC_6_base,HyPer_G6PdhUC_7_base,HyPer_G6PdhUC_9_base,HyPer_G6PdhUC_10_base,HyPer_G6PdhUC_11_base,HyPer_G6PdhUC_15_base)

plot(mean_HyPer_G6PdhUC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgoldenrod3"))

lines(errG6PdhUC.pos,col=c("lightgoldenrod1"))
lines(errG6PdhUC.neg,col=c("lightgoldenrod1"))
segments(errorsG6PdhUC,errG6PdhUC.pos,x1=errorsG6PdhUC,errG6PdhUC.neg,col=c("lightgoldenrod1"),lwd=1)
points(mean_HyPer_G6PdhUC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgoldenrod3"))
legend(x="topright",legend=c("G6PdhUC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("darkgoldenrod3"))

boxplot(HyPer_G6PdhC_base,ylim=c(0,2),xlab=c("HyPer_G6PdhC_base"))
boxplot(HyPer_G6PdhUC_base,ylim=c(0,2),xlab=c("HyPer_G6PdhUC_base"))

boxplot(HyPer_G6PdhUC_bpl,ylim=c(0,20),xlab=c("HyPer_G6PdhUC_base/(peak/low)"))
boxplot(HyPer_G6PdhUC_blp,ylim=c(0,1.5),xlab=c("HyPer_G6PdhUC_base/(low/peak)"))
boxplot(HyPer_G6PdhUC_btp,ylim=c(0,20),xlab=c("HyPer_G6PdhUC_base/peak"))
boxplot(HyPer_G6PdhUC_btl,ylim=c(0,5),xlab=c("HyPer_G6PdhUC_base/low"))

