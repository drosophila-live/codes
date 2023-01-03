source("~/Desktop/H2O2 baseline/HyPer - KK/HyPerKK_kl3 (14) plot.R")
source("~/Desktop/H2O2 baseline/HyPer - KK/HyPerKK_G6PdhKK (14) plot.R")
source("~/Desktop/H2O2 baseline/HyPer - KK/HyPerKK_PgdKK (16) plot.R")
par(mfrow=c(2,4),cex=1)
errorskl3UC<-c(1:length(mean_HyPer_kl3UC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

yanUC<-numeric(length=nrow(matHyPer_kl3UC_time_course))
for (i in 1:nrow(matHyPer_kl3UC_time_course))
{yanUC[i]<-std.error(matHyPer_kl3UC_time_course[i,])}

errkl3UC.pos<-c(mean_HyPer_kl3UC_time_course+yanUC)
errkl3UC.neg<-c(mean_HyPer_kl3UC_time_course-yanUC)


plot(mean_HyPer_kl3UC_time_course,ylim=c(0,1.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("HyPerRed time course"),col=c("darkgreen"))

lines(errkl3UC.pos,col=c("darkseagreen1"))
lines(errkl3UC.neg,col=c("darkseagreen1"))
segments(errorskl3UC,errkl3UC.pos,x1=errorskl3UC,errkl3UC.neg,col=c("darkseagreen1"),lwd=1)
points(mean_HyPer_kl3UC_time_course,ylim=c(0,1.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("HyPerRed time course"),col=c("darkgreen"))
legend(x="bottomright",legend=c("k"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen"))

errorsG6PdhUC<-c(1:length(mean_HyPer_G6PdhUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritUC<-numeric(length=nrow(matHyPer_G6PdhUC_time_course))
for (i in 1:nrow(matHyPer_G6PdhUC_time_course))
{maritUC[i]<-std.error(matHyPer_G6PdhUC_time_course[i,])}

errG6PdhUC.pos<-c(mean_HyPer_G6PdhUC_time_course+maritUC)
errG6PdhUC.neg<-c(mean_HyPer_G6PdhUC_time_course-maritUC)

plot(mean_HyPer_G6PdhUC_time_course,ylim=c(0,1.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("HyPerRed time course"),col=c("darkgoldenrod3"))

lines(errG6PdhUC.pos,col=c("lightgoldenrod1"))
lines(errG6PdhUC.neg,col=c("lightgoldenrod1"))
segments(errorsG6PdhUC,errG6PdhUC.pos,x1=errorsG6PdhUC,errG6PdhUC.neg,col=c("lightgoldenrod1"),lwd=1)
points(mean_HyPer_G6PdhUC_time_course,ylim=c(0,1.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("HyPerRed time course"),col=c("darkgoldenrod3"))
legend(x="bottomright",legend=c("G"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgoldenrod3"))


errorsPgdUC<-c(1:length(mean_HyPer_PgdUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

michiUC<-numeric(length=nrow(matHyPer_PgdUC_time_course))
for (i in 1:nrow(matHyPer_PgdUC_time_course))
{michiUC[i]<-std.error(matHyPer_PgdUC_time_course[i,])}

errPgdUC.pos<-c(mean_HyPer_PgdUC_time_course+michiUC)
errPgdUC.neg<-c(mean_HyPer_PgdUC_time_course-michiUC)

plot(mean_HyPer_PgdUC_time_course,ylim=c(0,1.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("HyPerRed time course"),col=c("indianred4"))

lines(errPgdUC.pos,col=c("indianred1"))
lines(errPgdUC.neg,col=c("indianred1"))
segments(errorsPgdUC,errPgdUC.pos,x1=errorsPgdUC,errPgdUC.neg,col=c("indianred1"),lwd=1)
points(mean_HyPer_PgdUC_time_course,ylim=c(0,1.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("HyPerRed time course"),col=c("indianred4"))
legend(x="bottomright",legend=c("P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("indianred4"))

boxplot(HyPer_kl3C_base,HyPer_kl3UC_base,HyPer_G6PdhC_base,HyPer_G6PdhUC_base,HyPer_PgdC_base,HyPer_PgdUC_base,ylim=c(0,1),col=c("darkgreen","darkgreen","darkgoldenrod3","darkgoldenrod3","indianred4","indianred4"),xlab=c("HyPerRed baseline fluorescence"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(HyPer_kl3UC_bpl,HyPer_G6PdhUC_bpl,HyPer_PgdUC_bpl,ylim=c(0,1),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("HyPerRed base/(peak/low)"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(HyPer_kl3UC_blp,HyPer_G6PdhUC_blp,HyPer_PgdUC_blp,ylim=c(0,2),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("HyPerRed base/(low/peak)"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(HyPer_kl3UC_btp,HyPer_G6PdhUC_btp,HyPer_PgdUC_btp,ylim=c(0,2),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("HyPerRed base/peak"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(HyPer_kl3UC_btl,HyPer_G6PdhUC_btl,HyPer_PgdUC_btl,ylim=c(0,2),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("HyPerRed base/low"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))




