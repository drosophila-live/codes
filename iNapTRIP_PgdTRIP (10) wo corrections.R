a1<-c(Pgd[,1])
b1<-c(Pgd[,2])
c1<-c(Pgd[,3])
d1<-c(Pgd[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
PgdUC_eyedisc_1<-c(aa1/bb1)

PgdUC_1_405_base<-c(aa1[51:60])
PgdUC_1_405_low<-c(aa1[76:85])
PgdUC_1_405_peak<-c(aa1[123:132])

PgdUC_1_568_base<-c(bb1[51:60])
PgdUC_1_568_low<-c(bb1[76:85])
PgdUC_1_568_peak<-c(bb1[123:132])

PgdUC_1_bpl<-c((PgdUC_1_405_base/PgdUC_1_568_base)/((PgdUC_1_405_peak/PgdUC_1_568_peak)/(PgdUC_1_405_low/PgdUC_1_568_low)))
PgdUC_1_blp<-c((PgdUC_1_405_base/PgdUC_1_568_base)/((PgdUC_1_405_low/PgdUC_1_568_low)/(PgdUC_1_405_peak/PgdUC_1_568_peak)))
PgdUC_1_btl<-c((PgdUC_1_405_base/PgdUC_1_568_base)/(PgdUC_1_405_low/PgdUC_1_568_low))
PgdUC_1_btp<-c((PgdUC_1_405_base/PgdUC_1_568_base)/(PgdUC_1_405_peak/PgdUC_1_568_peak))

iNap_PgdUC_1_base<-c(mean(PgdUC_1_405_base/PgdUC_1_568_base))               
iNap_PgdUC_1_bpl<-c(mean(PgdUC_1_bpl))
iNap_PgdUC_1_blp<-c(mean(PgdUC_1_blp))
iNap_PgdUC_1_btl<-c(mean(PgdUC_1_btl))
iNap_PgdUC_1_btp<-c(mean(PgdUC_1_btp))


a2<-c(Pgd[,5])
b2<-c(Pgd[,6])
c2<-c(Pgd[,7])
d2<-c(Pgd[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
PgdUC_eyedisc_2<-c(aa2/bb2)



PgdUC_2_405_base<-c(aa2[51:60])
PgdUC_2_405_low<-c(aa2[76:85])
PgdUC_2_405_peak<-c(aa2[123:132])

PgdUC_2_568_base<-c(bb2[51:60])
PgdUC_2_568_low<-c(bb2[76:85])
PgdUC_2_568_peak<-c(bb2[123:132])

PgdUC_2_bpl<-c((PgdUC_2_405_base/PgdUC_2_568_base)/((PgdUC_2_405_peak/PgdUC_2_568_peak)/(PgdUC_2_405_low/PgdUC_2_568_low)))
PgdUC_2_blp<-c((PgdUC_2_405_base/PgdUC_2_568_base)/((PgdUC_2_405_low/PgdUC_2_568_low)/(PgdUC_2_405_peak/PgdUC_2_568_peak)))
PgdUC_2_btl<-c((PgdUC_2_405_base/PgdUC_2_568_base)/(PgdUC_2_405_low/PgdUC_2_568_low))
PgdUC_2_btp<-c((PgdUC_2_405_base/PgdUC_2_568_base)/(PgdUC_2_405_peak/PgdUC_2_568_peak))

iNap_PgdUC_2_base<-c(mean(PgdUC_2_405_base/PgdUC_2_568_base))               
iNap_PgdUC_2_bpl<-c(mean(PgdUC_2_bpl))
iNap_PgdUC_2_blp<-c(mean(PgdUC_2_blp))
iNap_PgdUC_2_btl<-c(mean(PgdUC_2_btl))
iNap_PgdUC_2_btp<-c(mean(PgdUC_2_btp))



a3<-c(Pgd[,9])
b3<-c(Pgd[,10])
c3<-c(Pgd[,11])
d3<-c(Pgd[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
PgdUC_eyedisc_3<-c(aa3/bb3)


PgdUC_3_405_base<-c(aa3[51:60])
PgdUC_3_405_low<-c(aa3[76:85])
PgdUC_3_405_peak<-c(aa3[123:132])

PgdUC_3_568_base<-c(bb3[51:60])
PgdUC_3_568_low<-c(bb3[76:85])
PgdUC_3_568_peak<-c(bb3[123:132])

PgdUC_3_bpl<-c((PgdUC_3_405_base/PgdUC_3_568_base)/((PgdUC_3_405_peak/PgdUC_3_568_peak)/(PgdUC_3_405_low/PgdUC_3_568_low)))
PgdUC_3_blp<-c((PgdUC_3_405_base/PgdUC_3_568_base)/((PgdUC_3_405_low/PgdUC_3_568_low)/(PgdUC_3_405_peak/PgdUC_3_568_peak)))
PgdUC_3_btl<-c((PgdUC_3_405_base/PgdUC_3_568_base)/(PgdUC_3_405_low/PgdUC_3_568_low))
PgdUC_3_btp<-c((PgdUC_3_405_base/PgdUC_3_568_base)/(PgdUC_3_405_peak/PgdUC_3_568_peak))

iNap_PgdUC_3_base<-c(mean(PgdUC_3_405_base/PgdUC_3_568_base))               
iNap_PgdUC_3_bpl<-c(mean(PgdUC_3_bpl))
iNap_PgdUC_3_blp<-c(mean(PgdUC_3_blp))
iNap_PgdUC_3_btl<-c(mean(PgdUC_3_btl))
iNap_PgdUC_3_btp<-c(mean(PgdUC_3_btp))

a4<-c(Pgd[,13])
b4<-c(Pgd[,14])
c4<-c(Pgd[,15])
d4<-c(Pgd[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
PgdUC_eyedisc_4<-c(aa4/bb4)


PgdUC_4_405_base<-c(aa4[51:60])
PgdUC_4_405_low<-c(aa4[76:85])
PgdUC_4_405_peak<-c(aa4[123:132])

PgdUC_4_568_base<-c(bb4[51:60])
PgdUC_4_568_low<-c(bb4[76:85])
PgdUC_4_568_peak<-c(bb4[123:132])

PgdUC_4_bpl<-c((PgdUC_4_405_base/PgdUC_4_568_base)/((PgdUC_4_405_peak/PgdUC_4_568_peak)/(PgdUC_4_405_low/PgdUC_4_568_low)))
PgdUC_4_blp<-c((PgdUC_4_405_base/PgdUC_4_568_base)/((PgdUC_4_405_low/PgdUC_4_568_low)/(PgdUC_4_405_peak/PgdUC_4_568_peak)))
PgdUC_4_btl<-c((PgdUC_4_405_base/PgdUC_4_568_base)/(PgdUC_4_405_low/PgdUC_4_568_low))
PgdUC_4_btp<-c((PgdUC_4_405_base/PgdUC_4_568_base)/(PgdUC_4_405_peak/PgdUC_4_568_peak))

iNap_PgdUC_4_base<-c(mean(PgdUC_4_405_base/PgdUC_4_568_base))               
iNap_PgdUC_4_bpl<-c(mean(PgdUC_4_bpl))
iNap_PgdUC_4_blp<-c(mean(PgdUC_4_blp))
iNap_PgdUC_4_btl<-c(mean(PgdUC_4_btl))
iNap_PgdUC_4_btp<-c(mean(PgdUC_4_btp))



a8<-c(Pgd[,29])
b8<-c(Pgd[,30])
c8<-c(Pgd[,31])
d8<-c(Pgd[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
PgdUC_eyedisc_8<-c(aa8/bb8)

PgdUC_8_405_base<-c(aa8[51:60])
PgdUC_8_405_low<-c(aa8[76:85])
PgdUC_8_405_peak<-c(aa8[123:132])

PgdUC_8_568_base<-c(bb8[51:60])
PgdUC_8_568_low<-c(bb8[76:85])
PgdUC_8_568_peak<-c(bb8[123:132])

PgdUC_8_bpl<-c((PgdUC_8_405_base/PgdUC_8_568_base)/((PgdUC_8_405_peak/PgdUC_8_568_peak)/(PgdUC_8_405_low/PgdUC_8_568_low)))
PgdUC_8_blp<-c((PgdUC_8_405_base/PgdUC_8_568_base)/((PgdUC_8_405_low/PgdUC_8_568_low)/(PgdUC_8_405_peak/PgdUC_8_568_peak)))
PgdUC_8_btl<-c((PgdUC_8_405_base/PgdUC_8_568_base)/(PgdUC_8_405_low/PgdUC_8_568_low))
PgdUC_8_btp<-c((PgdUC_8_405_base/PgdUC_8_568_base)/(PgdUC_8_405_peak/PgdUC_8_568_peak))

iNap_PgdUC_8_base<-c(mean(PgdUC_8_405_base/PgdUC_8_568_base))               
iNap_PgdUC_8_bpl<-c(mean(PgdUC_8_bpl))
iNap_PgdUC_8_blp<-c(mean(PgdUC_8_blp))
iNap_PgdUC_8_btl<-c(mean(PgdUC_8_btl))
iNap_PgdUC_8_btp<-c(mean(PgdUC_8_btp))


a9<-c(Pgd[,33])
b9<-c(Pgd[,34])
c9<-c(Pgd[,35])
d9<-c(Pgd[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
PgdUC_eyedisc_9<-c(aa9/bb9)

PgdUC_9_405_base<-c(aa9[51:60])
PgdUC_9_405_low<-c(aa9[76:85])
PgdUC_9_405_peak<-c(aa9[123:132])

PgdUC_9_568_base<-c(bb9[51:60])
PgdUC_9_568_low<-c(bb9[76:85])
PgdUC_9_568_peak<-c(bb9[123:132])

PgdUC_9_bpl<-c((PgdUC_9_405_base/PgdUC_9_568_base)/((PgdUC_9_405_peak/PgdUC_9_568_peak)/(PgdUC_9_405_low/PgdUC_9_568_low)))
PgdUC_9_blp<-c((PgdUC_9_405_base/PgdUC_9_568_base)/((PgdUC_9_405_low/PgdUC_9_568_low)/(PgdUC_9_405_peak/PgdUC_9_568_peak)))
PgdUC_9_btl<-c((PgdUC_9_405_base/PgdUC_9_568_base)/(PgdUC_9_405_low/PgdUC_9_568_low))
PgdUC_9_btp<-c((PgdUC_9_405_base/PgdUC_9_568_base)/(PgdUC_9_405_peak/PgdUC_9_568_peak))

iNap_PgdUC_9_base<-c(mean(PgdUC_9_405_base/PgdUC_9_568_base))               
iNap_PgdUC_9_bpl<-c(mean(PgdUC_9_bpl))
iNap_PgdUC_9_blp<-c(mean(PgdUC_9_blp))
iNap_PgdUC_9_btl<-c(mean(PgdUC_9_btl))
iNap_PgdUC_9_btp<-c(mean(PgdUC_9_btp))

a10<-c(Pgd[,37])
b10<-c(Pgd[,38])
c10<-c(Pgd[,39])
d10<-c(Pgd[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
PgdUC_eyedisc_10<-c(aa10/bb10)

PgdUC_10_405_base<-c(aa10[51:60])
PgdUC_10_405_low<-c(aa10[76:85])
PgdUC_10_405_peak<-c(aa10[123:132])

PgdUC_10_568_base<-c(bb10[51:60])
PgdUC_10_568_low<-c(bb10[76:85])
PgdUC_10_568_peak<-c(bb10[123:132])

PgdUC_10_bpl<-c((PgdUC_10_405_base/PgdUC_10_568_base)/((PgdUC_10_405_peak/PgdUC_10_568_peak)/(PgdUC_10_405_low/PgdUC_10_568_low)))
PgdUC_10_blp<-c((PgdUC_10_405_base/PgdUC_10_568_base)/((PgdUC_10_405_low/PgdUC_10_568_low)/(PgdUC_10_405_peak/PgdUC_10_568_peak)))
PgdUC_10_btl<-c((PgdUC_10_405_base/PgdUC_10_568_base)/(PgdUC_10_405_low/PgdUC_10_568_low))
PgdUC_10_btp<-c((PgdUC_10_405_base/PgdUC_10_568_base)/(PgdUC_10_405_peak/PgdUC_10_568_peak))

iNap_PgdUC_10_base<-c(mean(PgdUC_10_405_base/PgdUC_10_568_base))               
iNap_PgdUC_10_bpl<-c(mean(PgdUC_10_bpl))
iNap_PgdUC_10_blp<-c(mean(PgdUC_10_blp))
iNap_PgdUC_10_btl<-c(mean(PgdUC_10_btl))
iNap_PgdUC_10_btp<-c(mean(PgdUC_10_btp))

a11<-c(Pgd[,41])
b11<-c(Pgd[,42])
c11<-c(Pgd[,43])
d11<-c(Pgd[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
PgdUC_eyedisc_11<-c(aa11/bb11)

PgdUC_11_405_base<-c(aa11[51:60])
PgdUC_11_405_low<-c(aa11[76:85])
PgdUC_11_405_peak<-c(aa11[123:132])

PgdUC_11_568_base<-c(bb11[51:60])
PgdUC_11_568_low<-c(bb11[76:85])
PgdUC_11_568_peak<-c(bb11[123:132])

PgdUC_11_bpl<-c((PgdUC_11_405_base/PgdUC_11_568_base)/((PgdUC_11_405_peak/PgdUC_11_568_peak)/(PgdUC_11_405_low/PgdUC_11_568_low)))
PgdUC_11_blp<-c((PgdUC_11_405_base/PgdUC_11_568_base)/((PgdUC_11_405_low/PgdUC_11_568_low)/(PgdUC_11_405_peak/PgdUC_11_568_peak)))
PgdUC_11_btl<-c((PgdUC_11_405_base/PgdUC_11_568_base)/(PgdUC_11_405_low/PgdUC_11_568_low))
PgdUC_11_btp<-c((PgdUC_11_405_base/PgdUC_11_568_base)/(PgdUC_11_405_peak/PgdUC_11_568_peak))

iNap_PgdUC_11_base<-c(mean(PgdUC_11_405_base/PgdUC_11_568_base)) 
iNap_PgdUC_11_bpl<-c(mean(PgdUC_11_bpl))
iNap_PgdUC_11_blp<-c(mean(PgdUC_11_blp))
iNap_PgdUC_11_btl<-c(mean(PgdUC_11_btl))
iNap_PgdUC_11_btp<-c(mean(PgdUC_11_btp))

a12<-c(Pgd[,45])
b12<-c(Pgd[,46])
c12<-c(Pgd[,47])
d12<-c(Pgd[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
PgdUC_eyedisc_12<-c(aa12/bb12)

PgdUC_12_405_base<-c(aa12[51:60])
PgdUC_12_405_low<-c(aa12[76:85])
PgdUC_12_405_peak<-c(aa12[123:132])

PgdUC_12_568_base<-c(bb12[51:60])
PgdUC_12_568_low<-c(bb12[76:85])
PgdUC_12_568_peak<-c(bb12[123:132])

PgdUC_12_bpl<-c((PgdUC_12_405_base/PgdUC_12_568_base)/((PgdUC_12_405_peak/PgdUC_12_568_peak)/(PgdUC_12_405_low/PgdUC_12_568_low)))
PgdUC_12_blp<-c((PgdUC_12_405_base/PgdUC_12_568_base)/((PgdUC_12_405_low/PgdUC_12_568_low)/(PgdUC_12_405_peak/PgdUC_12_568_peak)))
PgdUC_12_btl<-c((PgdUC_12_405_base/PgdUC_12_568_base)/(PgdUC_12_405_low/PgdUC_12_568_low))
PgdUC_12_btp<-c((PgdUC_12_405_base/PgdUC_12_568_base)/(PgdUC_12_405_peak/PgdUC_12_568_peak))

iNap_PgdUC_12_base<-c(mean(PgdUC_12_405_base/PgdUC_12_568_base))               
iNap_PgdUC_12_bpl<-c(mean(PgdUC_12_bpl))
iNap_PgdUC_12_blp<-c(mean(PgdUC_12_blp))
iNap_PgdUC_12_btl<-c(mean(PgdUC_12_btl))
iNap_PgdUC_12_btp<-c(mean(PgdUC_12_btp))

a13<-c(Pgd[,49])
b13<-c(Pgd[,50])
c13<-c(Pgd[,51])
d13<-c(Pgd[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
PgdUC_eyedisc_13<-c(aa13/bb13)

PgdUC_13_405_base<-c(aa13[51:60])
PgdUC_13_405_low<-c(aa13[76:85])
PgdUC_13_405_peak<-c(aa13[123:132])

PgdUC_13_568_base<-c(bb13[51:60])
PgdUC_13_568_low<-c(bb13[76:85])
PgdUC_13_568_peak<-c(bb13[123:132])

PgdUC_13_bpl<-c((PgdUC_13_405_base/PgdUC_13_568_base)/((PgdUC_13_405_peak/PgdUC_13_568_peak)/(PgdUC_13_405_low/PgdUC_13_568_low)))
PgdUC_13_blp<-c((PgdUC_13_405_base/PgdUC_13_568_base)/((PgdUC_13_405_low/PgdUC_13_568_low)/(PgdUC_13_405_peak/PgdUC_13_568_peak)))
PgdUC_13_btl<-c((PgdUC_13_405_base/PgdUC_13_568_base)/(PgdUC_13_405_low/PgdUC_13_568_low))
PgdUC_13_btp<-c((PgdUC_13_405_base/PgdUC_13_568_base)/(PgdUC_13_405_peak/PgdUC_13_568_peak))

iNap_PgdUC_13_base<-c(mean(PgdUC_13_405_base/PgdUC_13_568_base))               
iNap_PgdUC_13_bpl<-c(mean(PgdUC_13_bpl))
iNap_PgdUC_13_blp<-c(mean(PgdUC_13_blp))
iNap_PgdUC_13_btl<-c(mean(PgdUC_13_btl))
iNap_PgdUC_13_btp<-c(mean(PgdUC_13_btp))



iNap_PgdUC_time_course<-c(PgdUC_eyedisc_1,PgdUC_eyedisc_2,PgdUC_eyedisc_3,PgdUC_eyedisc_4,PgdUC_eyedisc_8,PgdUC_eyedisc_9,PgdUC_eyedisc_10,PgdUC_eyedisc_11,PgdUC_eyedisc_12,PgdUC_eyedisc_13)
matiNap_PgdUC_time_course<-matrix(iNap_PgdUC_time_course,nrow=132,ncol=10)
mean_iNap_PgdUC_time_course<-c(rowMeans(matiNap_PgdUC_time_course))

iNap_PgdUC_bpl<-c(iNap_PgdUC_1_bpl,iNap_PgdUC_2_bpl,iNap_PgdUC_3_bpl,iNap_PgdUC_4_bpl,iNap_PgdUC_8_bpl,iNap_PgdUC_9_bpl,iNap_PgdUC_10_bpl,iNap_PgdUC_11_bpl,iNap_PgdUC_12_bpl,iNap_PgdUC_13_bpl)
iNap_PgdUC_blp<-c(iNap_PgdUC_1_blp,iNap_PgdUC_2_blp,iNap_PgdUC_3_blp,iNap_PgdUC_4_blp,iNap_PgdUC_8_blp,iNap_PgdUC_9_blp,iNap_PgdUC_10_blp,iNap_PgdUC_11_blp,iNap_PgdUC_12_blp,iNap_PgdUC_13_blp)
iNap_PgdUC_btp<-c(iNap_PgdUC_1_btp,iNap_PgdUC_2_btp,iNap_PgdUC_3_btp,iNap_PgdUC_4_btp,iNap_PgdUC_8_btp,iNap_PgdUC_9_btp,iNap_PgdUC_10_btp,iNap_PgdUC_11_btp,iNap_PgdUC_12_btp,iNap_PgdUC_13_btp)
iNap_PgdUC_btl<-c(iNap_PgdUC_1_btl,iNap_PgdUC_2_btl,iNap_PgdUC_3_btl,iNap_PgdUC_4_btl,iNap_PgdUC_8_btl,iNap_PgdUC_9_btl,iNap_PgdUC_10_btl,iNap_PgdUC_11_btl,iNap_PgdUC_12_btl,iNap_PgdUC_13_btl)
iNap_PgdUC_base<-c(iNap_PgdUC_1_base,iNap_PgdUC_2_base,iNap_PgdUC_3_base,iNap_PgdUC_4_base,iNap_PgdUC_8_base,iNap_PgdUC_9_base,iNap_PgdUC_10_base,iNap_PgdUC_11_base,iNap_PgdUC_12_base,iNap_PgdUC_13_base)


