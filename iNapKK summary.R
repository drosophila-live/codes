source("~/Desktop/NADPH baseline/KK Lines/iNapKK_kl3 (13) plot.R")
source("~/Desktop/NADPH baseline/KK Lines/iNapKK_G6PdhKK (15) plot.R")
source("~/Desktop/NADPH baseline/KK Lines/iNapKK_PgdKK (18) plot.R")
par(mfrow=c(2,4),cex=1)
errorskl3UC<-c(1:length(mean_iNap_kl3UC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

yanUC<-numeric(length=nrow(matiNap_kl3UC_time_course))
for (i in 1:nrow(matiNap_kl3UC_time_course))
{yanUC[i]<-std.error(matiNap_kl3UC_time_course[i,])}

errkl3UC.pos<-c(mean_iNap_kl3UC_time_course+yanUC)
errkl3UC.neg<-c(mean_iNap_kl3UC_time_course-yanUC)


plot(mean_iNap_kl3UC_time_course,ylim=c(0,0.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("iNap baseline fluorescence"),col=c("darkgreen"))

lines(errkl3UC.pos,col=c("darkseagreen1"))
lines(errkl3UC.neg,col=c("darkseagreen1"))
segments(errorskl3UC,errkl3UC.pos,x1=errorskl3UC,errkl3UC.neg,col=c("darkseagreen1"),lwd=1)
points(mean_iNap_kl3UC_time_course,ylim=c(0,0.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("iNap baseline fluorescence"),col=c("darkgreen"))
legend(x="bottomright",legend=c("k"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen"))

errorsG6PdhUC<-c(1:length(mean_iNap_G6PdhUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

maritUC<-numeric(length=nrow(matiNap_G6PdhUC_time_course))
for (i in 1:nrow(matiNap_G6PdhUC_time_course))
{maritUC[i]<-std.error(matiNap_G6PdhUC_time_course[i,])}

errG6PdhUC.pos<-c(mean_iNap_G6PdhUC_time_course+maritUC)
errG6PdhUC.neg<-c(mean_iNap_G6PdhUC_time_course-maritUC)

plot(mean_iNap_G6PdhUC_time_course,ylim=c(0,0.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("iNap baseline fluorescence"),col=c("darkgoldenrod3"))

lines(errG6PdhUC.pos,col=c("lightgoldenrod1"))
lines(errG6PdhUC.neg,col=c("lightgoldenrod1"))
segments(errorsG6PdhUC,errG6PdhUC.pos,x1=errorsG6PdhUC,errG6PdhUC.neg,col=c("lightgoldenrod1"),lwd=1)
points(mean_iNap_G6PdhUC_time_course,ylim=c(0,0.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("iNap baseline fluorescence"),col=c("darkgoldenrod3"))
legend(x="bottomright",legend=c("G"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgoldenrod3"))


errorsPgdUC<-c(1:length(mean_iNap_PgdUC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

michiUC<-numeric(length=nrow(matiNap_PgdUC_time_course))
for (i in 1:nrow(matiNap_PgdUC_time_course))
{michiUC[i]<-std.error(matiNap_PgdUC_time_course[i,])}

errPgdUC.pos<-c(mean_iNap_PgdUC_time_course+michiUC)
errPgdUC.neg<-c(mean_iNap_PgdUC_time_course-michiUC)

plot(mean_iNap_PgdUC_time_course,ylim=c(0,0.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("iNap baseline fluorescence"),col=c("indianred4"))

lines(errPgdUC.pos,col=c("indianred1"))
lines(errPgdUC.neg,col=c("indianred1"))
segments(errorsPgdUC,errPgdUC.pos,x1=errorsPgdUC,errPgdUC.neg,col=c("indianred1"),lwd=1)
points(mean_iNap_PgdUC_time_course,ylim=c(0,0.5),ylab=c("deltaF/F"),type="l",lwd=3,xlab=c("iNap baseline fluorescence"),col=c("indianred4"))
legend(x="bottomright",legend=c("P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("indianred4"))

boxplot(iNap_kl3C_base,iNap_kl3UC_base,iNap_G6PdhC_base,iNap_G6PdhUC_base,iNap_PgdC_base,iNap_PgdUC_base,ylim=c(0,1),col=c("darkgreen","darkgreen","darkgoldenrod3","darkgoldenrod3","indianred4","indianred4"),xlab=c("iNap baseline fluorescence"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(iNap_kl3UC_bpl,iNap_G6PdhUC_bpl,iNap_PgdUC_bpl,ylim=c(0,1),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("iNap base/(peak/low)"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(iNap_kl3UC_blp,iNap_G6PdhUC_blp,iNap_PgdUC_blp,ylim=c(0,1),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("iNap base/(low/peak)"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(iNap_kl3UC_btp,iNap_G6PdhUC_btp,iNap_PgdUC_btp,ylim=c(0,3),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("iNap base/peak"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))
boxplot(iNap_kl3UC_btl,iNap_G6PdhUC_btl,iNap_PgdUC_btl,ylim=c(0,3),col=c("darkgreen","darkgoldenrod3","indianred4"),xlab=c("iNap base/low"))
legend(x="bottomright",legend=c("k","G","P"),cex=0.1,bty="n",lty=c(1,1,1),col=c("darkgreen","darkgoldenrod3","indianred4"))




