a1<-c(kl3[,1])
b1<-c(kl3[,2])
c1<-c(kl3[,3])
d1<-c(kl3[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
kl3UC_eyedisc_1<-c(aa1/bb1)

kl3UC_1_488_base<-c(aa1[51:60])
kl3UC_1_488_low<-c(aa1[111:120])
kl3UC_1_488_peak<-c(aa1[81:90])

kl3UC_1_568_base<-c(bb1[51:60])
kl3UC_1_568_low<-c(bb1[111:120])
kl3UC_1_568_peak<-c(bb1[81:90])

kl3UC_1_bpl<-c((kl3UC_1_488_base/kl3UC_1_568_base)/((kl3UC_1_488_peak/kl3UC_1_568_peak)/(kl3UC_1_488_low/kl3UC_1_568_low)))
kl3UC_1_blp<-c((kl3UC_1_488_base/kl3UC_1_568_base)/((kl3UC_1_488_low/kl3UC_1_568_low)/(kl3UC_1_488_peak/kl3UC_1_568_peak)))
kl3UC_1_btl<-c((kl3UC_1_488_base/kl3UC_1_568_base)/(kl3UC_1_488_low/kl3UC_1_568_low))
kl3UC_1_btp<-c((kl3UC_1_488_base/kl3UC_1_568_base)/(kl3UC_1_488_peak/kl3UC_1_568_peak))

pHerry_kl3UC_1_base<-c(mean(kl3UC_1_488_base/kl3UC_1_568_base))               
pHerry_kl3UC_1_bpl<-c(mean(kl3UC_1_bpl))
pHerry_kl3UC_1_blp<-c(mean(kl3UC_1_blp))
pHerry_kl3UC_1_btl<-c(mean(kl3UC_1_btl))
pHerry_kl3UC_1_btp<-c(mean(kl3UC_1_btp))


a2<-c(kl3[,5])
b2<-c(kl3[,6])
c2<-c(kl3[,7])
d2<-c(kl3[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
kl3UC_eyedisc_2<-c(aa2/bb2)



kl3UC_2_488_base<-c(aa2[51:60])
kl3UC_2_488_low<-c(aa2[111:120])
kl3UC_2_488_peak<-c(aa2[81:90])

kl3UC_2_568_base<-c(bb2[51:60])
kl3UC_2_568_low<-c(bb2[111:120])
kl3UC_2_568_peak<-c(bb2[81:90])

kl3UC_2_bpl<-c((kl3UC_2_488_base/kl3UC_2_568_base)/((kl3UC_2_488_peak/kl3UC_2_568_peak)/(kl3UC_2_488_low/kl3UC_2_568_low)))
kl3UC_2_blp<-c((kl3UC_2_488_base/kl3UC_2_568_base)/((kl3UC_2_488_low/kl3UC_2_568_low)/(kl3UC_2_488_peak/kl3UC_2_568_peak)))
kl3UC_2_btl<-c((kl3UC_2_488_base/kl3UC_2_568_base)/(kl3UC_2_488_low/kl3UC_2_568_low))
kl3UC_2_btp<-c((kl3UC_2_488_base/kl3UC_2_568_base)/(kl3UC_2_488_peak/kl3UC_2_568_peak))

pHerry_kl3UC_2_base<-c(mean(kl3UC_2_488_base/kl3UC_2_568_base))               
pHerry_kl3UC_2_bpl<-c(mean(kl3UC_2_bpl))
pHerry_kl3UC_2_blp<-c(mean(kl3UC_2_blp))
pHerry_kl3UC_2_btl<-c(mean(kl3UC_2_btl))
pHerry_kl3UC_2_btp<-c(mean(kl3UC_2_btp))



a3<-c(kl3[,9])
b3<-c(kl3[,10])
c3<-c(kl3[,11])
d3<-c(kl3[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
kl3UC_eyedisc_3<-c(aa3/bb3)


kl3UC_3_488_base<-c(aa3[51:60])
kl3UC_3_488_low<-c(aa3[111:120])
kl3UC_3_488_peak<-c(aa3[81:90])

kl3UC_3_568_base<-c(bb3[51:60])
kl3UC_3_568_low<-c(bb3[111:120])
kl3UC_3_568_peak<-c(bb3[81:90])

kl3UC_3_bpl<-c((kl3UC_3_488_base/kl3UC_3_568_base)/((kl3UC_3_488_peak/kl3UC_3_568_peak)/(kl3UC_3_488_low/kl3UC_3_568_low)))
kl3UC_3_blp<-c((kl3UC_3_488_base/kl3UC_3_568_base)/((kl3UC_3_488_low/kl3UC_3_568_low)/(kl3UC_3_488_peak/kl3UC_3_568_peak)))
kl3UC_3_btl<-c((kl3UC_3_488_base/kl3UC_3_568_base)/(kl3UC_3_488_low/kl3UC_3_568_low))
kl3UC_3_btp<-c((kl3UC_3_488_base/kl3UC_3_568_base)/(kl3UC_3_488_peak/kl3UC_3_568_peak))

pHerry_kl3UC_3_base<-c(mean(kl3UC_3_488_base/kl3UC_3_568_base))               
pHerry_kl3UC_3_bpl<-c(mean(kl3UC_3_bpl))
pHerry_kl3UC_3_blp<-c(mean(kl3UC_3_blp))
pHerry_kl3UC_3_btl<-c(mean(kl3UC_3_btl))
pHerry_kl3UC_3_btp<-c(mean(kl3UC_3_btp))


a4<-c(kl3[,13])
b4<-c(kl3[,14])
c4<-c(kl3[,15])
d4<-c(kl3[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
kl3UC_eyedisc_4<-c(aa4/bb4)



kl3UC_4_488_base<-c(aa4[51:60])
kl3UC_4_488_low<-c(aa4[111:120])
kl3UC_4_488_peak<-c(aa4[81:90])

kl3UC_4_568_base<-c(bb4[51:60])
kl3UC_4_568_low<-c(bb4[111:120])
kl3UC_4_568_peak<-c(bb4[81:90])

kl3UC_4_bpl<-c((kl3UC_4_488_base/kl3UC_4_568_base)/((kl3UC_4_488_peak/kl3UC_4_568_peak)/(kl3UC_4_488_low/kl3UC_4_568_low)))
kl3UC_4_blp<-c((kl3UC_4_488_base/kl3UC_4_568_base)/((kl3UC_4_488_low/kl3UC_4_568_low)/(kl3UC_4_488_peak/kl3UC_4_568_peak)))
kl3UC_4_btl<-c((kl3UC_4_488_base/kl3UC_4_568_base)/(kl3UC_4_488_low/kl3UC_4_568_low))
kl3UC_4_btp<-c((kl3UC_4_488_base/kl3UC_4_568_base)/(kl3UC_4_488_peak/kl3UC_4_568_peak))

pHerry_kl3UC_4_base<-c(mean(kl3UC_4_488_base/kl3UC_4_568_base))               
pHerry_kl3UC_4_bpl<-c(mean(kl3UC_4_bpl))
pHerry_kl3UC_4_blp<-c(mean(kl3UC_4_blp))
pHerry_kl3UC_4_btl<-c(mean(kl3UC_4_btl))
pHerry_kl3UC_4_btp<-c(mean(kl3UC_4_btp))


a5<-c(kl3[,17])
b5<-c(kl3[,18])
c5<-c(kl3[,19])
d5<-c(kl3[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
kl3UC_eyedisc_5<-c(aa5/bb5)



kl3UC_5_488_base<-c(aa5[51:60])
kl3UC_5_488_low<-c(aa5[111:120])
kl3UC_5_488_peak<-c(aa5[81:90])

kl3UC_5_568_base<-c(bb5[51:60])
kl3UC_5_568_low<-c(bb5[111:120])
kl3UC_5_568_peak<-c(bb5[81:90])

kl3UC_5_bpl<-c((kl3UC_5_488_base/kl3UC_5_568_base)/((kl3UC_5_488_peak/kl3UC_5_568_peak)/(kl3UC_5_488_low/kl3UC_5_568_low)))
kl3UC_5_blp<-c((kl3UC_5_488_base/kl3UC_5_568_base)/((kl3UC_5_488_low/kl3UC_5_568_low)/(kl3UC_5_488_peak/kl3UC_5_568_peak)))
kl3UC_5_btl<-c((kl3UC_5_488_base/kl3UC_5_568_base)/(kl3UC_5_488_low/kl3UC_5_568_low))
kl3UC_5_btp<-c((kl3UC_5_488_base/kl3UC_5_568_base)/(kl3UC_5_488_peak/kl3UC_5_568_peak))

pHerry_kl3UC_5_base<-c(mean(kl3UC_5_488_base/kl3UC_5_568_base))               
pHerry_kl3UC_5_bpl<-c(mean(kl3UC_5_bpl))
pHerry_kl3UC_5_blp<-c(mean(kl3UC_5_blp))
pHerry_kl3UC_5_btl<-c(mean(kl3UC_5_btl))
pHerry_kl3UC_5_btp<-c(mean(kl3UC_5_btp))



a8<-c(kl3[,29])
b8<-c(kl3[,30])
c8<-c(kl3[,31])
d8<-c(kl3[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
kl3UC_eyedisc_8<-c(aa8/bb8)

kl3UC_8_488_base<-c(aa8[51:60])
kl3UC_8_488_low<-c(aa8[111:120])
kl3UC_8_488_peak<-c(aa8[81:90])

kl3UC_8_568_base<-c(bb8[51:60])
kl3UC_8_568_low<-c(bb8[111:120])
kl3UC_8_568_peak<-c(bb8[81:90])

kl3UC_8_bpl<-c((kl3UC_8_488_base/kl3UC_8_568_base)/((kl3UC_8_488_peak/kl3UC_8_568_peak)/(kl3UC_8_488_low/kl3UC_8_568_low)))
kl3UC_8_blp<-c((kl3UC_8_488_base/kl3UC_8_568_base)/((kl3UC_8_488_low/kl3UC_8_568_low)/(kl3UC_8_488_peak/kl3UC_8_568_peak)))
kl3UC_8_btl<-c((kl3UC_8_488_base/kl3UC_8_568_base)/(kl3UC_8_488_low/kl3UC_8_568_low))
kl3UC_8_btp<-c((kl3UC_8_488_base/kl3UC_8_568_base)/(kl3UC_8_488_peak/kl3UC_8_568_peak))

pHerry_kl3UC_8_base<-c(mean(kl3UC_8_488_base/kl3UC_8_568_base))               
pHerry_kl3UC_8_bpl<-c(mean(kl3UC_8_bpl))
pHerry_kl3UC_8_blp<-c(mean(kl3UC_8_blp))
pHerry_kl3UC_8_btl<-c(mean(kl3UC_8_btl))
pHerry_kl3UC_8_btp<-c(mean(kl3UC_8_btp))


a9<-c(kl3[,33])
b9<-c(kl3[,34])
c9<-c(kl3[,35])
d9<-c(kl3[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
kl3UC_eyedisc_9<-c(aa9/bb9)

kl3UC_9_488_base<-c(aa9[51:60])
kl3UC_9_488_low<-c(aa9[111:120])
kl3UC_9_488_peak<-c(aa9[81:90])

kl3UC_9_568_base<-c(bb9[51:60])
kl3UC_9_568_low<-c(bb9[111:120])
kl3UC_9_568_peak<-c(bb9[81:90])

kl3UC_9_bpl<-c((kl3UC_9_488_base/kl3UC_9_568_base)/((kl3UC_9_488_peak/kl3UC_9_568_peak)/(kl3UC_9_488_low/kl3UC_9_568_low)))
kl3UC_9_blp<-c((kl3UC_9_488_base/kl3UC_9_568_base)/((kl3UC_9_488_low/kl3UC_9_568_low)/(kl3UC_9_488_peak/kl3UC_9_568_peak)))
kl3UC_9_btl<-c((kl3UC_9_488_base/kl3UC_9_568_base)/(kl3UC_9_488_low/kl3UC_9_568_low))
kl3UC_9_btp<-c((kl3UC_9_488_base/kl3UC_9_568_base)/(kl3UC_9_488_peak/kl3UC_9_568_peak))

pHerry_kl3UC_9_base<-c(mean(kl3UC_9_488_base/kl3UC_9_568_base))               
pHerry_kl3UC_9_bpl<-c(mean(kl3UC_9_bpl))
pHerry_kl3UC_9_blp<-c(mean(kl3UC_9_blp))
pHerry_kl3UC_9_btl<-c(mean(kl3UC_9_btl))
pHerry_kl3UC_9_btp<-c(mean(kl3UC_9_btp))



pHerry_kl3UC_time_course<-c(kl3UC_eyedisc_1,kl3UC_eyedisc_2,kl3UC_eyedisc_3,kl3UC_eyedisc_4,kl3UC_eyedisc_5,kl3UC_eyedisc_8,kl3UC_eyedisc_9)
matpHerry_kl3UC_time_course<-matrix(pHerry_kl3UC_time_course,nrow=120,ncol=7)
mean_pHerry_kl3UC_time_course<-c(rowMeans(matpHerry_kl3UC_time_course))

library(plotrix)                                            # call library needed for std.error function
errors<-c(1:length(mean_pHerry_kl3UC_time_course))              # creates an artificial vector with the length of the experiment to be used to draw the error bars at the right position

yan<-numeric(length=nrow(matpHerry_kl3UC_time_course))
for (i in 1:nrow(matpHerry_kl3UC_time_course))
{yan[i]<-std.error(matpHerry_kl3UC_time_course[i,])}

errkl3.pos<-c(mean_pHerry_kl3UC_time_course+yan)
errkl3.neg<-c(mean_pHerry_kl3UC_time_course-yan)

pHerry_kl3UC_bpl<-c(pHerry_kl3UC_1_bpl,pHerry_kl3UC_2_bpl,pHerry_kl3UC_3_bpl,pHerry_kl3UC_4_bpl,pHerry_kl3UC_5_bpl,pHerry_kl3UC_8_bpl,pHerry_kl3UC_9_bpl)
pHerry_kl3UC_blp<-c(pHerry_kl3UC_1_blp,pHerry_kl3UC_2_blp,pHerry_kl3UC_3_blp,pHerry_kl3UC_4_blp,pHerry_kl3UC_5_blp,pHerry_kl3UC_8_blp,pHerry_kl3UC_9_blp)
pHerry_kl3UC_btp<-c(pHerry_kl3UC_1_btp,pHerry_kl3UC_2_btp,pHerry_kl3UC_3_btp,pHerry_kl3UC_4_btp,pHerry_kl3UC_5_btp,pHerry_kl3UC_8_btp,pHerry_kl3UC_9_btp)
pHerry_kl3UC_btl<-c(pHerry_kl3UC_1_btl,pHerry_kl3UC_2_btl,pHerry_kl3UC_3_btl,pHerry_kl3UC_4_btl,pHerry_kl3UC_5_btl,pHerry_kl3UC_8_btl,pHerry_kl3UC_9_btl)
pHerry_kl3UC_base<-c(pHerry_kl3UC_1_base,pHerry_kl3UC_2_base,pHerry_kl3UC_3_base,pHerry_kl3UC_4_base,pHerry_kl3UC_5_base,pHerry_kl3UC_8_base,pHerry_kl3UC_9_base)
