a3<-c(Pgd[,9])
b3<-c(Pgd[,10])
c3<-c(Pgd[,11])
d3<-c(Pgd[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
PgdUC_eyedisc_3<-c(aa3/bb3)


PgdUC_3_488_base<-c(aa3[51:60])
PgdUC_3_488_low<-c(aa3[111:120])
PgdUC_3_488_peak<-c(aa3[76:85])

PgdUC_3_568_base<-c(bb3[51:60])
PgdUC_3_568_low<-c(bb3[111:120])
PgdUC_3_568_peak<-c(bb3[76:85])

PgdUC_3_bpl<-c((PgdUC_3_488_base/PgdUC_3_568_base)/((PgdUC_3_488_peak/PgdUC_3_568_peak)/(PgdUC_3_488_low/PgdUC_3_568_low)))
PgdUC_3_blp<-c((PgdUC_3_488_base/PgdUC_3_568_base)/((PgdUC_3_488_low/PgdUC_3_568_low)/(PgdUC_3_488_peak/PgdUC_3_568_peak)))
PgdUC_3_btl<-c((PgdUC_3_488_base/PgdUC_3_568_base)/(PgdUC_3_488_low/PgdUC_3_568_low))
PgdUC_3_btp<-c((PgdUC_3_488_base/PgdUC_3_568_base)/(PgdUC_3_488_peak/PgdUC_3_568_peak))

pHerry_PgdUC_3_base<-c(mean(PgdUC_3_488_base/PgdUC_3_568_base))               
pHerry_PgdUC_3_bpl<-c(mean(PgdUC_3_bpl))
pHerry_PgdUC_3_blp<-c(mean(PgdUC_3_blp))
pHerry_PgdUC_3_btl<-c(mean(PgdUC_3_btl))
pHerry_PgdUC_3_btp<-c(mean(PgdUC_3_btp))


a4<-c(Pgd[,13])
b4<-c(Pgd[,14])
c4<-c(Pgd[,15])
d4<-c(Pgd[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
PgdUC_eyedisc_4<-c(aa4/bb4)



PgdUC_4_488_base<-c(aa4[51:60])
PgdUC_4_488_low<-c(aa4[111:120])
PgdUC_4_488_peak<-c(aa4[76:85])

PgdUC_4_568_base<-c(bb4[51:60])
PgdUC_4_568_low<-c(bb4[111:120])
PgdUC_4_568_peak<-c(bb4[76:85])

PgdUC_4_bpl<-c((PgdUC_4_488_base/PgdUC_4_568_base)/((PgdUC_4_488_peak/PgdUC_4_568_peak)/(PgdUC_4_488_low/PgdUC_4_568_low)))
PgdUC_4_blp<-c((PgdUC_4_488_base/PgdUC_4_568_base)/((PgdUC_4_488_low/PgdUC_4_568_low)/(PgdUC_4_488_peak/PgdUC_4_568_peak)))
PgdUC_4_btl<-c((PgdUC_4_488_base/PgdUC_4_568_base)/(PgdUC_4_488_low/PgdUC_4_568_low))
PgdUC_4_btp<-c((PgdUC_4_488_base/PgdUC_4_568_base)/(PgdUC_4_488_peak/PgdUC_4_568_peak))

pHerry_PgdUC_4_base<-c(mean(PgdUC_4_488_base/PgdUC_4_568_base))               
pHerry_PgdUC_4_bpl<-c(mean(PgdUC_4_bpl))
pHerry_PgdUC_4_blp<-c(mean(PgdUC_4_blp))
pHerry_PgdUC_4_btl<-c(mean(PgdUC_4_btl))
pHerry_PgdUC_4_btp<-c(mean(PgdUC_4_btp))


a5<-c(Pgd[,17])
b5<-c(Pgd[,18])
c5<-c(Pgd[,19])
d5<-c(Pgd[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
PgdUC_eyedisc_5<-c(aa5/bb5)



PgdUC_5_488_base<-c(aa5[51:60])
PgdUC_5_488_low<-c(aa5[111:120])
PgdUC_5_488_peak<-c(aa5[76:85])

PgdUC_5_568_base<-c(bb5[51:60])
PgdUC_5_568_low<-c(bb5[111:120])
PgdUC_5_568_peak<-c(bb5[76:85])

PgdUC_5_bpl<-c((PgdUC_5_488_base/PgdUC_5_568_base)/((PgdUC_5_488_peak/PgdUC_5_568_peak)/(PgdUC_5_488_low/PgdUC_5_568_low)))
PgdUC_5_blp<-c((PgdUC_5_488_base/PgdUC_5_568_base)/((PgdUC_5_488_low/PgdUC_5_568_low)/(PgdUC_5_488_peak/PgdUC_5_568_peak)))
PgdUC_5_btl<-c((PgdUC_5_488_base/PgdUC_5_568_base)/(PgdUC_5_488_low/PgdUC_5_568_low))
PgdUC_5_btp<-c((PgdUC_5_488_base/PgdUC_5_568_base)/(PgdUC_5_488_peak/PgdUC_5_568_peak))

pHerry_PgdUC_5_base<-c(mean(PgdUC_5_488_base/PgdUC_5_568_base))               
pHerry_PgdUC_5_bpl<-c(mean(PgdUC_5_bpl))
pHerry_PgdUC_5_blp<-c(mean(PgdUC_5_blp))
pHerry_PgdUC_5_btl<-c(mean(PgdUC_5_btl))
pHerry_PgdUC_5_btp<-c(mean(PgdUC_5_btp))


a6<-c(Pgd[,21])
b6<-c(Pgd[,22])
c6<-c(Pgd[,23])
d6<-c(Pgd[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
PgdUC_eyedisc_6<-c(aa6/bb6)

PgdUC_6_488_base<-c(aa6[51:60])
PgdUC_6_488_low<-c(aa6[111:120])
PgdUC_6_488_peak<-c(aa6[76:85])

PgdUC_6_568_base<-c(bb6[51:60])
PgdUC_6_568_low<-c(bb6[111:120])
PgdUC_6_568_peak<-c(bb6[76:85])

PgdUC_6_bpl<-c((PgdUC_6_488_base/PgdUC_6_568_base)/((PgdUC_6_488_peak/PgdUC_6_568_peak)/(PgdUC_6_488_low/PgdUC_6_568_low)))
PgdUC_6_blp<-c((PgdUC_6_488_base/PgdUC_6_568_base)/((PgdUC_6_488_low/PgdUC_6_568_low)/(PgdUC_6_488_peak/PgdUC_6_568_peak)))
PgdUC_6_btl<-c((PgdUC_6_488_base/PgdUC_6_568_base)/(PgdUC_6_488_low/PgdUC_6_568_low))
PgdUC_6_btp<-c((PgdUC_6_488_base/PgdUC_6_568_base)/(PgdUC_6_488_peak/PgdUC_6_568_peak))

pHerry_PgdUC_6_base<-c(mean(PgdUC_6_488_base/PgdUC_6_568_base))               
pHerry_PgdUC_6_bpl<-c(mean(PgdUC_6_bpl))
pHerry_PgdUC_6_blp<-c(mean(PgdUC_6_blp))
pHerry_PgdUC_6_btl<-c(mean(PgdUC_6_btl))
pHerry_PgdUC_6_btp<-c(mean(PgdUC_6_btp))




a7<-c(Pgd[,25])
b7<-c(Pgd[,26])
c7<-c(Pgd[,27])
d7<-c(Pgd[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
PgdUC_eyedisc_7<-c(aa7/bb7)



PgdUC_7_488_base<-c(aa7[51:60])
PgdUC_7_488_low<-c(aa7[111:120])
PgdUC_7_488_peak<-c(aa7[76:85])

PgdUC_7_568_base<-c(bb7[51:60])
PgdUC_7_568_low<-c(bb7[111:120])
PgdUC_7_568_peak<-c(bb7[76:85])

PgdUC_7_bpl<-c((PgdUC_7_488_base/PgdUC_7_568_base)/((PgdUC_7_488_peak/PgdUC_7_568_peak)/(PgdUC_7_488_low/PgdUC_7_568_low)))
PgdUC_7_blp<-c((PgdUC_7_488_base/PgdUC_7_568_base)/((PgdUC_7_488_low/PgdUC_7_568_low)/(PgdUC_7_488_peak/PgdUC_7_568_peak)))
PgdUC_7_btl<-c((PgdUC_7_488_base/PgdUC_7_568_base)/(PgdUC_7_488_low/PgdUC_7_568_low))
PgdUC_7_btp<-c((PgdUC_7_488_base/PgdUC_7_568_base)/(PgdUC_7_488_peak/PgdUC_7_568_peak))

pHerry_PgdUC_7_base<-c(mean(PgdUC_7_488_base/PgdUC_7_568_base))               
pHerry_PgdUC_7_bpl<-c(mean(PgdUC_7_bpl))
pHerry_PgdUC_7_blp<-c(mean(PgdUC_7_blp))
pHerry_PgdUC_7_btl<-c(mean(PgdUC_7_btl))
pHerry_PgdUC_7_btp<-c(mean(PgdUC_7_btp))


a8<-c(Pgd[,29])
b8<-c(Pgd[,30])
c8<-c(Pgd[,31])
d8<-c(Pgd[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
PgdUC_eyedisc_8<-c(aa8/bb8)

PgdUC_8_488_base<-c(aa8[51:60])
PgdUC_8_488_low<-c(aa8[111:120])
PgdUC_8_488_peak<-c(aa8[76:85])

PgdUC_8_568_base<-c(bb8[51:60])
PgdUC_8_568_low<-c(bb8[111:120])
PgdUC_8_568_peak<-c(bb8[76:85])

PgdUC_8_bpl<-c((PgdUC_8_488_base/PgdUC_8_568_base)/((PgdUC_8_488_peak/PgdUC_8_568_peak)/(PgdUC_8_488_low/PgdUC_8_568_low)))
PgdUC_8_blp<-c((PgdUC_8_488_base/PgdUC_8_568_base)/((PgdUC_8_488_low/PgdUC_8_568_low)/(PgdUC_8_488_peak/PgdUC_8_568_peak)))
PgdUC_8_btl<-c((PgdUC_8_488_base/PgdUC_8_568_base)/(PgdUC_8_488_low/PgdUC_8_568_low))
PgdUC_8_btp<-c((PgdUC_8_488_base/PgdUC_8_568_base)/(PgdUC_8_488_peak/PgdUC_8_568_peak))

pHerry_PgdUC_8_base<-c(mean(PgdUC_8_488_base/PgdUC_8_568_base))               
pHerry_PgdUC_8_bpl<-c(mean(PgdUC_8_bpl))
pHerry_PgdUC_8_blp<-c(mean(PgdUC_8_blp))
pHerry_PgdUC_8_btl<-c(mean(PgdUC_8_btl))
pHerry_PgdUC_8_btp<-c(mean(PgdUC_8_btp))


a9<-c(Pgd[,33])
b9<-c(Pgd[,34])
c9<-c(Pgd[,35])
d9<-c(Pgd[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
PgdUC_eyedisc_9<-c(aa9/bb9)

PgdUC_9_488_base<-c(aa9[51:60])
PgdUC_9_488_low<-c(aa9[111:120])
PgdUC_9_488_peak<-c(aa9[76:85])

PgdUC_9_568_base<-c(bb9[51:60])
PgdUC_9_568_low<-c(bb9[111:120])
PgdUC_9_568_peak<-c(bb9[76:85])

PgdUC_9_bpl<-c((PgdUC_9_488_base/PgdUC_9_568_base)/((PgdUC_9_488_peak/PgdUC_9_568_peak)/(PgdUC_9_488_low/PgdUC_9_568_low)))
PgdUC_9_blp<-c((PgdUC_9_488_base/PgdUC_9_568_base)/((PgdUC_9_488_low/PgdUC_9_568_low)/(PgdUC_9_488_peak/PgdUC_9_568_peak)))
PgdUC_9_btl<-c((PgdUC_9_488_base/PgdUC_9_568_base)/(PgdUC_9_488_low/PgdUC_9_568_low))
PgdUC_9_btp<-c((PgdUC_9_488_base/PgdUC_9_568_base)/(PgdUC_9_488_peak/PgdUC_9_568_peak))

pHerry_PgdUC_9_base<-c(mean(PgdUC_9_488_base/PgdUC_9_568_base))               
pHerry_PgdUC_9_bpl<-c(mean(PgdUC_9_bpl))
pHerry_PgdUC_9_blp<-c(mean(PgdUC_9_blp))
pHerry_PgdUC_9_btl<-c(mean(PgdUC_9_btl))
pHerry_PgdUC_9_btp<-c(mean(PgdUC_9_btp))

a10<-c(Pgd[,37])
b10<-c(Pgd[,38])
c10<-c(Pgd[,39])
d10<-c(Pgd[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
PgdUC_eyedisc_10<-c(aa10/bb10)

PgdUC_10_488_base<-c(aa10[51:60])
PgdUC_10_488_low<-c(aa10[111:120])
PgdUC_10_488_peak<-c(aa10[76:85])

PgdUC_10_568_base<-c(bb10[51:60])
PgdUC_10_568_low<-c(bb10[111:120])
PgdUC_10_568_peak<-c(bb10[76:85])

PgdUC_10_bpl<-c((PgdUC_10_488_base/PgdUC_10_568_base)/((PgdUC_10_488_peak/PgdUC_10_568_peak)/(PgdUC_10_488_low/PgdUC_10_568_low)))
PgdUC_10_blp<-c((PgdUC_10_488_base/PgdUC_10_568_base)/((PgdUC_10_488_low/PgdUC_10_568_low)/(PgdUC_10_488_peak/PgdUC_10_568_peak)))
PgdUC_10_btl<-c((PgdUC_10_488_base/PgdUC_10_568_base)/(PgdUC_10_488_low/PgdUC_10_568_low))
PgdUC_10_btp<-c((PgdUC_10_488_base/PgdUC_10_568_base)/(PgdUC_10_488_peak/PgdUC_10_568_peak))

pHerry_PgdUC_10_base<-c(mean(PgdUC_10_488_base/PgdUC_10_568_base))               
pHerry_PgdUC_10_bpl<-c(mean(PgdUC_10_bpl))
pHerry_PgdUC_10_blp<-c(mean(PgdUC_10_blp))
pHerry_PgdUC_10_btl<-c(mean(PgdUC_10_btl))
pHerry_PgdUC_10_btp<-c(mean(PgdUC_10_btp))


pHerry_PgdUC_time_course<-c(PgdUC_eyedisc_3,PgdUC_eyedisc_4,PgdUC_eyedisc_5,PgdUC_eyedisc_6,PgdUC_eyedisc_7,PgdUC_eyedisc_8,PgdUC_eyedisc_9,PgdUC_eyedisc_10)
matpHerry_PgdUC_time_course<-matrix(pHerry_PgdUC_time_course,nrow=120,ncol=8)
mean_pHerry_PgdUC_time_course<-c(rowMeans(matpHerry_PgdUC_time_course))

pHerry_PgdUC_bpl<-c(pHerry_PgdUC_3_bpl,pHerry_PgdUC_4_bpl,pHerry_PgdUC_5_bpl,pHerry_PgdUC_6_bpl,pHerry_PgdUC_7_bpl,pHerry_PgdUC_8_bpl,pHerry_PgdUC_9_bpl,pHerry_PgdUC_10_bpl)
pHerry_PgdUC_blp<-c(pHerry_PgdUC_3_blp,pHerry_PgdUC_4_blp,pHerry_PgdUC_5_blp,pHerry_PgdUC_6_blp,pHerry_PgdUC_7_blp,pHerry_PgdUC_8_blp,pHerry_PgdUC_9_blp,pHerry_PgdUC_10_blp)
pHerry_PgdUC_btp<-c(pHerry_PgdUC_3_btp,pHerry_PgdUC_4_btp,pHerry_PgdUC_5_btp,pHerry_PgdUC_6_btp,pHerry_PgdUC_7_btp,pHerry_PgdUC_8_btp,pHerry_PgdUC_9_btp,pHerry_PgdUC_10_btp)
pHerry_PgdUC_btl<-c(pHerry_PgdUC_3_btl,pHerry_PgdUC_4_btl,pHerry_PgdUC_5_btl,pHerry_PgdUC_6_btl,pHerry_PgdUC_7_btl,pHerry_PgdUC_8_btl,pHerry_PgdUC_9_btl,pHerry_PgdUC_10_btl)
pHerry_PgdUC_base<-c(pHerry_PgdUC_3_base,pHerry_PgdUC_4_base,pHerry_PgdUC_5_base,pHerry_PgdUC_6_base,pHerry_PgdUC_7_base,pHerry_PgdUC_8_base,pHerry_PgdUC_9_base,pHerry_PgdUC_10_base)
