a1<-c(iNapc[,1])
b1<-c(iNapc[,2])
iNapc_eyedisc1<-c(a1-b1)

a2<-c(iNapc[,3])
b2<-c(iNapc[,4])
iNapc_eyedisc2<-c(a2-b2)

a3<-c(iNapc[,5])
b3<-c(iNapc[,6])
iNapc_eyedisc3<-c(a3-b3)

a4<-c(iNapc[,7])
b4<-c(iNapc[,8])
iNapc_eyedisc4<-c(a4-b4)

a5<-c(iNapc[,9])
b5<-c(iNapc[,10])
iNapc_eyedisc5<-c(a5-b5)


a6<-c(iNapc[,11])
b6<-c(iNapc[,12])
iNapc_eyedisc6<-c(a6-b6)

a7<-c(iNapc[,13])
b7<-c(iNapc[,14])
iNapc_eyedisc7<-c(a7-b7)

a8<-c(iNapc[,15])
b8<-c(iNapc[,16])
iNapc_eyedisc8<-c(a8-b8)

a9<-c(iNapc[,17])
b9<-c(iNapc[,18])
iNapc_eyedisc9<-c(a9-b9)

a10<-c(iNapc[,19])
b10<-c(iNapc[,20])
iNapc_eyedisc10<-c(a10-b10)

a11<-c(iNapc[,21])
b11<-c(iNapc[,22])
iNapc_eyedisc11<-c(a11-b11)

a12<-c(iNapc[,23])
b12<-c(iNapc[,24])
iNapc_eyedisc12<-c(a12-b12)


iNapc_time_course<-c(iNapc_eyedisc1,iNapc_eyedisc2,iNapc_eyedisc3,iNapc_eyedisc4,iNapc_eyedisc5,iNapc_eyedisc6,iNapc_eyedisc7,iNapc_eyedisc8,iNapc_eyedisc9,iNapc_eyedisc10,iNapc_eyedisc11,iNapc_eyedisc12)
matiNapc_time_course<-matrix(iNapc_time_course,nrow=120,ncol=12)
mean_iNapc_time_course<-c(rowMeans(matiNapc_time_course))

a<-c(1:120)
bente<-numeric(length=nrow(matiNapc_time_course))
for (i in 1:nrow(matiNapc_time_course))
{bente[i]<-std.error(matiNapc_time_course[i,])}

erriNapc.pos<-c(mean_iNapc_time_course+bente)
erriNapc.neg<-c(mean_iNapc_time_course-bente)

par(mfrow=c(1,1))

points(mean_iNapc_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("iNap-fluorescence over time"),col=c("lightskyblue"))
lines(erriNapc.pos,col=c("lightskyblue1"))
lines(erriNapc.neg,col=c("lightskyblue1"))
segments(a,erriNapc.pos,x1=a,erriNapc.neg,col=c("lightskyblue1"),lwd=5)

points(mean_iNapc_time_course,ylim=c(0,50),ylab=c("grey values"),type="l",lwd=3,xlab=c("iNap-fluorescence over time"),col=c("lightskyblue"))

legend(x="topright",legend=c("iNap1","iNapc"),cex=0.5,lty=c(1,1,1),col=c("darkgreen","lightskyblue"))