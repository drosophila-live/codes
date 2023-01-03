source("~/Desktop/pH measurements for RNAi validation/KK/pHerry_kl3 (12) plot.R")
source("~/Desktop/pH measurements for RNAi validation/KK/pHerry_G6PdhKK (19) plot.R")
source("~/Desktop/pH measurements for RNAi validation/KK/pHerry_PgdKK (18) plot.R")
par(mfrow=c(2,4),cex=1)
errorskl3UC<-c(1:length(mean_pHerry_kl3UC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

yanUC<-numeric(length=nrow(matpHerry_kl3UC_time_course))
for (i in 1:nrow(matpHerry_kl3UC_time_course))
{yanUC[i]<-std.error(matpHerry_kl3UC_time_course[i,])}

errkl3UC.pos<-c(mean_pHerry_kl3UC_time_course+yanUC)
errkl3UC.neg<-c(mean_pHerry_kl3UC_time_course-yanUC)


plot(mean_pHerry_kl3UC_time_course,ylim=c(0,3),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("pHerry time course"),col=c("darkgreen"))

lines(errkl3UC.pos,col=c("darkseagreen1"))
lines(errkl3UC.neg,col=c("darkseagreen1"))
segments(errorskl3UC,errkl3UC.pos,x1=errorskl3UC,errkl3UC.neg,col=c("darkseagreen1"),lwd=1)
points(mean_pHerry_kl3UC_time_course,ylim=c(0,3),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("pHerry time course"),col=c("darkgreen"))
legend(x="topright",legend=c("k"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen"))

errorsG6PdhUC<-c(1:length(mean_pHerry_G6PdhUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritUC<-numeric(length=nrow(matpHerry_G6PdhUC_time_course))
for (i in 1:nrow(matpHerry_G6PdhUC_time_course))
{maritUC[i]<-std.error(matpHerry_G6PdhUC_time_course[i,])}

errG6PdhUC.pos<-c(mean_pHerry_G6PdhUC_time_course+maritUC)
errG6PdhUC.neg<-c(mean_pHerry_G6PdhUC_time_course-maritUC)

plot(mean_pHerry_G6PdhUC_time_course,ylim=c(0,3),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("pHerry time course"),col=c("darkgoldenrod3"))

lines(errG6PdhUC.pos,col=c("lightgoldenrod1"))
lines(errG6PdhUC.neg,col=c("lightgoldenrod1"))
segments(errorsG6PdhUC,errG6PdhUC.pos,x1=errorsG6PdhUC,errG6PdhUC.neg,col=c("lightgoldenrod1"),lwd=1)
points(mean_pHerry_G6PdhUC_time_course,ylim=c(0,3),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("pHerry time course"),col=c("darkgoldenrod3"))
legend(x="topright",legend=c("G"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgoldenrod3"))


errorsPgdUC<-c(1:length(mean_pHerry_PgdUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

michiUC<-numeric(length=nrow(matpHerry_PgdUC_time_course))
for (i in 1:nrow(matpHerry_PgdUC_time_course))
{michiUC[i]<-std.error(matpHerry_PgdUC_time_course[i,])}

errPgdUC.pos<-c(mean_pHerry_PgdUC_time_course+michiUC)
errPgdUC.neg<-c(mean_pHerry_PgdUC_time_course-michiUC)

plot(mean_pHerry_PgdUC_time_course,ylim=c(0,3),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("pHerry time course"),col=c("indianred4"))

lines(errPgdUC.pos,col=c("indianred1"))
lines(errPgdUC.neg,col=c("indianred1"))
segments(errorsPgdUC,errPgdUC.pos,x1=errorsPgdUC,errPgdUC.neg,col=c("indianred1"),lwd=1)
points(mean_pHerry_PgdUC_time_course,ylim=c(0,3),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("pHerry time course"),col=c("indianred4"))
legend(x="topright",legend=c("P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("indianred4"))

boxplot(pHerry_kl3C_base,pHerry_kl3UC_base,pHerry_G6PdhC_base,pHerry_G6PdhUC_base,pHerry_PgdC_base,pHerry_PgdUC_base,ylim=c(0,3),col=c("darkgreen","darkgreen","darkgoldenrod3","darkgoldenrod3","indianred4","indianred4"),xlab=c("pHerry baseline fluorescence"))
legend(x="topright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(pHerry_kl3UC_bpl,pHerry_G6PdhUC_bpl,pHerry_PgdUC_bpl,ylim=c(0,1.5),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("pHerry base/(peak/low)"))
legend(x="topright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(pHerry_kl3UC_blp,pHerry_G6PdhUC_blp,pHerry_PgdUC_blp,ylim=c(0,10),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("pHerry base/(low/peak)"))
legend(x="topright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(pHerry_kl3UC_btp,pHerry_G6PdhUC_btp,pHerry_PgdUC_btp,ylim=c(0,1.5),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("pHerry base/peak"))
legend(x="topright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(pHerry_kl3UC_btl,pHerry_G6PdhUC_btl,pHerry_PgdUC_btl,ylim=c(0,5),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("pHerry base/low"))
legend(x="topright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))




