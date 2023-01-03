a1<-c(HyPer[,1])
b1<-c(HyPer[,2])
HyPer_eyedisc1<-c(a1-b1)

a2<-c(HyPer[,3])
b2<-c(HyPer[,4])
HyPer_eyedisc2<-c(a2-b2)

a3<-c(HyPer[,5])
b3<-c(HyPer[,6])
HyPer_eyedisc3<-c(a3-b3)

a4<-c(HyPer[,7])
b4<-c(HyPer[,8])
HyPer_eyedisc4<-c(a4-b4)

a5<-c(HyPer[,9])
b5<-c(HyPer[,10])
HyPer_eyedisc5<-c(a5-b5)


a6<-c(HyPer[,11])
b6<-c(HyPer[,12])
HyPer_eyedisc6<-c(a6-b6)

a7<-c(HyPer[,13])
b7<-c(HyPer[,14])
HyPer_eyedisc7<-c(a7-b7)

a8<-c(HyPer[,15])
b8<-c(HyPer[,16])
HyPer_eyedisc8<-c(a8-b8)

a9<-c(HyPer[,17])
b9<-c(HyPer[,18])
HyPer_eyedisc9<-c(a9-b9)

a10<-c(HyPer[,19])
b10<-c(HyPer[,20])
HyPer_eyedisc10<-c(a10-b10)

a11<-c(HyPer[,21])
b11<-c(HyPer[,22])
HyPer_eyedisc11<-c(a11-b11)

a12<-c(HyPer[,23])
b12<-c(HyPer[,24])
HyPer_eyedisc12<-c(a12-b12)

a13<-c(HyPer[,25])
b13<-c(HyPer[,26])
HyPer_eyedisc13<-c(a13-b13)

a14<-c(HyPer[,27])
b14<-c(HyPer[,28])
HyPer_eyedisc14<-c(a14-b14)

a15<-c(HyPer[,29])
b15<-c(HyPer[,30])
HyPer_eyedisc15<-c(a15-b15)

a16<-c(HyPer[,31])
b16<-c(HyPer[,32])
HyPer_eyedisc16<-c(a16-b16)

a17<-c(HyPer[,33])
b17<-c(HyPer[,34])
HyPer_eyedisc17<-c(a17-b17)

a18<-c(HyPer[,35])
b18<-c(HyPer[,36])
HyPer_eyedisc18<-c(a18-b18)

library(plotrix)

HyPer_time_course<-c(HyPer_eyedisc1,HyPer_eyedisc2,HyPer_eyedisc3,HyPer_eyedisc4,HyPer_eyedisc5,HyPer_eyedisc6,HyPer_eyedisc7,HyPer_eyedisc8,HyPer_eyedisc9,HyPer_eyedisc10,HyPer_eyedisc11,HyPer_eyedisc12,HyPer_eyedisc13,HyPer_eyedisc14,HyPer_eyedisc15,HyPer_eyedisc16,HyPer_eyedisc17,HyPer_eyedisc18)
matHyPer_time_course<-matrix(HyPer_time_course,nrow=150,ncol=18)
mean_HyPer_time_course<-c(rowMeans(matHyPer_time_course))

a<-c(1:150)
amber<-numeric(length=nrow(matHyPer_time_course))
for (i in 1:nrow(matHyPer_time_course))
{amber[i]<-std.error(matHyPer_time_course[i,])}

errHyPer.pos<-c(mean_HyPer_time_course+amber)
errHyPer.neg<-c(mean_HyPer_time_course-amber)

par(mfrow=c(1,1))
plot(mean_HyPer_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("firebrick4"))

lines(errHyPer.pos,col=c("firebrick1"))
lines(errHyPer.neg,col=c("firebrick1"))
segments(a,errHyPer.pos,x1=a,errHyPer.neg,col=c("firebrick1"),lwd=5)

points(mean_HyPer_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("HyPer-fluorescence over time"),col=c("firebrick4"))
