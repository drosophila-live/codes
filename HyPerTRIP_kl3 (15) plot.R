kl3<- read.csv("~/Desktop/H2O2 baseline/HyPer - TRIP/20x Water/kl3.csv")
source("~/Desktop/H2O2 baseline/HyPer - TRIP/20x Water/HyPerTRIP_kl3 (15) w corrections.R")
source("~/Desktop/H2O2 baseline/HyPer - TRIP/20x Water/HyPerTRIP_kl3 (15) wo corrections.R")
par(mfrow=c(2,4))
library(plotrix)                                                    # call library needed for std.error function
errorskl3C<-c(1:length(mean_HyPer_kl3C_time_course))               # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritC<-numeric(length=nrow(matHyPer_kl3C_time_course))
for (i in 1:nrow(matHyPer_kl3C_time_course))
{maritC[i]<-std.error(matHyPer_kl3C_time_course[i,])}

errkl3C.pos<-c(mean_HyPer_kl3C_time_course+maritC)
errkl3C.neg<-c(mean_HyPer_kl3C_time_course-maritC)


plot(mean_HyPer_kl3C_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgreen"))
lines(errkl3C.pos,col=c("darkseagreen1"))
lines(errkl3C.neg,col=c("darkseagreen1"))
segments(errorskl3C,errkl3C.pos,x1=errorskl3C,errkl3C.neg,col=c("darkseagreen1"),lwd=1)
points(mean_HyPer_kl3C_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgreen"))
legend(x="topright",legend=c("kl3C-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("darkgreen"))



errorskl3UC<-c(1:length(mean_HyPer_kl3UC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritUC<-numeric(length=nrow(matHyPer_kl3UC_time_course))
for (i in 1:nrow(matHyPer_kl3UC_time_course))
{maritUC[i]<-std.error(matHyPer_kl3UC_time_course[i,])}

errkl3UC.pos<-c(mean_HyPer_kl3UC_time_course+maritUC)
errkl3UC.neg<-c(mean_HyPer_kl3UC_time_course-maritUC)


plot(mean_HyPer_kl3UC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgreen"))

lines(errkl3UC.pos,col=c("darkseagreen1"))
lines(errkl3UC.neg,col=c("darkseagreen1"))
segments(errorskl3UC,errkl3UC.pos,x1=errorskl3UC,errkl3UC.neg,col=c("darkseagreen1"),lwd=1)
points(mean_HyPer_kl3UC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("darkgreen"))
legend(x="topright",legend=c("kl3UC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("darkgreen"))

boxplot(HyPer_kl3C_base,ylim=c(0,2),xlab=c("HyPer_kl3C_base"))
boxplot(HyPer_kl3UC_base,ylim=c(0,2),xlab=c("HyPer_kl3UC_base"))

boxplot(HyPer_kl3UC_bpl,ylim=c(0,20),xlab=c("HyPer_kl3UC_base/(peak/low)"))
boxplot(HyPer_kl3UC_blp,ylim=c(0,1.5),xlab=c("HyPer_kl3UC_base/(low/peak)"))
boxplot(HyPer_kl3UC_btp,ylim=c(0,20),xlab=c("HyPer_kl3UC_base/peak"))
boxplot(HyPer_kl3UC_btl,ylim=c(0,5),xlab=c("HyPer_kl3UC_base/low"))

