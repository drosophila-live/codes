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

a5<-c(Pgd[,17])
b5<-c(Pgd[,18])
c5<-c(Pgd[,19])
d5<-c(Pgd[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
PgdUC_eyedisc_5<-c(aa5/bb5)

PgdUC_5_405_base<-c(aa5[51:60])
PgdUC_5_405_low<-c(aa5[76:85])
PgdUC_5_405_peak<-c(aa5[123:132])

PgdUC_5_568_base<-c(bb5[51:60])
PgdUC_5_568_low<-c(bb5[76:85])
PgdUC_5_568_peak<-c(bb5[123:132])


PgdUC_5_bpl<-c((PgdUC_5_405_base/PgdUC_5_568_base)/((PgdUC_5_405_peak/PgdUC_5_568_peak)/(PgdUC_5_405_low/PgdUC_5_568_low)))
PgdUC_5_blp<-c((PgdUC_5_405_base/PgdUC_5_568_base)/((PgdUC_5_405_low/PgdUC_5_568_low)/(PgdUC_5_405_peak/PgdUC_5_568_peak)))
PgdUC_5_btl<-c((PgdUC_5_405_base/PgdUC_5_568_base)/(PgdUC_5_405_low/PgdUC_5_568_low))
PgdUC_5_btp<-c((PgdUC_5_405_base/PgdUC_5_568_base)/(PgdUC_5_405_peak/PgdUC_5_568_peak))

iNap_PgdUC_5_base<-c(mean(PgdUC_5_405_base/PgdUC_5_568_base))               
iNap_PgdUC_5_bpl<-c(mean(PgdUC_5_bpl))
iNap_PgdUC_5_blp<-c(mean(PgdUC_5_blp))
iNap_PgdUC_5_btl<-c(mean(PgdUC_5_btl))
iNap_PgdUC_5_btp<-c(mean(PgdUC_5_btp))


a6<-c(Pgd[,21])
b6<-c(Pgd[,22])
c6<-c(Pgd[,23])
d6<-c(Pgd[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
PgdUC_eyedisc_6<-c(aa6/bb6)

PgdUC_6_405_base<-c(aa6[51:60])
PgdUC_6_405_low<-c(aa6[76:85])
PgdUC_6_405_peak<-c(aa6[123:132])

PgdUC_6_568_base<-c(bb6[51:60])
PgdUC_6_568_low<-c(bb6[76:85])
PgdUC_6_568_peak<-c(bb6[123:132])

PgdUC_6_bpl<-c((PgdUC_6_405_base/PgdUC_6_568_base)/((PgdUC_6_405_peak/PgdUC_6_568_peak)/(PgdUC_6_405_low/PgdUC_6_568_low)))
PgdUC_6_blp<-c((PgdUC_6_405_base/PgdUC_6_568_base)/((PgdUC_6_405_low/PgdUC_6_568_low)/(PgdUC_6_405_peak/PgdUC_6_568_peak)))
PgdUC_6_btl<-c((PgdUC_6_405_base/PgdUC_6_568_base)/(PgdUC_6_405_low/PgdUC_6_568_low))
PgdUC_6_btp<-c((PgdUC_6_405_base/PgdUC_6_568_base)/(PgdUC_6_405_peak/PgdUC_6_568_peak))

iNap_PgdUC_6_base<-c(mean(PgdUC_6_405_base/PgdUC_6_568_base))               
iNap_PgdUC_6_bpl<-c(mean(PgdUC_6_bpl))
iNap_PgdUC_6_blp<-c(mean(PgdUC_6_blp))
iNap_PgdUC_6_btl<-c(mean(PgdUC_6_btl))
iNap_PgdUC_6_btp<-c(mean(PgdUC_6_btp))




a7<-c(Pgd[,25])
b7<-c(Pgd[,26])
c7<-c(Pgd[,27])
d7<-c(Pgd[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
PgdUC_eyedisc_7<-c(aa7/bb7)



PgdUC_7_405_base<-c(aa7[51:60])
PgdUC_7_405_low<-c(aa7[76:85])
PgdUC_7_405_peak<-c(aa7[123:132])

PgdUC_7_568_base<-c(bb7[51:60])
PgdUC_7_568_low<-c(bb7[76:85])
PgdUC_7_568_peak<-c(bb7[123:132])

PgdUC_7_bpl<-c((PgdUC_7_405_base/PgdUC_7_568_base)/((PgdUC_7_405_peak/PgdUC_7_568_peak)/(PgdUC_7_405_low/PgdUC_7_568_low)))
PgdUC_7_blp<-c((PgdUC_7_405_base/PgdUC_7_568_base)/((PgdUC_7_405_low/PgdUC_7_568_low)/(PgdUC_7_405_peak/PgdUC_7_568_peak)))
PgdUC_7_btl<-c((PgdUC_7_405_base/PgdUC_7_568_base)/(PgdUC_7_405_low/PgdUC_7_568_low))
PgdUC_7_btp<-c((PgdUC_7_405_base/PgdUC_7_568_base)/(PgdUC_7_405_peak/PgdUC_7_568_peak))

iNap_PgdUC_7_base<-c(mean(PgdUC_7_405_base/PgdUC_7_568_base))               
iNap_PgdUC_7_bpl<-c(mean(PgdUC_7_bpl))
iNap_PgdUC_7_blp<-c(mean(PgdUC_7_blp))
iNap_PgdUC_7_btl<-c(mean(PgdUC_7_btl))
iNap_PgdUC_7_btp<-c(mean(PgdUC_7_btp))


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

a14<-c(Pgd[,53])
b14<-c(Pgd[,54])
c14<-c(Pgd[,55])
d14<-c(Pgd[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
PgdUC_eyedisc_14<-c(aa14/bb14)

PgdUC_14_405_base<-c(aa14[51:60])
PgdUC_14_405_low<-c(aa14[76:85])
PgdUC_14_405_peak<-c(aa14[123:132])

PgdUC_14_568_base<-c(bb14[51:60])
PgdUC_14_568_low<-c(bb14[76:85])
PgdUC_14_568_peak<-c(bb14[123:132])

PgdUC_14_bpl<-c((PgdUC_14_405_base/PgdUC_14_568_base)/((PgdUC_14_405_peak/PgdUC_14_568_peak)/(PgdUC_14_405_low/PgdUC_14_568_low)))
PgdUC_14_blp<-c((PgdUC_14_405_base/PgdUC_14_568_base)/((PgdUC_14_405_low/PgdUC_14_568_low)/(PgdUC_14_405_peak/PgdUC_14_568_peak)))
PgdUC_14_btl<-c((PgdUC_14_405_base/PgdUC_14_568_base)/(PgdUC_14_405_low/PgdUC_14_568_low))
PgdUC_14_btp<-c((PgdUC_14_405_base/PgdUC_14_568_base)/(PgdUC_14_405_peak/PgdUC_14_568_peak))

iNap_PgdUC_14_base<-c(mean(PgdUC_14_405_base/PgdUC_14_568_base))               
iNap_PgdUC_14_bpl<-c(mean(PgdUC_14_bpl))
iNap_PgdUC_14_blp<-c(mean(PgdUC_14_blp))
iNap_PgdUC_14_btl<-c(mean(PgdUC_14_btl))
iNap_PgdUC_14_btp<-c(mean(PgdUC_14_btp))

a15<-c(Pgd[,57])
b15<-c(Pgd[,58])
c15<-c(Pgd[,59])
d15<-c(Pgd[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
PgdUC_eyedisc_15<-c(aa15/bb15)

PgdUC_15_405_base<-c(aa15[51:60])
PgdUC_15_405_low<-c(aa15[76:85])
PgdUC_15_405_peak<-c(aa15[123:132])

PgdUC_15_568_base<-c(bb15[51:60])
PgdUC_15_568_low<-c(bb15[76:85])
PgdUC_15_568_peak<-c(bb15[123:132])


PgdUC_15_bpl<-c((PgdUC_15_405_base/PgdUC_15_568_base)/((PgdUC_15_405_peak/PgdUC_15_568_peak)/(PgdUC_15_405_low/PgdUC_15_568_low)))
PgdUC_15_blp<-c((PgdUC_15_405_base/PgdUC_15_568_base)/((PgdUC_15_405_low/PgdUC_15_568_low)/(PgdUC_15_405_peak/PgdUC_15_568_peak)))
PgdUC_15_btl<-c((PgdUC_15_405_base/PgdUC_15_568_base)/(PgdUC_15_405_low/PgdUC_15_568_low))
PgdUC_15_btp<-c((PgdUC_15_405_base/PgdUC_15_568_base)/(PgdUC_15_405_peak/PgdUC_15_568_peak))

iNap_PgdUC_15_base<-c(mean(PgdUC_15_405_base/PgdUC_15_568_base)) 
iNap_PgdUC_15_bpl<-c(mean(PgdUC_15_bpl))
iNap_PgdUC_15_blp<-c(mean(PgdUC_15_blp))
iNap_PgdUC_15_btl<-c(mean(PgdUC_15_btl))
iNap_PgdUC_15_btp<-c(mean(PgdUC_15_btp))

a16<-c(Pgd[,61])
b16<-c(Pgd[,62])
c16<-c(Pgd[,63])
d16<-c(Pgd[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
PgdUC_eyedisc_16<-c(aa16/bb16)

PgdUC_16_405_base<-c(aa16[51:60])
PgdUC_16_405_low<-c(aa16[76:85])
PgdUC_16_405_peak<-c(aa16[123:132])

PgdUC_16_568_base<-c(bb16[51:60])
PgdUC_16_568_low<-c(bb16[76:85])
PgdUC_16_568_peak<-c(bb16[123:132])

PgdUC_16_bpl<-c((PgdUC_16_405_base/PgdUC_16_568_base)/((PgdUC_16_405_peak/PgdUC_16_568_peak)/(PgdUC_16_405_low/PgdUC_16_568_low)))
PgdUC_16_blp<-c((PgdUC_16_405_base/PgdUC_16_568_base)/((PgdUC_16_405_low/PgdUC_16_568_low)/(PgdUC_16_405_peak/PgdUC_16_568_peak)))
PgdUC_16_btl<-c((PgdUC_16_405_base/PgdUC_16_568_base)/(PgdUC_16_405_low/PgdUC_16_568_low))
PgdUC_16_btp<-c((PgdUC_16_405_base/PgdUC_16_568_base)/(PgdUC_16_405_peak/PgdUC_16_568_peak))

iNap_PgdUC_16_base<-c(mean(PgdUC_16_405_base/PgdUC_16_568_base))               
iNap_PgdUC_16_bpl<-c(mean(PgdUC_16_bpl))
iNap_PgdUC_16_blp<-c(mean(PgdUC_16_blp))
iNap_PgdUC_16_btl<-c(mean(PgdUC_16_btl))
iNap_PgdUC_16_btp<-c(mean(PgdUC_16_btp))

a17<-c(Pgd[,65])
b17<-c(Pgd[,66])
c17<-c(Pgd[,67])
d17<-c(Pgd[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
PgdUC_eyedisc_17<-c(aa17/bb17)

PgdUC_17_405_base<-c(aa17[51:60])
PgdUC_17_405_low<-c(aa17[76:85])
PgdUC_17_405_peak<-c(aa17[123:132])

PgdUC_17_568_base<-c(bb17[51:60])
PgdUC_17_568_low<-c(bb17[76:85])
PgdUC_17_568_peak<-c(bb17[123:132])

PgdUC_17_bpl<-c((PgdUC_17_405_base/PgdUC_17_568_base)/((PgdUC_17_405_peak/PgdUC_17_568_peak)/(PgdUC_17_405_low/PgdUC_17_568_low)))
PgdUC_17_blp<-c((PgdUC_17_405_base/PgdUC_17_568_base)/((PgdUC_17_405_low/PgdUC_17_568_low)/(PgdUC_17_405_peak/PgdUC_17_568_peak)))
PgdUC_17_btl<-c((PgdUC_17_405_base/PgdUC_17_568_base)/(PgdUC_17_405_low/PgdUC_17_568_low))
PgdUC_17_btp<-c((PgdUC_17_405_base/PgdUC_17_568_base)/(PgdUC_17_405_peak/PgdUC_17_568_peak))

iNap_PgdUC_17_base<-c(mean(PgdUC_17_405_base/PgdUC_17_568_base))               
iNap_PgdUC_17_bpl<-c(mean(PgdUC_17_bpl))
iNap_PgdUC_17_blp<-c(mean(PgdUC_17_blp))
iNap_PgdUC_17_btl<-c(mean(PgdUC_17_btl))
iNap_PgdUC_17_btp<-c(mean(PgdUC_17_btp))

a18<-c(Pgd[,69])
b18<-c(Pgd[,70])
c18<-c(Pgd[,71])
d18<-c(Pgd[,72])
aa18<-c(a18-b18)
bb18<-c(c18-d18)
PgdUC_eyedisc_18<-c(aa18/bb18)

PgdUC_18_405_base<-c(aa18[51:60])
PgdUC_18_405_low<-c(aa18[76:85])
PgdUC_18_405_peak<-c(aa18[123:132])

PgdUC_18_568_base<-c(bb18[51:60])
PgdUC_18_568_low<-c(bb18[76:85])
PgdUC_18_568_peak<-c(bb18[123:132])

PgdUC_18_bpl<-c((PgdUC_18_405_base/PgdUC_18_568_base)/((PgdUC_18_405_peak/PgdUC_18_568_peak)/(PgdUC_18_405_low/PgdUC_18_568_low)))
PgdUC_18_blp<-c((PgdUC_18_405_base/PgdUC_18_568_base)/((PgdUC_18_405_low/PgdUC_18_568_low)/(PgdUC_18_405_peak/PgdUC_18_568_peak)))
PgdUC_18_btl<-c((PgdUC_18_405_base/PgdUC_18_568_base)/(PgdUC_18_405_low/PgdUC_18_568_low))
PgdUC_18_btp<-c((PgdUC_18_405_base/PgdUC_18_568_base)/(PgdUC_18_405_peak/PgdUC_18_568_peak))

iNap_PgdUC_18_base<-c(mean(PgdUC_18_405_base/PgdUC_18_568_base)) 
iNap_PgdUC_18_bpl<-c(mean(PgdUC_18_bpl))
iNap_PgdUC_18_blp<-c(mean(PgdUC_18_blp))
iNap_PgdUC_18_btl<-c(mean(PgdUC_18_btl))
iNap_PgdUC_18_btp<-c(mean(PgdUC_18_btp))


iNap_PgdUC_time_course<-c(PgdUC_eyedisc_1,PgdUC_eyedisc_2,PgdUC_eyedisc_3,PgdUC_eyedisc_4,PgdUC_eyedisc_5,PgdUC_eyedisc_6,PgdUC_eyedisc_7,PgdUC_eyedisc_8,PgdUC_eyedisc_9,PgdUC_eyedisc_10,PgdUC_eyedisc_11,PgdUC_eyedisc_12,PgdUC_eyedisc_13,PgdUC_eyedisc_14,PgdUC_eyedisc_15,PgdUC_eyedisc_16,PgdUC_eyedisc_17,PgdUC_eyedisc_18)
matiNap_PgdUC_time_course<-matrix(iNap_PgdUC_time_course,nrow=132,ncol=18)
mean_iNap_PgdUC_time_course<-c(rowMeans(matiNap_PgdUC_time_course))

iNap_PgdUC_bpl<-c(iNap_PgdUC_1_bpl,iNap_PgdUC_2_bpl,iNap_PgdUC_3_bpl,iNap_PgdUC_4_bpl,iNap_PgdUC_5_bpl,iNap_PgdUC_6_bpl,iNap_PgdUC_7_bpl,iNap_PgdUC_8_bpl,iNap_PgdUC_9_bpl,iNap_PgdUC_10_bpl,iNap_PgdUC_11_bpl,iNap_PgdUC_12_bpl,iNap_PgdUC_13_bpl,iNap_PgdUC_14_bpl,iNap_PgdUC_15_bpl,iNap_PgdUC_16_bpl,iNap_PgdUC_17_bpl,iNap_PgdUC_18_bpl)
iNap_PgdUC_blp<-c(iNap_PgdUC_1_blp,iNap_PgdUC_2_blp,iNap_PgdUC_3_blp,iNap_PgdUC_4_blp,iNap_PgdUC_5_blp,iNap_PgdUC_6_blp,iNap_PgdUC_7_blp,iNap_PgdUC_8_blp,iNap_PgdUC_9_blp,iNap_PgdUC_10_blp,iNap_PgdUC_11_blp,iNap_PgdUC_12_blp,iNap_PgdUC_13_blp,iNap_PgdUC_14_blp,iNap_PgdUC_15_blp,iNap_PgdUC_16_blp,iNap_PgdUC_17_blp,iNap_PgdUC_18_blp)
iNap_PgdUC_btp<-c(iNap_PgdUC_1_btp,iNap_PgdUC_2_btp,iNap_PgdUC_3_btp,iNap_PgdUC_4_btp,iNap_PgdUC_5_btp,iNap_PgdUC_6_btp,iNap_PgdUC_7_btp,iNap_PgdUC_8_btp,iNap_PgdUC_9_btp,iNap_PgdUC_10_btp,iNap_PgdUC_11_btp,iNap_PgdUC_12_btp,iNap_PgdUC_13_btp,iNap_PgdUC_14_btp,iNap_PgdUC_15_btp,iNap_PgdUC_16_btp,iNap_PgdUC_17_btp,iNap_PgdUC_18_btp)
iNap_PgdUC_btl<-c(iNap_PgdUC_1_btl,iNap_PgdUC_2_btl,iNap_PgdUC_3_btl,iNap_PgdUC_4_btl,iNap_PgdUC_5_btl,iNap_PgdUC_6_btl,iNap_PgdUC_7_btl,iNap_PgdUC_8_btl,iNap_PgdUC_9_btl,iNap_PgdUC_10_btl,iNap_PgdUC_11_btl,iNap_PgdUC_12_btl,iNap_PgdUC_13_btl,iNap_PgdUC_14_btl,iNap_PgdUC_15_btl,iNap_PgdUC_16_btl,iNap_PgdUC_17_btl,iNap_PgdUC_18_btl)
iNap_PgdUC_base<-c(iNap_PgdUC_1_base,iNap_PgdUC_2_base,iNap_PgdUC_3_base,iNap_PgdUC_4_base,iNap_PgdUC_5_base,iNap_PgdUC_6_base,iNap_PgdUC_7_base,iNap_PgdUC_8_base,iNap_PgdUC_9_base,iNap_PgdUC_10_base,iNap_PgdUC_11_base,iNap_PgdUC_12_base,iNap_PgdUC_13_base,iNap_PgdUC_14_base,iNap_PgdUC_15_base,iNap_PgdUC_16_base,iNap_PgdUC_17_base,iNap_PgdUC_18_base)


