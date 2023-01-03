Pgd<- read.csv("~/Desktop/NADPH baseline/TRIP/Pgd.csv")
source("~/Desktop/NADPH baseline/TRIP/iNapTRIP_PgdTRIP (10) w corrections.R")
source("~/Desktop/NADPH baseline/TRIP/iNapTRIP_PgdTRIP (10) wo corrections.R")
par(mfrow=c(2,4))
library(plotrix)                                                    # call library needed for std.error function
errorsPgdC<-c(1:length(mean_iNap_PgdC_time_course))               # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritC<-numeric(length=nrow(matiNap_PgdC_time_course))
for (i in 1:nrow(matiNap_PgdC_time_course))
{maritC[i]<-std.error(matiNap_PgdC_time_course[i,])}

errPgdC.pos<-c(mean_iNap_PgdC_time_course+maritC)
errPgdC.neg<-c(mean_iNap_PgdC_time_course-maritC)


plot(mean_iNap_PgdC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("iNap-fluorescence over time"),col=c("indianred4"))
lines(errPgdC.pos,col=c("indianred1"))
lines(errPgdC.neg,col=c("indianred1"))
segments(errorsPgdC,errPgdC.pos,x1=errorsPgdC,errPgdC.neg,col=c("indianred1"),lwd=1)
points(mean_iNap_PgdC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("iNap-fluorescence over time"),col=c("indianred4"))
legend(x="topright",legend=c("PgdC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("indianred4"))



errorsPgdUC<-c(1:length(mean_iNap_PgdUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritUC<-numeric(length=nrow(matiNap_PgdUC_time_course))
for (i in 1:nrow(matiNap_PgdUC_time_course))
{maritUC[i]<-std.error(matiNap_PgdUC_time_course[i,])}

errPgdUC.pos<-c(mean_iNap_PgdUC_time_course+maritUC)
errPgdUC.neg<-c(mean_iNap_PgdUC_time_course-maritUC)


plot(mean_iNap_PgdUC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("iNap-fluorescence over time"),col=c("indianred4"))

lines(errPgdUC.pos,col=c("indianred1"))
lines(errPgdUC.neg,col=c("indianred1"))
segments(errorsPgdUC,errPgdUC.pos,x1=errorsPgdUC,errPgdUC.neg,col=c("indianred1"),lwd=1)
points(mean_iNap_PgdUC_time_course,ylim=c(0,2),ylab=c("dF/F"),type="l",lwd=3,xlab=c("iNap-fluorescence over time"),col=c("indianred4"))
legend(x="topright",legend=c("PgdUC-dsRNA"),cex=0.1,lty=c(1,1,1),col=c("indianred4"))

boxplot(iNap_PgdC_base,ylim=c(0,2),xlab=c("iNap_PgdC_base"))
boxplot(iNap_PgdUC_base,ylim=c(0,2),xlab=c("iNap_PgdUC_base"))

boxplot(iNap_PgdUC_bpl,ylim=c(0,20),xlab=c("iNap_PgdUC_base/(peak/low)"))
boxplot(iNap_PgdUC_blp,ylim=c(0,1.5),xlab=c("iNap_PgdUC_base/(low/peak)"))
boxplot(iNap_PgdUC_btp,ylim=c(0,20),xlab=c("iNap_PgdUC_base/peak"))
boxplot(iNap_PgdUC_btl,ylim=c(0,5),xlab=c("iNap_PgdUC_base/low"))

