a1<-c(C199S[,1])
b1<-c(C199S[,2])
C199S_eyedisc1<-c(a1-b1)

a2<-c(C199S[,3])
b2<-c(C199S[,4])
C199S_eyedisc2<-c(a2-b2)

a3<-c(C199S[,5])
b3<-c(C199S[,6])
C199S_eyedisc3<-c(a3-b3)

a4<-c(C199S[,7])
b4<-c(C199S[,8])
C199S_eyedisc4<-c(a4-b4)

a5<-c(C199S[,9])
b5<-c(C199S[,10])
C199S_eyedisc5<-c(a5-b5)


a6<-c(C199S[,11])
b6<-c(C199S[,12])
C199S_eyedisc6<-c(a6-b6)

a7<-c(C199S[,13])
b7<-c(C199S[,14])
C199S_eyedisc7<-c(a7-b7)

a8<-c(C199S[,15])
b8<-c(C199S[,16])
C199S_eyedisc8<-c(a8-b8)

a9<-c(C199S[,17])
b9<-c(C199S[,18])
C199S_eyedisc9<-c(a9-b9)

a10<-c(C199S[,19])
b10<-c(C199S[,20])
C199S_eyedisc10<-c(a10-b10)

a11<-c(C199S[,21])
b11<-c(C199S[,22])
C199S_eyedisc11<-c(a11-b11)

a12<-c(C199S[,23])
b12<-c(C199S[,24])
C199S_eyedisc12<-c(a12-b12)

a13<-c(C199S[,25])
b13<-c(C199S[,26])
C199S_eyedisc13<-c(a13-b13)

a14<-c(C199S[,27])
b14<-c(C199S[,28])
C199S_eyedisc14<-c(a14-b14)

a15<-c(C199S[,29])
b15<-c(C199S[,30])
C199S_eyedisc15<-c(a15-b15)

a16<-c(C199S[,31])
b16<-c(C199S[,32])
C199S_eyedisc16<-c(a16-b16)



C199S_time_course<-c(C199S_eyedisc1,C199S_eyedisc2,C199S_eyedisc3,C199S_eyedisc4,C199S_eyedisc5,C199S_eyedisc6,C199S_eyedisc7,C199S_eyedisc8,C199S_eyedisc9,C199S_eyedisc10,C199S_eyedisc11,C199S_eyedisc12,C199S_eyedisc13,C199S_eyedisc14,C199S_eyedisc15,C199S_eyedisc16)
matC199S_time_course<-matrix(C199S_time_course,nrow=150,ncol=16)
mean_C199S_time_course<-c(rowMeans(matC199S_time_course))

a<-c(1:150)
amber<-numeric(length=nrow(matC199S_time_course))
for (i in 1:nrow(matC199S_time_course))
{amber[i]<-std.error(matC199S_time_course[i,])}

errC199S.pos<-c(mean_C199S_time_course+amber)
errC199S.neg<-c(mean_C199S_time_course-amber)

par(mfrow=c(1,1))
plot(mean_C199S_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("C199S-fluorescence over time"),col=c("lightsalmon4"))

lines(errC199S.pos,col=c("lightsalmon1"))
lines(errC199S.neg,col=c("lightsalmon1"))
segments(a,errC199S.pos,x1=a,errC199S.neg,col=c("lightsalmon1"),lwd=5)

points(mean_C199S_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("C199S-fluorescence over time"),col=c("lightsalmon4"))


lines(errHyPer.pos,col=c("firebrick1"))
lines(errHyPer.neg,col=c("firebrick1"))
segments(a,errHyPer.pos,x1=a,errHyPer.neg,col=c("firebrick1"),lwd=5)

points(mean_HyPer_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("firebrick4"))

legend(x="topright",legend=c("HyPerRed","HyPer-C199S"),cex=1,bty="n",lty=c(1,1,1),col=c("firebrick4","lightsalmon4"))
