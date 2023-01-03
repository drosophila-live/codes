a1<-c(Pgd[,1])
b1<-c(Pgd[,2])
c1<-c(Pgd[,3])
d1<-c(Pgd[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
PgdUC_eyedisc_1<-c(aa1/bb1)

PgdUC_1_488_base<-c(aa1[51:60])
PgdUC_1_488_low<-c(aa1[111:120])
PgdUC_1_488_peak<-c(aa1[76:85])

PgdUC_1_568_base<-c(bb1[51:60])
PgdUC_1_568_low<-c(bb1[111:120])
PgdUC_1_568_peak<-c(bb1[76:85])

PgdUC_1_bpl<-c((PgdUC_1_488_base/PgdUC_1_568_base)/((PgdUC_1_488_peak/PgdUC_1_568_peak)/(PgdUC_1_488_low/PgdUC_1_568_low)))
PgdUC_1_blp<-c((PgdUC_1_488_base/PgdUC_1_568_base)/((PgdUC_1_488_low/PgdUC_1_568_low)/(PgdUC_1_488_peak/PgdUC_1_568_peak)))
PgdUC_1_btl<-c((PgdUC_1_488_base/PgdUC_1_568_base)/(PgdUC_1_488_low/PgdUC_1_568_low))
PgdUC_1_btp<-c((PgdUC_1_488_base/PgdUC_1_568_base)/(PgdUC_1_488_peak/PgdUC_1_568_peak))

pHerry_PgdUC_1_base<-c(mean(PgdUC_1_488_base/PgdUC_1_568_base))               
pHerry_PgdUC_1_bpl<-c(mean(PgdUC_1_bpl))
pHerry_PgdUC_1_blp<-c(mean(PgdUC_1_blp))
pHerry_PgdUC_1_btl<-c(mean(PgdUC_1_btl))
pHerry_PgdUC_1_btp<-c(mean(PgdUC_1_btp))


a2<-c(Pgd[,5])
b2<-c(Pgd[,6])
c2<-c(Pgd[,7])
d2<-c(Pgd[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
PgdUC_eyedisc_2<-c(aa2/bb2)



PgdUC_2_488_base<-c(aa2[51:60])
PgdUC_2_488_low<-c(aa2[111:120])
PgdUC_2_488_peak<-c(aa2[76:85])

PgdUC_2_568_base<-c(bb2[51:60])
PgdUC_2_568_low<-c(bb2[111:120])
PgdUC_2_568_peak<-c(bb2[76:85])

PgdUC_2_bpl<-c((PgdUC_2_488_base/PgdUC_2_568_base)/((PgdUC_2_488_peak/PgdUC_2_568_peak)/(PgdUC_2_488_low/PgdUC_2_568_low)))
PgdUC_2_blp<-c((PgdUC_2_488_base/PgdUC_2_568_base)/((PgdUC_2_488_low/PgdUC_2_568_low)/(PgdUC_2_488_peak/PgdUC_2_568_peak)))
PgdUC_2_btl<-c((PgdUC_2_488_base/PgdUC_2_568_base)/(PgdUC_2_488_low/PgdUC_2_568_low))
PgdUC_2_btp<-c((PgdUC_2_488_base/PgdUC_2_568_base)/(PgdUC_2_488_peak/PgdUC_2_568_peak))

pHerry_PgdUC_2_base<-c(mean(PgdUC_2_488_base/PgdUC_2_568_base))               
pHerry_PgdUC_2_bpl<-c(mean(PgdUC_2_bpl))
pHerry_PgdUC_2_blp<-c(mean(PgdUC_2_blp))
pHerry_PgdUC_2_btl<-c(mean(PgdUC_2_btl))
pHerry_PgdUC_2_btp<-c(mean(PgdUC_2_btp))



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

a11<-c(Pgd[,41])
b11<-c(Pgd[,42])
c11<-c(Pgd[,43])
d11<-c(Pgd[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
PgdUC_eyedisc_11<-c(aa11/bb11)

PgdUC_11_488_base<-c(aa11[51:60])
PgdUC_11_488_low<-c(aa11[111:120])
PgdUC_11_488_peak<-c(aa11[76:85])

PgdUC_11_568_base<-c(bb11[51:60])
PgdUC_11_568_low<-c(bb11[111:120])
PgdUC_11_568_peak<-c(bb11[76:85])

PgdUC_11_bpl<-c((PgdUC_11_488_base/PgdUC_11_568_base)/((PgdUC_11_488_peak/PgdUC_11_568_peak)/(PgdUC_11_488_low/PgdUC_11_568_low)))
PgdUC_11_blp<-c((PgdUC_11_488_base/PgdUC_11_568_base)/((PgdUC_11_488_low/PgdUC_11_568_low)/(PgdUC_11_488_peak/PgdUC_11_568_peak)))
PgdUC_11_btl<-c((PgdUC_11_488_base/PgdUC_11_568_base)/(PgdUC_11_488_low/PgdUC_11_568_low))
PgdUC_11_btp<-c((PgdUC_11_488_base/PgdUC_11_568_base)/(PgdUC_11_488_peak/PgdUC_11_568_peak))

pHerry_PgdUC_11_base<-c(mean(PgdUC_11_488_base/PgdUC_11_568_base))               
pHerry_PgdUC_11_bpl<-c(mean(PgdUC_11_bpl))
pHerry_PgdUC_11_blp<-c(mean(PgdUC_11_blp))
pHerry_PgdUC_11_btl<-c(mean(PgdUC_11_btl))
pHerry_PgdUC_11_btp<-c(mean(PgdUC_11_btp))

a12<-c(Pgd[,45])
b12<-c(Pgd[,46])
c12<-c(Pgd[,47])
d12<-c(Pgd[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
PgdUC_eyedisc_12<-c(aa12/bb12)

PgdUC_12_488_base<-c(aa12[51:60])
PgdUC_12_488_low<-c(aa12[111:120])
PgdUC_12_488_peak<-c(aa12[76:85])

PgdUC_12_568_base<-c(bb12[51:60])
PgdUC_12_568_low<-c(bb12[111:120])
PgdUC_12_568_peak<-c(bb12[76:85])

PgdUC_12_bpl<-c((PgdUC_12_488_base/PgdUC_12_568_base)/((PgdUC_12_488_peak/PgdUC_12_568_peak)/(PgdUC_12_488_low/PgdUC_12_568_low)))
PgdUC_12_blp<-c((PgdUC_12_488_base/PgdUC_12_568_base)/((PgdUC_12_488_low/PgdUC_12_568_low)/(PgdUC_12_488_peak/PgdUC_12_568_peak)))
PgdUC_12_btl<-c((PgdUC_12_488_base/PgdUC_12_568_base)/(PgdUC_12_488_low/PgdUC_12_568_low))
PgdUC_12_btp<-c((PgdUC_12_488_base/PgdUC_12_568_base)/(PgdUC_12_488_peak/PgdUC_12_568_peak))

pHerry_PgdUC_12_base<-c(mean(PgdUC_12_488_base/PgdUC_12_568_base))               
pHerry_PgdUC_12_bpl<-c(mean(PgdUC_12_bpl))
pHerry_PgdUC_12_blp<-c(mean(PgdUC_12_blp))
pHerry_PgdUC_12_btl<-c(mean(PgdUC_12_btl))
pHerry_PgdUC_12_btp<-c(mean(PgdUC_12_btp))

a13<-c(Pgd[,49])
b13<-c(Pgd[,50])
c13<-c(Pgd[,51])
d13<-c(Pgd[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
PgdUC_eyedisc_13<-c(aa13/bb13)

PgdUC_13_488_base<-c(aa13[51:60])
PgdUC_13_488_low<-c(aa13[111:120])
PgdUC_13_488_peak<-c(aa13[76:85])

PgdUC_13_568_base<-c(bb13[51:60])
PgdUC_13_568_low<-c(bb13[111:120])
PgdUC_13_568_peak<-c(bb13[76:85])

PgdUC_13_bpl<-c((PgdUC_13_488_base/PgdUC_13_568_base)/((PgdUC_13_488_peak/PgdUC_13_568_peak)/(PgdUC_13_488_low/PgdUC_13_568_low)))
PgdUC_13_blp<-c((PgdUC_13_488_base/PgdUC_13_568_base)/((PgdUC_13_488_low/PgdUC_13_568_low)/(PgdUC_13_488_peak/PgdUC_13_568_peak)))
PgdUC_13_btl<-c((PgdUC_13_488_base/PgdUC_13_568_base)/(PgdUC_13_488_low/PgdUC_13_568_low))
PgdUC_13_btp<-c((PgdUC_13_488_base/PgdUC_13_568_base)/(PgdUC_13_488_peak/PgdUC_13_568_peak))

pHerry_PgdUC_13_base<-c(mean(PgdUC_13_488_base/PgdUC_13_568_base))               
pHerry_PgdUC_13_bpl<-c(mean(PgdUC_13_bpl))
pHerry_PgdUC_13_blp<-c(mean(PgdUC_13_blp))
pHerry_PgdUC_13_btl<-c(mean(PgdUC_13_btl))
pHerry_PgdUC_13_btp<-c(mean(PgdUC_13_btp))

a14<-c(Pgd[,53])
b14<-c(Pgd[,54])
c14<-c(Pgd[,55])
d14<-c(Pgd[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
PgdUC_eyedisc_14<-c(aa14/bb14)

PgdUC_14_488_base<-c(aa14[51:60])
PgdUC_14_488_low<-c(aa14[111:120])
PgdUC_14_488_peak<-c(aa14[76:85])

PgdUC_14_568_base<-c(bb14[51:60])
PgdUC_14_568_low<-c(bb14[111:120])
PgdUC_14_568_peak<-c(bb14[76:85])

PgdUC_14_bpl<-c((PgdUC_14_488_base/PgdUC_14_568_base)/((PgdUC_14_488_peak/PgdUC_14_568_peak)/(PgdUC_14_488_low/PgdUC_14_568_low)))
PgdUC_14_blp<-c((PgdUC_14_488_base/PgdUC_14_568_base)/((PgdUC_14_488_low/PgdUC_14_568_low)/(PgdUC_14_488_peak/PgdUC_14_568_peak)))
PgdUC_14_btl<-c((PgdUC_14_488_base/PgdUC_14_568_base)/(PgdUC_14_488_low/PgdUC_14_568_low))
PgdUC_14_btp<-c((PgdUC_14_488_base/PgdUC_14_568_base)/(PgdUC_14_488_peak/PgdUC_14_568_peak))

pHerry_PgdUC_14_base<-c(mean(PgdUC_14_488_base/PgdUC_14_568_base))               
pHerry_PgdUC_14_bpl<-c(mean(PgdUC_14_bpl))
pHerry_PgdUC_14_blp<-c(mean(PgdUC_14_blp))
pHerry_PgdUC_14_btl<-c(mean(PgdUC_14_btl))
pHerry_PgdUC_14_btp<-c(mean(PgdUC_14_btp))

a15<-c(Pgd[,57])
b15<-c(Pgd[,58])
c15<-c(Pgd[,59])
d15<-c(Pgd[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
PgdUC_eyedisc_15<-c(aa15/bb15)

PgdUC_15_488_base<-c(aa15[51:60])
PgdUC_15_488_low<-c(aa15[111:120])
PgdUC_15_488_peak<-c(aa15[76:85])

PgdUC_15_568_base<-c(bb15[51:60])
PgdUC_15_568_low<-c(bb15[111:120])
PgdUC_15_568_peak<-c(bb15[76:85])

PgdUC_15_bpl<-c((PgdUC_15_488_base/PgdUC_15_568_base)/((PgdUC_15_488_peak/PgdUC_15_568_peak)/(PgdUC_15_488_low/PgdUC_15_568_low)))
PgdUC_15_blp<-c((PgdUC_15_488_base/PgdUC_15_568_base)/((PgdUC_15_488_low/PgdUC_15_568_low)/(PgdUC_15_488_peak/PgdUC_15_568_peak)))
PgdUC_15_btl<-c((PgdUC_15_488_base/PgdUC_15_568_base)/(PgdUC_15_488_low/PgdUC_15_568_low))
PgdUC_15_btp<-c((PgdUC_15_488_base/PgdUC_15_568_base)/(PgdUC_15_488_peak/PgdUC_15_568_peak))

pHerry_PgdUC_15_base<-c(mean(PgdUC_15_488_base/PgdUC_15_568_base))               
pHerry_PgdUC_15_bpl<-c(mean(PgdUC_15_bpl))
pHerry_PgdUC_15_blp<-c(mean(PgdUC_15_blp))
pHerry_PgdUC_15_btl<-c(mean(PgdUC_15_btl))
pHerry_PgdUC_15_btp<-c(mean(PgdUC_15_btp))



a20<-c(Pgd[,77])
b20<-c(Pgd[,78])
c20<-c(Pgd[,79])
d20<-c(Pgd[,80])
aa20<-c(a20-b20)
bb20<-c(c20-d20)
PgdUC_eyedisc_20<-c(aa20/bb20)

PgdUC_20_488_base<-c(aa20[51:60])
PgdUC_20_488_low<-c(aa20[111:120])
PgdUC_20_488_peak<-c(aa20[76:85])

PgdUC_20_568_base<-c(bb20[51:60])
PgdUC_20_568_low<-c(bb20[111:120])
PgdUC_20_568_peak<-c(bb20[76:85])

PgdUC_20_bpl<-c((PgdUC_20_488_base/PgdUC_20_568_base)/((PgdUC_20_488_peak/PgdUC_20_568_peak)/(PgdUC_20_488_low/PgdUC_20_568_low)))
PgdUC_20_blp<-c((PgdUC_20_488_base/PgdUC_20_568_base)/((PgdUC_20_488_low/PgdUC_20_568_low)/(PgdUC_20_488_peak/PgdUC_20_568_peak)))
PgdUC_20_btl<-c((PgdUC_20_488_base/PgdUC_20_568_base)/(PgdUC_20_488_low/PgdUC_20_568_low))
PgdUC_20_btp<-c((PgdUC_20_488_base/PgdUC_20_568_base)/(PgdUC_20_488_peak/PgdUC_20_568_peak))

pHerry_PgdUC_20_base<-c(mean(PgdUC_20_488_base/PgdUC_20_568_base))               
pHerry_PgdUC_20_bpl<-c(mean(PgdUC_20_bpl))
pHerry_PgdUC_20_blp<-c(mean(PgdUC_20_blp))
pHerry_PgdUC_20_btl<-c(mean(PgdUC_20_btl))
pHerry_PgdUC_20_btp<-c(mean(PgdUC_20_btp))



a22<-c(Pgd[,85])
b22<-c(Pgd[,86])
c22<-c(Pgd[,87])
d22<-c(Pgd[,88])
aa22<-c(a22-b22)
bb22<-c(c22-d22)
PgdUC_eyedisc_22<-c(aa22/bb22)

PgdUC_22_488_base<-c(aa22[51:60])
PgdUC_22_488_low<-c(aa22[111:120])
PgdUC_22_488_peak<-c(aa22[76:85])

PgdUC_22_568_base<-c(bb22[51:60])
PgdUC_22_568_low<-c(bb22[111:120])
PgdUC_22_568_peak<-c(bb22[76:85])

PgdUC_22_bpl<-c((PgdUC_22_488_base/PgdUC_22_568_base)/((PgdUC_22_488_peak/PgdUC_22_568_peak)/(PgdUC_22_488_low/PgdUC_22_568_low)))
PgdUC_22_blp<-c((PgdUC_22_488_base/PgdUC_22_568_base)/((PgdUC_22_488_low/PgdUC_22_568_low)/(PgdUC_22_488_peak/PgdUC_22_568_peak)))
PgdUC_22_btl<-c((PgdUC_22_488_base/PgdUC_22_568_base)/(PgdUC_22_488_low/PgdUC_22_568_low))
PgdUC_22_btp<-c((PgdUC_22_488_base/PgdUC_22_568_base)/(PgdUC_22_488_peak/PgdUC_22_568_peak))

pHerry_PgdUC_22_base<-c(mean(PgdUC_22_488_base/PgdUC_22_568_base))               
pHerry_PgdUC_22_bpl<-c(mean(PgdUC_22_bpl))
pHerry_PgdUC_22_blp<-c(mean(PgdUC_22_blp))
pHerry_PgdUC_22_btl<-c(mean(PgdUC_22_btl))
pHerry_PgdUC_22_btp<-c(mean(PgdUC_22_btp))


a23<-c(Pgd[,89])
b23<-c(Pgd[,90])
c23<-c(Pgd[,91])
d23<-c(Pgd[,92])
aa23<-c(a23-b23)
bb23<-c(c23-d23)
PgdUC_eyedisc_23<-c(aa23/bb23)

PgdUC_23_488_base<-c(aa23[51:60])
PgdUC_23_488_low<-c(aa23[111:120])
PgdUC_23_488_peak<-c(aa23[76:85])

PgdUC_23_568_base<-c(bb23[51:60])
PgdUC_23_568_low<-c(bb23[111:120])
PgdUC_23_568_peak<-c(bb23[76:85])

PgdUC_23_bpl<-c((PgdUC_23_488_base/PgdUC_23_568_base)/((PgdUC_23_488_peak/PgdUC_23_568_peak)/(PgdUC_23_488_low/PgdUC_23_568_low)))
PgdUC_23_blp<-c((PgdUC_23_488_base/PgdUC_23_568_base)/((PgdUC_23_488_low/PgdUC_23_568_low)/(PgdUC_23_488_peak/PgdUC_23_568_peak)))
PgdUC_23_btl<-c((PgdUC_23_488_base/PgdUC_23_568_base)/(PgdUC_23_488_low/PgdUC_23_568_low))
PgdUC_23_btp<-c((PgdUC_23_488_base/PgdUC_23_568_base)/(PgdUC_23_488_peak/PgdUC_23_568_peak))

pHerry_PgdUC_23_base<-c(mean(PgdUC_23_488_base/PgdUC_23_568_base))               
pHerry_PgdUC_23_bpl<-c(mean(PgdUC_23_bpl))
pHerry_PgdUC_23_blp<-c(mean(PgdUC_23_blp))
pHerry_PgdUC_23_btl<-c(mean(PgdUC_23_btl))
pHerry_PgdUC_23_btp<-c(mean(PgdUC_23_btp))


a24<-c(Pgd[,93])
b24<-c(Pgd[,94])
c24<-c(Pgd[,95])
d24<-c(Pgd[,96])
aa24<-c(a24-b24)
bb24<-c(c24-d24)
PgdUC_eyedisc_24<-c(aa24/bb24)

PgdUC_24_488_base<-c(aa24[51:60])
PgdUC_24_488_low<-c(aa24[111:120])
PgdUC_24_488_peak<-c(aa24[76:85])

PgdUC_24_568_base<-c(bb24[51:60])
PgdUC_24_568_low<-c(bb24[111:120])
PgdUC_24_568_peak<-c(bb24[76:85])

PgdUC_24_bpl<-c((PgdUC_24_488_base/PgdUC_24_568_base)/((PgdUC_24_488_peak/PgdUC_24_568_peak)/(PgdUC_24_488_low/PgdUC_24_568_low)))
PgdUC_24_blp<-c((PgdUC_24_488_base/PgdUC_24_568_base)/((PgdUC_24_488_low/PgdUC_24_568_low)/(PgdUC_24_488_peak/PgdUC_24_568_peak)))
PgdUC_24_btl<-c((PgdUC_24_488_base/PgdUC_24_568_base)/(PgdUC_24_488_low/PgdUC_24_568_low))
PgdUC_24_btp<-c((PgdUC_24_488_base/PgdUC_24_568_base)/(PgdUC_24_488_peak/PgdUC_24_568_peak))

pHerry_PgdUC_24_base<-c(mean(PgdUC_24_488_base/PgdUC_24_568_base))               
pHerry_PgdUC_24_bpl<-c(mean(PgdUC_24_bpl))
pHerry_PgdUC_24_blp<-c(mean(PgdUC_24_blp))
pHerry_PgdUC_24_btl<-c(mean(PgdUC_24_btl))
pHerry_PgdUC_24_btp<-c(mean(PgdUC_24_btp))


pHerry_PgdUC_time_course<-c(PgdUC_eyedisc_1,PgdUC_eyedisc_2,PgdUC_eyedisc_3,PgdUC_eyedisc_5,PgdUC_eyedisc_6,PgdUC_eyedisc_7,PgdUC_eyedisc_8,PgdUC_eyedisc_9,PgdUC_eyedisc_10,PgdUC_eyedisc_11,PgdUC_eyedisc_12,PgdUC_eyedisc_13,PgdUC_eyedisc_14,PgdUC_eyedisc_15,PgdUC_eyedisc_20,PgdUC_eyedisc_22,PgdUC_eyedisc_23,PgdUC_eyedisc_24)
matpHerry_PgdUC_time_course<-matrix(pHerry_PgdUC_time_course,nrow=120,ncol=18)
mean_pHerry_PgdUC_time_course<-c(rowMeans(matpHerry_PgdUC_time_course))

pHerry_PgdUC_bpl<-c(pHerry_PgdUC_1_bpl,pHerry_PgdUC_2_bpl,pHerry_PgdUC_3_bpl,pHerry_PgdUC_5_bpl,pHerry_PgdUC_6_bpl,pHerry_PgdUC_7_bpl,pHerry_PgdUC_8_bpl,pHerry_PgdUC_9_bpl,pHerry_PgdUC_10_bpl,pHerry_PgdUC_11_bpl,pHerry_PgdUC_12_bpl,pHerry_PgdUC_13_bpl,pHerry_PgdUC_14_bpl,pHerry_PgdUC_15_bpl,pHerry_PgdUC_20_bpl,pHerry_PgdUC_22_bpl,pHerry_PgdUC_23_bpl,pHerry_PgdUC_24_bpl)
pHerry_PgdUC_blp<-c(pHerry_PgdUC_1_blp,pHerry_PgdUC_2_blp,pHerry_PgdUC_3_blp,pHerry_PgdUC_5_blp,pHerry_PgdUC_6_blp,pHerry_PgdUC_7_blp,pHerry_PgdUC_8_blp,pHerry_PgdUC_9_blp,pHerry_PgdUC_10_blp,pHerry_PgdUC_11_blp,pHerry_PgdUC_12_blp,pHerry_PgdUC_13_blp,pHerry_PgdUC_14_blp,pHerry_PgdUC_15_blp,pHerry_PgdUC_20_blp,pHerry_PgdUC_22_blp,pHerry_PgdUC_23_blp,pHerry_PgdUC_24_blp)
pHerry_PgdUC_btp<-c(pHerry_PgdUC_1_btp,pHerry_PgdUC_2_btp,pHerry_PgdUC_3_btp,pHerry_PgdUC_5_btp,pHerry_PgdUC_6_btp,pHerry_PgdUC_7_btp,pHerry_PgdUC_8_btp,pHerry_PgdUC_9_btp,pHerry_PgdUC_10_btp,pHerry_PgdUC_11_btp,pHerry_PgdUC_12_btp,pHerry_PgdUC_13_btp,pHerry_PgdUC_14_btp,pHerry_PgdUC_15_btp,pHerry_PgdUC_20_btp,pHerry_PgdUC_22_btp,pHerry_PgdUC_23_btp,pHerry_PgdUC_24_btp)
pHerry_PgdUC_btl<-c(pHerry_PgdUC_1_btl,pHerry_PgdUC_2_btl,pHerry_PgdUC_3_btl,pHerry_PgdUC_5_btl,pHerry_PgdUC_6_btl,pHerry_PgdUC_7_btl,pHerry_PgdUC_8_btl,pHerry_PgdUC_9_btl,pHerry_PgdUC_10_btl,pHerry_PgdUC_11_btl,pHerry_PgdUC_12_btl,pHerry_PgdUC_13_btl,pHerry_PgdUC_14_btl,pHerry_PgdUC_15_btl,pHerry_PgdUC_20_btl,pHerry_PgdUC_22_btl,pHerry_PgdUC_23_btl,pHerry_PgdUC_24_btl)
pHerry_PgdUC_base<-c(pHerry_PgdUC_1_base,pHerry_PgdUC_2_base,pHerry_PgdUC_3_base,pHerry_PgdUC_5_base,pHerry_PgdUC_6_base,pHerry_PgdUC_7_base,pHerry_PgdUC_8_base,pHerry_PgdUC_9_base,pHerry_PgdUC_10_base,pHerry_PgdUC_11_base,pHerry_PgdUC_12_base,pHerry_PgdUC_13_base,pHerry_PgdUC_14_base,pHerry_PgdUC_15_base,pHerry_PgdUC_20_base,pHerry_PgdUC_22_base,pHerry_PgdUC_23_base,pHerry_PgdUC_24_base)


