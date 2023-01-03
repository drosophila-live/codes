kl3<- read.csv("~/Desktop/pH measurements for RNAi validation/TRIP/kl3.csv")
source("~/Desktop/pH measurements for RNAi validation/TRIP/pHerry_kl3 (7) w corrections.R")
source("~/Desktop/pH measurements for RNAi validation/TRIP/pHerry_kl3 (7) wo corrections.R")
par(mfrow=c(2,4))
library(plotrix)                                                    # call library needed for std.error function
errorskl3C<-c(1:length(mean_pHerry_kl3C_time_course))               # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

yanC<-numeric(length=nrow(matpHerry_kl3C_time_course))
for (i in 1:nrow(matpHerry_kl3C_time_course))
{yanC[i]<-std.error(matpHerry_kl3C_time_course[i,])}

errkl3C.pos<-c(mean_pHerry_kl3C_time_course+yanC)
errkl3C.neg<-c(mean_pHerry_kl3C_time_course-yanC)

plot(mean_pHerry_kl3C_time_course,ylim=c(0,3),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("darkgreen"))
lines(errkl3C.pos,col=c("darkseagreen1"))
lines(errkl3C.neg,col=c("darkseagreen1"))
segments(errorskl3C,errkl3C.pos,x1=errorskl3C,errkl3C.neg,col=c("darkseagreen1"),lwd=1)
points(mean_pHerry_kl3C_time_course,ylim=c(0,3),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("darkgreen"))
legend(x="topright",legend=c("kl3C-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("darkgreen"))



errorskl3UC<-c(1:length(mean_pHerry_kl3UC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

yanUC<-numeric(length=nrow(matpHerry_kl3UC_time_course))
for (i in 1:nrow(matpHerry_kl3UC_time_course))
{yanUC[i]<-std.error(matpHerry_kl3UC_time_course[i,])}

errkl3UC.pos<-c(mean_pHerry_kl3UC_time_course+yanUC)
errkl3UC.neg<-c(mean_pHerry_kl3UC_time_course-yanUC)


plot(mean_pHerry_kl3UC_time_course,ylim=c(0,3),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("darkgreen"))

lines(errkl3UC.pos,col=c("darkseagreen1"))
lines(errkl3UC.neg,col=c("darkseagreen1"))
segments(errorskl3UC,errkl3UC.pos,x1=errorskl3UC,errkl3UC.neg,col=c("darkseagreen1"),lwd=1)
points(mean_pHerry_kl3UC_time_course,ylim=c(0,3),ylab=c("dF/F"),type="l",lwd=3,xlab=c("pHerry-fluorescence over time"),col=c("darkgreen"))
legend(x="topright",legend=c("kl3UC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("darkgreen"))

boxplot(pHerry_kl3C_base,ylim=c(0,3),xlab=c("pHerry_kl3C_base"))
boxplot(pHerry_kl3UC_base,ylim=c(0,3),xlab=c("pHerry_kl3UC_base"))

boxplot(pHerry_kl3UC_bpl,ylim=c(0,5),xlab=c("pHerry_kl3UC_base/(peak/low)"))
boxplot(pHerry_kl3UC_blp,ylim=c(0,20),xlab=c("pHerry_kl3UC_base/(low/peak)"))
boxplot(pHerry_kl3UC_btp,ylim=c(0,5),xlab=c("pHerry_kl3UC_base/peak"))
boxplot(pHerry_kl3UC_btl,ylim=c(0,5),xlab=c("pHerry_kl3UC_base/low"))

