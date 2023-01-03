a1<-c(Pgd[,1])
b1<-c(Pgd[,2])
c1<-c(Pgd[,3])
d1<-c(Pgd[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
PgdUC_eyedisc_1<-c(bb1/aa1)

PgdUC_1_568_base<-c(bb1[51:60])
PgdUC_1_568_peak<-c(bb1[85:94])
PgdUC_1_568_low<-c(bb1[141:150])

PgdUC_1_488_base<-c(aa1[51:60])
PgdUC_1_488_peak<-c(aa1[85:94])
PgdUC_1_488_low<-c(aa1[141:150])

PgdUC_1_blp<-c((PgdUC_1_568_base/PgdUC_1_488_base)/((PgdUC_1_568_low/PgdUC_1_488_low)/(PgdUC_1_568_peak/PgdUC_1_488_peak)))
PgdUC_1_bpl<-c((PgdUC_1_568_base/PgdUC_1_488_base)/((PgdUC_1_568_peak/PgdUC_1_488_peak)/(PgdUC_1_568_low/PgdUC_1_488_low)))
PgdUC_1_btp<-c((PgdUC_1_568_base/PgdUC_1_488_base)/(PgdUC_1_568_peak/PgdUC_1_488_peak))
PgdUC_1_btl<-c((PgdUC_1_568_base/PgdUC_1_488_base)/(PgdUC_1_568_low/PgdUC_1_488_low))

HyPer_PgdUC_1_base<-c(mean(PgdUC_1_568_base/PgdUC_1_488_base))               
HyPer_PgdUC_1_blp<-c(mean(PgdUC_1_blp))
HyPer_PgdUC_1_bpl<-c(mean(PgdUC_1_bpl))
HyPer_PgdUC_1_btp<-c(mean(PgdUC_1_btp))
HyPer_PgdUC_1_btl<-c(mean(PgdUC_1_btl))


a2<-c(Pgd[,5])
b2<-c(Pgd[,6])
c2<-c(Pgd[,7])
d2<-c(Pgd[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
PgdUC_eyedisc_2<-c(bb2/aa2)



PgdUC_2_568_base<-c(bb2[51:60])
PgdUC_2_568_peak<-c(bb2[85:94])
PgdUC_2_568_low<-c(bb2[141:150])

PgdUC_2_488_base<-c(aa2[51:60])
PgdUC_2_488_peak<-c(aa2[85:94])
PgdUC_2_488_low<-c(aa2[141:150])

PgdUC_2_blp<-c((PgdUC_2_568_base/PgdUC_2_488_base)/((PgdUC_2_568_low/PgdUC_2_488_low)/(PgdUC_2_568_peak/PgdUC_2_488_peak)))
PgdUC_2_bpl<-c((PgdUC_2_568_base/PgdUC_2_488_base)/((PgdUC_2_568_peak/PgdUC_2_488_peak)/(PgdUC_2_568_low/PgdUC_2_488_low)))
PgdUC_2_btp<-c((PgdUC_2_568_base/PgdUC_2_488_base)/(PgdUC_2_568_peak/PgdUC_2_488_peak))
PgdUC_2_btl<-c((PgdUC_2_568_base/PgdUC_2_488_base)/(PgdUC_2_568_low/PgdUC_2_488_low))

HyPer_PgdUC_2_base<-c(mean(PgdUC_2_568_base/PgdUC_2_488_base))               
HyPer_PgdUC_2_blp<-c(mean(PgdUC_2_blp))
HyPer_PgdUC_2_bpl<-c(mean(PgdUC_2_bpl))
HyPer_PgdUC_2_btp<-c(mean(PgdUC_2_btp))
HyPer_PgdUC_2_btl<-c(mean(PgdUC_2_btl))



a3<-c(Pgd[,9])
b3<-c(Pgd[,10])
c3<-c(Pgd[,11])
d3<-c(Pgd[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
PgdUC_eyedisc_3<-c(bb3/aa3)


PgdUC_3_568_base<-c(bb3[51:60])
PgdUC_3_568_peak<-c(bb3[85:94])
PgdUC_3_568_low<-c(bb3[141:150])

PgdUC_3_488_base<-c(aa3[51:60])
PgdUC_3_488_peak<-c(aa3[85:94])
PgdUC_3_488_low<-c(aa3[141:150])

PgdUC_3_blp<-c((PgdUC_3_568_base/PgdUC_3_488_base)/((PgdUC_3_568_low/PgdUC_3_488_low)/(PgdUC_3_568_peak/PgdUC_3_488_peak)))
PgdUC_3_bpl<-c((PgdUC_3_568_base/PgdUC_3_488_base)/((PgdUC_3_568_peak/PgdUC_3_488_peak)/(PgdUC_3_568_low/PgdUC_3_488_low)))
PgdUC_3_btp<-c((PgdUC_3_568_base/PgdUC_3_488_base)/(PgdUC_3_568_peak/PgdUC_3_488_peak))
PgdUC_3_btl<-c((PgdUC_3_568_base/PgdUC_3_488_base)/(PgdUC_3_568_low/PgdUC_3_488_low))

HyPer_PgdUC_3_base<-c(mean(PgdUC_3_568_base/PgdUC_3_488_base))               
HyPer_PgdUC_3_blp<-c(mean(PgdUC_3_blp))
HyPer_PgdUC_3_bpl<-c(mean(PgdUC_3_bpl))
HyPer_PgdUC_3_btp<-c(mean(PgdUC_3_btp))
HyPer_PgdUC_3_btl<-c(mean(PgdUC_3_btl))


a4<-c(Pgd[,13])
b4<-c(Pgd[,14])
c4<-c(Pgd[,15])
d4<-c(Pgd[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
PgdUC_eyedisc_4<-c(bb4/aa4)



PgdUC_4_568_base<-c(bb4[51:60])
PgdUC_4_568_peak<-c(bb4[85:94])
PgdUC_4_568_low<-c(bb4[141:150])

PgdUC_4_488_base<-c(aa4[51:60])
PgdUC_4_488_peak<-c(aa4[85:94])
PgdUC_4_488_low<-c(aa4[141:150])

PgdUC_4_blp<-c((PgdUC_4_568_base/PgdUC_4_488_base)/((PgdUC_4_568_low/PgdUC_4_488_low)/(PgdUC_4_568_peak/PgdUC_4_488_peak)))
PgdUC_4_bpl<-c((PgdUC_4_568_base/PgdUC_4_488_base)/((PgdUC_4_568_peak/PgdUC_4_488_peak)/(PgdUC_4_568_low/PgdUC_4_488_low)))
PgdUC_4_btp<-c((PgdUC_4_568_base/PgdUC_4_488_base)/(PgdUC_4_568_peak/PgdUC_4_488_peak))
PgdUC_4_btl<-c((PgdUC_4_568_base/PgdUC_4_488_base)/(PgdUC_4_568_low/PgdUC_4_488_low))

HyPer_PgdUC_4_base<-c(mean(PgdUC_4_568_base/PgdUC_4_488_base))               
HyPer_PgdUC_4_blp<-c(mean(PgdUC_4_blp))
HyPer_PgdUC_4_bpl<-c(mean(PgdUC_4_bpl))
HyPer_PgdUC_4_btp<-c(mean(PgdUC_4_btp))
HyPer_PgdUC_4_btl<-c(mean(PgdUC_4_btl))


a5<-c(Pgd[,17])
b5<-c(Pgd[,18])
c5<-c(Pgd[,19])
d5<-c(Pgd[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
PgdUC_eyedisc_5<-c(bb5/aa5)



PgdUC_5_568_base<-c(bb5[51:60])
PgdUC_5_568_peak<-c(bb5[85:94])
PgdUC_5_568_low<-c(bb5[141:150])

PgdUC_5_488_base<-c(aa5[51:60])
PgdUC_5_488_peak<-c(aa5[85:94])
PgdUC_5_488_low<-c(aa5[141:150])

PgdUC_5_blp<-c((PgdUC_5_568_base/PgdUC_5_488_base)/((PgdUC_5_568_low/PgdUC_5_488_low)/(PgdUC_5_568_peak/PgdUC_5_488_peak)))
PgdUC_5_bpl<-c((PgdUC_5_568_base/PgdUC_5_488_base)/((PgdUC_5_568_peak/PgdUC_5_488_peak)/(PgdUC_5_568_low/PgdUC_5_488_low)))
PgdUC_5_btp<-c((PgdUC_5_568_base/PgdUC_5_488_base)/(PgdUC_5_568_peak/PgdUC_5_488_peak))
PgdUC_5_btl<-c((PgdUC_5_568_base/PgdUC_5_488_base)/(PgdUC_5_568_low/PgdUC_5_488_low))

HyPer_PgdUC_5_base<-c(mean(PgdUC_5_568_base/PgdUC_5_488_base))               
HyPer_PgdUC_5_blp<-c(mean(PgdUC_5_blp))
HyPer_PgdUC_5_bpl<-c(mean(PgdUC_5_bpl))
HyPer_PgdUC_5_btp<-c(mean(PgdUC_5_btp))
HyPer_PgdUC_5_btl<-c(mean(PgdUC_5_btl))


a6<-c(Pgd[,21])
b6<-c(Pgd[,22])
c6<-c(Pgd[,23])
d6<-c(Pgd[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
PgdUC_eyedisc_6<-c(bb6/aa6)

PgdUC_6_568_base<-c(bb6[51:60])
PgdUC_6_568_peak<-c(bb6[85:94])
PgdUC_6_568_low<-c(bb6[141:150])

PgdUC_6_488_base<-c(aa6[51:60])
PgdUC_6_488_peak<-c(aa6[85:94])
PgdUC_6_488_low<-c(aa6[141:150])

PgdUC_6_blp<-c((PgdUC_6_568_base/PgdUC_6_488_base)/((PgdUC_6_568_low/PgdUC_6_488_low)/(PgdUC_6_568_peak/PgdUC_6_488_peak)))
PgdUC_6_bpl<-c((PgdUC_6_568_base/PgdUC_6_488_base)/((PgdUC_6_568_peak/PgdUC_6_488_peak)/(PgdUC_6_568_low/PgdUC_6_488_low)))
PgdUC_6_btp<-c((PgdUC_6_568_base/PgdUC_6_488_base)/(PgdUC_6_568_peak/PgdUC_6_488_peak))
PgdUC_6_btl<-c((PgdUC_6_568_base/PgdUC_6_488_base)/(PgdUC_6_568_low/PgdUC_6_488_low))

HyPer_PgdUC_6_base<-c(mean(PgdUC_6_568_base/PgdUC_6_488_base))               
HyPer_PgdUC_6_blp<-c(mean(PgdUC_6_blp))
HyPer_PgdUC_6_bpl<-c(mean(PgdUC_6_bpl))
HyPer_PgdUC_6_btp<-c(mean(PgdUC_6_btp))
HyPer_PgdUC_6_btl<-c(mean(PgdUC_6_btl))




a7<-c(Pgd[,25])
b7<-c(Pgd[,26])
c7<-c(Pgd[,27])
d7<-c(Pgd[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
PgdUC_eyedisc_7<-c(bb7/aa7)



PgdUC_7_568_base<-c(bb7[51:60])
PgdUC_7_568_peak<-c(bb7[85:94])
PgdUC_7_568_low<-c(bb7[141:150])

PgdUC_7_488_base<-c(aa7[51:60])
PgdUC_7_488_peak<-c(aa7[85:94])
PgdUC_7_488_low<-c(aa7[141:150])

PgdUC_7_blp<-c((PgdUC_7_568_base/PgdUC_7_488_base)/((PgdUC_7_568_low/PgdUC_7_488_low)/(PgdUC_7_568_peak/PgdUC_7_488_peak)))
PgdUC_7_bpl<-c((PgdUC_7_568_base/PgdUC_7_488_base)/((PgdUC_7_568_peak/PgdUC_7_488_peak)/(PgdUC_7_568_low/PgdUC_7_488_low)))
PgdUC_7_btp<-c((PgdUC_7_568_base/PgdUC_7_488_base)/(PgdUC_7_568_peak/PgdUC_7_488_peak))
PgdUC_7_btl<-c((PgdUC_7_568_base/PgdUC_7_488_base)/(PgdUC_7_568_low/PgdUC_7_488_low))

HyPer_PgdUC_7_base<-c(mean(PgdUC_7_568_base/PgdUC_7_488_base))               
HyPer_PgdUC_7_blp<-c(mean(PgdUC_7_blp))
HyPer_PgdUC_7_bpl<-c(mean(PgdUC_7_bpl))
HyPer_PgdUC_7_btp<-c(mean(PgdUC_7_btp))
HyPer_PgdUC_7_btl<-c(mean(PgdUC_7_btl))

a8<-c(Pgd[,29])
b8<-c(Pgd[,30])
c8<-c(Pgd[,31])
d8<-c(Pgd[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
PgdUC_eyedisc_8<-c(bb8/aa8)

PgdUC_8_568_base<-c(bb8[51:60])
PgdUC_8_568_peak<-c(bb8[85:94])
PgdUC_8_568_low<-c(bb8[141:150])

PgdUC_8_488_base<-c(aa8[51:60])
PgdUC_8_488_peak<-c(aa8[85:94])
PgdUC_8_488_low<-c(aa8[141:150])

PgdUC_8_blp<-c((PgdUC_8_568_base/PgdUC_8_488_base)/((PgdUC_8_568_low/PgdUC_8_488_low)/(PgdUC_8_568_peak/PgdUC_8_488_peak)))
PgdUC_8_bpl<-c((PgdUC_8_568_base/PgdUC_8_488_base)/((PgdUC_8_568_peak/PgdUC_8_488_peak)/(PgdUC_8_568_low/PgdUC_8_488_low)))
PgdUC_8_btp<-c((PgdUC_8_568_base/PgdUC_8_488_base)/(PgdUC_8_568_peak/PgdUC_8_488_peak))
PgdUC_8_btl<-c((PgdUC_8_568_base/PgdUC_8_488_base)/(PgdUC_8_568_low/PgdUC_8_488_low))

HyPer_PgdUC_8_base<-c(mean(PgdUC_8_568_base/PgdUC_8_488_base))               
HyPer_PgdUC_8_blp<-c(mean(PgdUC_8_blp))
HyPer_PgdUC_8_bpl<-c(mean(PgdUC_8_bpl))
HyPer_PgdUC_8_btp<-c(mean(PgdUC_8_btp))
HyPer_PgdUC_8_btl<-c(mean(PgdUC_8_btl))

a9<-c(Pgd[,33])
b9<-c(Pgd[,34])
c9<-c(Pgd[,35])
d9<-c(Pgd[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
PgdUC_eyedisc_9<-c(bb9/aa9)

PgdUC_9_568_base<-c(bb9[51:60])
PgdUC_9_568_peak<-c(bb9[85:94])
PgdUC_9_568_low<-c(bb9[141:150])

PgdUC_9_488_base<-c(aa9[51:60])
PgdUC_9_488_peak<-c(aa9[85:94])
PgdUC_9_488_low<-c(aa9[141:150])

PgdUC_9_blp<-c((PgdUC_9_568_base/PgdUC_9_488_base)/((PgdUC_9_568_low/PgdUC_9_488_low)/(PgdUC_9_568_peak/PgdUC_9_488_peak)))
PgdUC_9_bpl<-c((PgdUC_9_568_base/PgdUC_9_488_base)/((PgdUC_9_568_peak/PgdUC_9_488_peak)/(PgdUC_9_568_low/PgdUC_9_488_low)))
PgdUC_9_btp<-c((PgdUC_9_568_base/PgdUC_9_488_base)/(PgdUC_9_568_peak/PgdUC_9_488_peak))
PgdUC_9_btl<-c((PgdUC_9_568_base/PgdUC_9_488_base)/(PgdUC_9_568_low/PgdUC_9_488_low))

HyPer_PgdUC_9_base<-c(mean(PgdUC_9_568_base/PgdUC_9_488_base))               
HyPer_PgdUC_9_blp<-c(mean(PgdUC_9_blp))
HyPer_PgdUC_9_bpl<-c(mean(PgdUC_9_bpl))
HyPer_PgdUC_9_btp<-c(mean(PgdUC_9_btp))
HyPer_PgdUC_9_btl<-c(mean(PgdUC_9_btl))

a10<-c(Pgd[,37])
b10<-c(Pgd[,38])
c10<-c(Pgd[,39])
d10<-c(Pgd[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
PgdUC_eyedisc_10<-c(bb10/aa10)

PgdUC_10_568_base<-c(bb10[51:60])
PgdUC_10_568_peak<-c(bb10[85:94])
PgdUC_10_568_low<-c(bb10[141:150])

PgdUC_10_488_base<-c(aa10[51:60])
PgdUC_10_488_peak<-c(aa10[85:94])
PgdUC_10_488_low<-c(aa10[141:150])

PgdUC_10_blp<-c((PgdUC_10_568_base/PgdUC_10_488_base)/((PgdUC_10_568_low/PgdUC_10_488_low)/(PgdUC_10_568_peak/PgdUC_10_488_peak)))
PgdUC_10_bpl<-c((PgdUC_10_568_base/PgdUC_10_488_base)/((PgdUC_10_568_peak/PgdUC_10_488_peak)/(PgdUC_10_568_low/PgdUC_10_488_low)))
PgdUC_10_btp<-c((PgdUC_10_568_base/PgdUC_10_488_base)/(PgdUC_10_568_peak/PgdUC_10_488_peak))
PgdUC_10_btl<-c((PgdUC_10_568_base/PgdUC_10_488_base)/(PgdUC_10_568_low/PgdUC_10_488_low))

HyPer_PgdUC_10_base<-c(mean(PgdUC_10_568_base/PgdUC_10_488_base))               
HyPer_PgdUC_10_blp<-c(mean(PgdUC_10_blp))
HyPer_PgdUC_10_bpl<-c(mean(PgdUC_10_bpl))
HyPer_PgdUC_10_btp<-c(mean(PgdUC_10_btp))
HyPer_PgdUC_10_btl<-c(mean(PgdUC_10_btl))

a11<-c(Pgd[,41])
b11<-c(Pgd[,42])
c11<-c(Pgd[,43])
d11<-c(Pgd[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
PgdUC_eyedisc_11<-c(bb11/aa11)

PgdUC_11_568_base<-c(bb11[51:60])
PgdUC_11_568_peak<-c(bb11[85:94])
PgdUC_11_568_low<-c(bb11[141:150])

PgdUC_11_488_base<-c(aa11[51:60])
PgdUC_11_488_peak<-c(aa11[85:94])
PgdUC_11_488_low<-c(aa11[141:150])

PgdUC_11_blp<-c((PgdUC_11_568_base/PgdUC_11_488_base)/((PgdUC_11_568_low/PgdUC_11_488_low)/(PgdUC_11_568_peak/PgdUC_11_488_peak)))
PgdUC_11_bpl<-c((PgdUC_11_568_base/PgdUC_11_488_base)/((PgdUC_11_568_peak/PgdUC_11_488_peak)/(PgdUC_11_568_low/PgdUC_11_488_low)))
PgdUC_11_btp<-c((PgdUC_11_568_base/PgdUC_11_488_base)/(PgdUC_11_568_peak/PgdUC_11_488_peak))
PgdUC_11_btl<-c((PgdUC_11_568_base/PgdUC_11_488_base)/(PgdUC_11_568_low/PgdUC_11_488_low))

HyPer_PgdUC_11_base<-c(mean(PgdUC_11_568_base/PgdUC_11_488_base))               
HyPer_PgdUC_11_blp<-c(mean(PgdUC_11_blp))
HyPer_PgdUC_11_bpl<-c(mean(PgdUC_11_bpl))
HyPer_PgdUC_11_btp<-c(mean(PgdUC_11_btp))
HyPer_PgdUC_11_btl<-c(mean(PgdUC_11_btl))

a12<-c(Pgd[,45])
b12<-c(Pgd[,46])
c12<-c(Pgd[,47])
d12<-c(Pgd[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
PgdUC_eyedisc_12<-c(bb12/aa12)

PgdUC_12_568_base<-c(bb12[51:60])
PgdUC_12_568_peak<-c(bb12[85:94])
PgdUC_12_568_low<-c(bb12[141:150])

PgdUC_12_488_base<-c(aa12[51:60])
PgdUC_12_488_peak<-c(aa12[85:94])
PgdUC_12_488_low<-c(aa12[141:150])

PgdUC_12_blp<-c((PgdUC_12_568_base/PgdUC_12_488_base)/((PgdUC_12_568_low/PgdUC_12_488_low)/(PgdUC_12_568_peak/PgdUC_12_488_peak)))
PgdUC_12_bpl<-c((PgdUC_12_568_base/PgdUC_12_488_base)/((PgdUC_12_568_peak/PgdUC_12_488_peak)/(PgdUC_12_568_low/PgdUC_12_488_low)))
PgdUC_12_btp<-c((PgdUC_12_568_base/PgdUC_12_488_base)/(PgdUC_12_568_peak/PgdUC_12_488_peak))
PgdUC_12_btl<-c((PgdUC_12_568_base/PgdUC_12_488_base)/(PgdUC_12_568_low/PgdUC_12_488_low))

HyPer_PgdUC_12_base<-c(mean(PgdUC_12_568_base/PgdUC_12_488_base))               
HyPer_PgdUC_12_blp<-c(mean(PgdUC_12_blp))
HyPer_PgdUC_12_bpl<-c(mean(PgdUC_12_bpl))
HyPer_PgdUC_12_btp<-c(mean(PgdUC_12_btp))
HyPer_PgdUC_12_btl<-c(mean(PgdUC_12_btl))

a13<-c(Pgd[,49])
b13<-c(Pgd[,50])
c13<-c(Pgd[,51])
d13<-c(Pgd[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
PgdUC_eyedisc_13<-c(bb13/aa13)

PgdUC_13_568_base<-c(bb13[51:60])
PgdUC_13_568_peak<-c(bb13[85:94])
PgdUC_13_568_low<-c(bb13[141:150])

PgdUC_13_488_base<-c(aa13[51:60])
PgdUC_13_488_peak<-c(aa13[85:94])
PgdUC_13_488_low<-c(aa13[141:150])

PgdUC_13_blp<-c((PgdUC_13_568_base/PgdUC_13_488_base)/((PgdUC_13_568_low/PgdUC_13_488_low)/(PgdUC_13_568_peak/PgdUC_13_488_peak)))
PgdUC_13_bpl<-c((PgdUC_13_568_base/PgdUC_13_488_base)/((PgdUC_13_568_peak/PgdUC_13_488_peak)/(PgdUC_13_568_low/PgdUC_13_488_low)))
PgdUC_13_btp<-c((PgdUC_13_568_base/PgdUC_13_488_base)/(PgdUC_13_568_peak/PgdUC_13_488_peak))
PgdUC_13_btl<-c((PgdUC_13_568_base/PgdUC_13_488_base)/(PgdUC_13_568_low/PgdUC_13_488_low))

HyPer_PgdUC_13_base<-c(mean(PgdUC_13_568_base/PgdUC_13_488_base))               
HyPer_PgdUC_13_blp<-c(mean(PgdUC_13_blp))
HyPer_PgdUC_13_bpl<-c(mean(PgdUC_13_bpl))
HyPer_PgdUC_13_btp<-c(mean(PgdUC_13_btp))
HyPer_PgdUC_13_btl<-c(mean(PgdUC_13_btl))



HyPer_PgdUC_time_course<-c(PgdUC_eyedisc_1,PgdUC_eyedisc_2,PgdUC_eyedisc_3,PgdUC_eyedisc_4,PgdUC_eyedisc_5,PgdUC_eyedisc_6,PgdUC_eyedisc_7,PgdUC_eyedisc_8,PgdUC_eyedisc_9,PgdUC_eyedisc_10,PgdUC_eyedisc_11,PgdUC_eyedisc_12,PgdUC_eyedisc_13)
matHyPer_PgdUC_time_course<-matrix(HyPer_PgdUC_time_course,nrow=150,ncol=13)
mean_HyPer_PgdUC_time_course<-c(rowMeans(matHyPer_PgdUC_time_course))

HyPer_PgdUC_blp<-c(HyPer_PgdUC_1_blp,HyPer_PgdUC_2_blp,HyPer_PgdUC_3_blp,HyPer_PgdUC_4_blp,HyPer_PgdUC_5_blp,HyPer_PgdUC_6_blp,HyPer_PgdUC_7_blp,HyPer_PgdUC_8_blp,HyPer_PgdUC_9_blp,HyPer_PgdUC_10_blp,HyPer_PgdUC_11_blp,HyPer_PgdUC_12_blp,HyPer_PgdUC_13_blp)
HyPer_PgdUC_bpl<-c(HyPer_PgdUC_1_bpl,HyPer_PgdUC_2_bpl,HyPer_PgdUC_3_bpl,HyPer_PgdUC_4_bpl,HyPer_PgdUC_5_bpl,HyPer_PgdUC_6_bpl,HyPer_PgdUC_7_bpl,HyPer_PgdUC_8_bpl,HyPer_PgdUC_9_bpl,HyPer_PgdUC_10_bpl,HyPer_PgdUC_11_bpl,HyPer_PgdUC_12_bpl,HyPer_PgdUC_13_bpl)
HyPer_PgdUC_btl<-c(HyPer_PgdUC_1_btl,HyPer_PgdUC_2_btl,HyPer_PgdUC_3_btl,HyPer_PgdUC_4_btl,HyPer_PgdUC_5_btl,HyPer_PgdUC_6_btl,HyPer_PgdUC_7_btl,HyPer_PgdUC_8_btl,HyPer_PgdUC_9_btl,HyPer_PgdUC_10_btl,HyPer_PgdUC_11_btl,HyPer_PgdUC_12_btl,HyPer_PgdUC_13_btl)
HyPer_PgdUC_btp<-c(HyPer_PgdUC_1_btp,HyPer_PgdUC_2_btp,HyPer_PgdUC_3_btp,HyPer_PgdUC_4_btp,HyPer_PgdUC_5_btp,HyPer_PgdUC_6_btp,HyPer_PgdUC_7_btp,HyPer_PgdUC_8_btp,HyPer_PgdUC_9_btp,HyPer_PgdUC_10_btp,HyPer_PgdUC_11_btp,HyPer_PgdUC_12_btp,HyPer_PgdUC_13_btp)
HyPer_PgdUC_base<-c(HyPer_PgdUC_1_base,HyPer_PgdUC_2_base,HyPer_PgdUC_3_base,HyPer_PgdUC_4_base,HyPer_PgdUC_5_base,HyPer_PgdUC_6_base,HyPer_PgdUC_7_base,HyPer_PgdUC_8_base,HyPer_PgdUC_9_base,HyPer_PgdUC_10_base,HyPer_PgdUC_11_base,HyPer_PgdUC_12_base,HyPer_PgdUC_13_base)


