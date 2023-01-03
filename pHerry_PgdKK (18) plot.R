Pgd<- read.csv("~/Desktop/pH measurements for RNAi validation/KK/Pgd.csv")
source("~/Desktop/pH measurements for RNAi validation/KK/pHerry_PgdKK (18) w corrections.R")
source("~/Desktop/pH measurements for RNAi validation/KK/pHerry_PgdKK (18) wo corrections.R")
par(mfrow=c(2,4))
library(plotrix)                                                    # call library needed for std.error function
errorsPgdC<-c(1:length(mean_pHerry_PgdC_time_course))               # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

michiC<-numeric(length=nrow(matpHerry_PgdC_time_course))
for (i in 1:nrow(matpHerry_PgdC_time_course))
{michiC[i]<-std.error(matpHerry_PgdC_time_course[i,])}

errPgdC.pos<-c(mean_pHerry_PgdC_time_course+michiC)
errPgdC.neg<-c(mean_pHerry_PgdC_time_course-michiC)

pHerry_PgdC_base<-c(pHerry_PgdC_1_base,pHerry_PgdC_2_base,pHerry_PgdC_3_base,pHerry_PgdC_5_base,pHerry_PgdC_6_base,pHerry_PgdC_7_base,pHerry_PgdC_8_base,pHerry_PgdC_9_base,pHerry_PgdC_10_base,pHerry_PgdC_11_base,pHerry_PgdC_12_base,pHerry_PgdC_13_base,pHerry_PgdC_14_base,pHerry_PgdC_15_base,pHerry_PgdC_20_base,pHerry_PgdC_22_base,pHerry_PgdC_23_base,pHerry_PgdC_24_base)

plot(mean_pHerry_PgdC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("indianred4"))
lines(errPgdC.pos,col=c("indianred1"))
lines(errPgdC.neg,col=c("indianred1"))
segments(errorsPgdC,errPgdC.pos,x1=errorsPgdC,errPgdC.neg,col=c("indianred1"),lwd=1)
points(mean_pHerry_PgdC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("indianred4"))
legend(x="topright",legend=c("PgdC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("indianred4"))



errorsPgdUC<-c(1:length(mean_pHerry_PgdUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

michiUC<-numeric(length=nrow(matpHerry_PgdUC_time_course))
for (i in 1:nrow(matpHerry_PgdUC_time_course))
{michiUC[i]<-std.error(matpHerry_PgdUC_time_course[i,])}

errPgdUC.pos<-c(mean_pHerry_PgdUC_time_course+michiUC)
errPgdUC.neg<-c(mean_pHerry_PgdUC_time_course-michiUC)

pHerry_PgdUC_base<-c(pHerry_PgdUC_1_base,pHerry_PgdUC_2_base,pHerry_PgdUC_3_base,pHerry_PgdUC_5_base,pHerry_PgdUC_6_base,pHerry_PgdUC_7_base,pHerry_PgdUC_8_base,pHerry_PgdUC_9_base,pHerry_PgdUC_10_base,pHerry_PgdUC_11_base,pHerry_PgdUC_12_base,pHerry_PgdUC_13_base,pHerry_PgdUC_14_base,pHerry_PgdUC_15_base,pHerry_PgdUC_20_base,pHerry_PgdUC_22_base,pHerry_PgdUC_23_base,pHerry_PgdUC_24_base)

plot(mean_pHerry_PgdUC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("indianred4"))

lines(errPgdUC.pos,col=c("indianred1"))
lines(errPgdUC.neg,col=c("indianred1"))
segments(errorsPgdUC,errPgdUC.pos,x1=errorsPgdUC,errPgdUC.neg,col=c("indianred1"),lwd=1)
points(mean_pHerry_PgdUC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("indianred4"))
legend(x="topright",legend=c("PgdUC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("indianred4"))

boxplot(pHerry_PgdC_base,ylim=c(0,2),xlab=c("pHerry_PgdC_base"))
boxplot(pHerry_PgdUC_base,ylim=c(0,2),xlab=c("pHerry_PgdUC_base"))

boxplot(pHerry_PgdUC_bpl,ylim=c(0,20),xlab=c("pHerry_PgdUC_base/(peak/low)"))
boxplot(pHerry_PgdUC_blp,ylim=c(0,1.5),xlab=c("pHerry_PgdUC_base/(low/peak)"))
boxplot(pHerry_PgdUC_btp,ylim=c(0,20),xlab=c("pHerry_PgdUC_base/peak"))
boxplot(pHerry_PgdUC_btl,ylim=c(0,5),xlab=c("pHerry_PgdUC_base/low"))

