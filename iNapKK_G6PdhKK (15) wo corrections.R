a1<-c(G6Pdh[,1])
b1<-c(G6Pdh[,2])
c1<-c(G6Pdh[,3])
d1<-c(G6Pdh[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
G6PdhUC_eyedisc_1<-c(aa1/bb1)

G6PdhUC_1_405_base<-c(aa1[51:60])
G6PdhUC_1_405_low<-c(aa1[76:85])
G6PdhUC_1_405_peak<-c(aa1[123:132])

G6PdhUC_1_568_base<-c(bb1[51:60])
G6PdhUC_1_568_low<-c(bb1[76:85])
G6PdhUC_1_568_peak<-c(bb1[123:132])

G6PdhUC_1_bpl<-c((G6PdhUC_1_405_base/G6PdhUC_1_568_base)/((G6PdhUC_1_405_peak/G6PdhUC_1_568_peak)/(G6PdhUC_1_405_low/G6PdhUC_1_568_low)))
G6PdhUC_1_blp<-c((G6PdhUC_1_405_base/G6PdhUC_1_568_base)/((G6PdhUC_1_405_low/G6PdhUC_1_568_low)/(G6PdhUC_1_405_peak/G6PdhUC_1_568_peak)))
G6PdhUC_1_btl<-c((G6PdhUC_1_405_base/G6PdhUC_1_568_base)/(G6PdhUC_1_405_low/G6PdhUC_1_568_low))
G6PdhUC_1_btp<-c((G6PdhUC_1_405_base/G6PdhUC_1_568_base)/(G6PdhUC_1_405_peak/G6PdhUC_1_568_peak))

iNap_G6PdhUC_1_base<-c(mean(G6PdhUC_1_405_base/G6PdhUC_1_568_base))               
iNap_G6PdhUC_1_bpl<-c(mean(G6PdhUC_1_bpl))
iNap_G6PdhUC_1_blp<-c(mean(G6PdhUC_1_blp))
iNap_G6PdhUC_1_btl<-c(mean(G6PdhUC_1_btl))
iNap_G6PdhUC_1_btp<-c(mean(G6PdhUC_1_btp))


a2<-c(G6Pdh[,5])
b2<-c(G6Pdh[,6])
c2<-c(G6Pdh[,7])
d2<-c(G6Pdh[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
G6PdhUC_eyedisc_2<-c(aa2/bb2)



G6PdhUC_2_405_base<-c(aa2[51:60])
G6PdhUC_2_405_low<-c(aa2[76:85])
G6PdhUC_2_405_peak<-c(aa2[123:132])

G6PdhUC_2_568_base<-c(bb2[51:60])
G6PdhUC_2_568_low<-c(bb2[76:85])
G6PdhUC_2_568_peak<-c(bb2[123:132])

G6PdhUC_2_bpl<-c((G6PdhUC_2_405_base/G6PdhUC_2_568_base)/((G6PdhUC_2_405_peak/G6PdhUC_2_568_peak)/(G6PdhUC_2_405_low/G6PdhUC_2_568_low)))
G6PdhUC_2_blp<-c((G6PdhUC_2_405_base/G6PdhUC_2_568_base)/((G6PdhUC_2_405_low/G6PdhUC_2_568_low)/(G6PdhUC_2_405_peak/G6PdhUC_2_568_peak)))
G6PdhUC_2_btl<-c((G6PdhUC_2_405_base/G6PdhUC_2_568_base)/(G6PdhUC_2_405_low/G6PdhUC_2_568_low))
G6PdhUC_2_btp<-c((G6PdhUC_2_405_base/G6PdhUC_2_568_base)/(G6PdhUC_2_405_peak/G6PdhUC_2_568_peak))

iNap_G6PdhUC_2_base<-c(mean(G6PdhUC_2_405_base/G6PdhUC_2_568_base))               
iNap_G6PdhUC_2_bpl<-c(mean(G6PdhUC_2_bpl))
iNap_G6PdhUC_2_blp<-c(mean(G6PdhUC_2_blp))
iNap_G6PdhUC_2_btl<-c(mean(G6PdhUC_2_btl))
iNap_G6PdhUC_2_btp<-c(mean(G6PdhUC_2_btp))



a3<-c(G6Pdh[,9])
b3<-c(G6Pdh[,10])
c3<-c(G6Pdh[,11])
d3<-c(G6Pdh[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
G6PdhUC_eyedisc_3<-c(aa3/bb3)


G6PdhUC_3_405_base<-c(aa3[51:60])
G6PdhUC_3_405_low<-c(aa3[76:85])
G6PdhUC_3_405_peak<-c(aa3[123:132])

G6PdhUC_3_568_base<-c(bb3[51:60])
G6PdhUC_3_568_low<-c(bb3[76:85])
G6PdhUC_3_568_peak<-c(bb3[123:132])

G6PdhUC_3_bpl<-c((G6PdhUC_3_405_base/G6PdhUC_3_568_base)/((G6PdhUC_3_405_peak/G6PdhUC_3_568_peak)/(G6PdhUC_3_405_low/G6PdhUC_3_568_low)))
G6PdhUC_3_blp<-c((G6PdhUC_3_405_base/G6PdhUC_3_568_base)/((G6PdhUC_3_405_low/G6PdhUC_3_568_low)/(G6PdhUC_3_405_peak/G6PdhUC_3_568_peak)))
G6PdhUC_3_btl<-c((G6PdhUC_3_405_base/G6PdhUC_3_568_base)/(G6PdhUC_3_405_low/G6PdhUC_3_568_low))
G6PdhUC_3_btp<-c((G6PdhUC_3_405_base/G6PdhUC_3_568_base)/(G6PdhUC_3_405_peak/G6PdhUC_3_568_peak))

iNap_G6PdhUC_3_base<-c(mean(G6PdhUC_3_405_base/G6PdhUC_3_568_base))               
iNap_G6PdhUC_3_bpl<-c(mean(G6PdhUC_3_bpl))
iNap_G6PdhUC_3_blp<-c(mean(G6PdhUC_3_blp))
iNap_G6PdhUC_3_btl<-c(mean(G6PdhUC_3_btl))
iNap_G6PdhUC_3_btp<-c(mean(G6PdhUC_3_btp))

a4<-c(G6Pdh[,13])
b4<-c(G6Pdh[,14])
c4<-c(G6Pdh[,15])
d4<-c(G6Pdh[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
G6PdhUC_eyedisc_4<-c(aa4/bb4)


G6PdhUC_4_405_base<-c(aa4[51:60])
G6PdhUC_4_405_low<-c(aa4[76:85])
G6PdhUC_4_405_peak<-c(aa4[123:132])

G6PdhUC_4_568_base<-c(bb4[51:60])
G6PdhUC_4_568_low<-c(bb4[76:85])
G6PdhUC_4_568_peak<-c(bb4[123:132])

G6PdhUC_4_bpl<-c((G6PdhUC_4_405_base/G6PdhUC_4_568_base)/((G6PdhUC_4_405_peak/G6PdhUC_4_568_peak)/(G6PdhUC_4_405_low/G6PdhUC_4_568_low)))
G6PdhUC_4_blp<-c((G6PdhUC_4_405_base/G6PdhUC_4_568_base)/((G6PdhUC_4_405_low/G6PdhUC_4_568_low)/(G6PdhUC_4_405_peak/G6PdhUC_4_568_peak)))
G6PdhUC_4_btl<-c((G6PdhUC_4_405_base/G6PdhUC_4_568_base)/(G6PdhUC_4_405_low/G6PdhUC_4_568_low))
G6PdhUC_4_btp<-c((G6PdhUC_4_405_base/G6PdhUC_4_568_base)/(G6PdhUC_4_405_peak/G6PdhUC_4_568_peak))


a5<-c(G6Pdh[,17])
b5<-c(G6Pdh[,18])
c5<-c(G6Pdh[,19])
d5<-c(G6Pdh[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
G6PdhUC_eyedisc_5<-c(aa5/bb5)



G6PdhUC_5_405_base<-c(aa5[51:60])
G6PdhUC_5_405_low<-c(aa5[76:85])
G6PdhUC_5_405_peak<-c(aa5[123:132])

G6PdhUC_5_568_base<-c(bb5[51:60])
G6PdhUC_5_568_low<-c(bb5[76:85])
G6PdhUC_5_568_peak<-c(bb5[123:132])

iNap_G6PdhUC_4_base<-c(mean(G6PdhUC_4_405_base/G6PdhUC_4_568_base))               
iNap_G6PdhUC_4_bpl<-c(mean(G6PdhUC_4_bpl))
iNap_G6PdhUC_4_blp<-c(mean(G6PdhUC_4_blp))
iNap_G6PdhUC_4_btl<-c(mean(G6PdhUC_4_btl))
iNap_G6PdhUC_4_btp<-c(mean(G6PdhUC_4_btp))

G6PdhUC_5_bpl<-c((G6PdhUC_5_405_base/G6PdhUC_5_568_base)/((G6PdhUC_5_405_peak/G6PdhUC_5_568_peak)/(G6PdhUC_5_405_low/G6PdhUC_5_568_low)))
G6PdhUC_5_blp<-c((G6PdhUC_5_405_base/G6PdhUC_5_568_base)/((G6PdhUC_5_405_low/G6PdhUC_5_568_low)/(G6PdhUC_5_405_peak/G6PdhUC_5_568_peak)))
G6PdhUC_5_btl<-c((G6PdhUC_5_405_base/G6PdhUC_5_568_base)/(G6PdhUC_5_405_low/G6PdhUC_5_568_low))
G6PdhUC_5_btp<-c((G6PdhUC_5_405_base/G6PdhUC_5_568_base)/(G6PdhUC_5_405_peak/G6PdhUC_5_568_peak))

iNap_G6PdhUC_5_base<-c(mean(G6PdhUC_5_405_base/G6PdhUC_5_568_base))               
iNap_G6PdhUC_5_bpl<-c(mean(G6PdhUC_5_bpl))
iNap_G6PdhUC_5_blp<-c(mean(G6PdhUC_5_blp))
iNap_G6PdhUC_5_btl<-c(mean(G6PdhUC_5_btl))
iNap_G6PdhUC_5_btp<-c(mean(G6PdhUC_5_btp))


a6<-c(G6Pdh[,21])
b6<-c(G6Pdh[,22])
c6<-c(G6Pdh[,23])
d6<-c(G6Pdh[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
G6PdhUC_eyedisc_6<-c(aa6/bb6)

G6PdhUC_6_405_base<-c(aa6[51:60])
G6PdhUC_6_405_low<-c(aa6[76:85])
G6PdhUC_6_405_peak<-c(aa6[123:132])

G6PdhUC_6_568_base<-c(bb6[51:60])
G6PdhUC_6_568_low<-c(bb6[76:85])
G6PdhUC_6_568_peak<-c(bb6[123:132])

G6PdhUC_6_bpl<-c((G6PdhUC_6_405_base/G6PdhUC_6_568_base)/((G6PdhUC_6_405_peak/G6PdhUC_6_568_peak)/(G6PdhUC_6_405_low/G6PdhUC_6_568_low)))
G6PdhUC_6_blp<-c((G6PdhUC_6_405_base/G6PdhUC_6_568_base)/((G6PdhUC_6_405_low/G6PdhUC_6_568_low)/(G6PdhUC_6_405_peak/G6PdhUC_6_568_peak)))
G6PdhUC_6_btl<-c((G6PdhUC_6_405_base/G6PdhUC_6_568_base)/(G6PdhUC_6_405_low/G6PdhUC_6_568_low))
G6PdhUC_6_btp<-c((G6PdhUC_6_405_base/G6PdhUC_6_568_base)/(G6PdhUC_6_405_peak/G6PdhUC_6_568_peak))

iNap_G6PdhUC_6_base<-c(mean(G6PdhUC_6_405_base/G6PdhUC_6_568_base))               
iNap_G6PdhUC_6_bpl<-c(mean(G6PdhUC_6_bpl))
iNap_G6PdhUC_6_blp<-c(mean(G6PdhUC_6_blp))
iNap_G6PdhUC_6_btl<-c(mean(G6PdhUC_6_btl))
iNap_G6PdhUC_6_btp<-c(mean(G6PdhUC_6_btp))




a7<-c(G6Pdh[,25])
b7<-c(G6Pdh[,26])
c7<-c(G6Pdh[,27])
d7<-c(G6Pdh[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
G6PdhUC_eyedisc_7<-c(aa7/bb7)



G6PdhUC_7_405_base<-c(aa7[51:60])
G6PdhUC_7_405_low<-c(aa7[76:85])
G6PdhUC_7_405_peak<-c(aa7[123:132])

G6PdhUC_7_568_base<-c(bb7[51:60])
G6PdhUC_7_568_low<-c(bb7[76:85])
G6PdhUC_7_568_peak<-c(bb7[123:132])

G6PdhUC_7_bpl<-c((G6PdhUC_7_405_base/G6PdhUC_7_568_base)/((G6PdhUC_7_405_peak/G6PdhUC_7_568_peak)/(G6PdhUC_7_405_low/G6PdhUC_7_568_low)))
G6PdhUC_7_blp<-c((G6PdhUC_7_405_base/G6PdhUC_7_568_base)/((G6PdhUC_7_405_low/G6PdhUC_7_568_low)/(G6PdhUC_7_405_peak/G6PdhUC_7_568_peak)))
G6PdhUC_7_btl<-c((G6PdhUC_7_405_base/G6PdhUC_7_568_base)/(G6PdhUC_7_405_low/G6PdhUC_7_568_low))
G6PdhUC_7_btp<-c((G6PdhUC_7_405_base/G6PdhUC_7_568_base)/(G6PdhUC_7_405_peak/G6PdhUC_7_568_peak))

iNap_G6PdhUC_7_base<-c(mean(G6PdhUC_7_405_base/G6PdhUC_7_568_base))               
iNap_G6PdhUC_7_bpl<-c(mean(G6PdhUC_7_bpl))
iNap_G6PdhUC_7_blp<-c(mean(G6PdhUC_7_blp))
iNap_G6PdhUC_7_btl<-c(mean(G6PdhUC_7_btl))
iNap_G6PdhUC_7_btp<-c(mean(G6PdhUC_7_btp))


a8<-c(G6Pdh[,29])
b8<-c(G6Pdh[,30])
c8<-c(G6Pdh[,31])
d8<-c(G6Pdh[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
G6PdhUC_eyedisc_8<-c(aa8/bb8)

G6PdhUC_8_405_base<-c(aa8[51:60])
G6PdhUC_8_405_low<-c(aa8[76:85])
G6PdhUC_8_405_peak<-c(aa8[123:132])

G6PdhUC_8_568_base<-c(bb8[51:60])
G6PdhUC_8_568_low<-c(bb8[76:85])
G6PdhUC_8_568_peak<-c(bb8[123:132])

G6PdhUC_8_bpl<-c((G6PdhUC_8_405_base/G6PdhUC_8_568_base)/((G6PdhUC_8_405_peak/G6PdhUC_8_568_peak)/(G6PdhUC_8_405_low/G6PdhUC_8_568_low)))
G6PdhUC_8_blp<-c((G6PdhUC_8_405_base/G6PdhUC_8_568_base)/((G6PdhUC_8_405_low/G6PdhUC_8_568_low)/(G6PdhUC_8_405_peak/G6PdhUC_8_568_peak)))
G6PdhUC_8_btl<-c((G6PdhUC_8_405_base/G6PdhUC_8_568_base)/(G6PdhUC_8_405_low/G6PdhUC_8_568_low))
G6PdhUC_8_btp<-c((G6PdhUC_8_405_base/G6PdhUC_8_568_base)/(G6PdhUC_8_405_peak/G6PdhUC_8_568_peak))

iNap_G6PdhUC_8_base<-c(mean(G6PdhUC_8_405_base/G6PdhUC_8_568_base))               
iNap_G6PdhUC_8_bpl<-c(mean(G6PdhUC_8_bpl))
iNap_G6PdhUC_8_blp<-c(mean(G6PdhUC_8_blp))
iNap_G6PdhUC_8_btl<-c(mean(G6PdhUC_8_btl))
iNap_G6PdhUC_8_btp<-c(mean(G6PdhUC_8_btp))


a9<-c(G6Pdh[,33])
b9<-c(G6Pdh[,34])
c9<-c(G6Pdh[,35])
d9<-c(G6Pdh[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
G6PdhUC_eyedisc_9<-c(aa9/bb9)

G6PdhUC_9_405_base<-c(aa9[51:60])
G6PdhUC_9_405_low<-c(aa9[76:85])
G6PdhUC_9_405_peak<-c(aa9[123:132])

G6PdhUC_9_568_base<-c(bb9[51:60])
G6PdhUC_9_568_low<-c(bb9[76:85])
G6PdhUC_9_568_peak<-c(bb9[123:132])

G6PdhUC_9_bpl<-c((G6PdhUC_9_405_base/G6PdhUC_9_568_base)/((G6PdhUC_9_405_peak/G6PdhUC_9_568_peak)/(G6PdhUC_9_405_low/G6PdhUC_9_568_low)))
G6PdhUC_9_blp<-c((G6PdhUC_9_405_base/G6PdhUC_9_568_base)/((G6PdhUC_9_405_low/G6PdhUC_9_568_low)/(G6PdhUC_9_405_peak/G6PdhUC_9_568_peak)))
G6PdhUC_9_btl<-c((G6PdhUC_9_405_base/G6PdhUC_9_568_base)/(G6PdhUC_9_405_low/G6PdhUC_9_568_low))
G6PdhUC_9_btp<-c((G6PdhUC_9_405_base/G6PdhUC_9_568_base)/(G6PdhUC_9_405_peak/G6PdhUC_9_568_peak))

iNap_G6PdhUC_9_base<-c(mean(G6PdhUC_9_405_base/G6PdhUC_9_568_base))               
iNap_G6PdhUC_9_bpl<-c(mean(G6PdhUC_9_bpl))
iNap_G6PdhUC_9_blp<-c(mean(G6PdhUC_9_blp))
iNap_G6PdhUC_9_btl<-c(mean(G6PdhUC_9_btl))
iNap_G6PdhUC_9_btp<-c(mean(G6PdhUC_9_btp))

a10<-c(G6Pdh[,37])
b10<-c(G6Pdh[,38])
c10<-c(G6Pdh[,39])
d10<-c(G6Pdh[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
G6PdhUC_eyedisc_10<-c(aa10/bb10)

G6PdhUC_10_405_base<-c(aa10[51:60])
G6PdhUC_10_405_low<-c(aa10[76:85])
G6PdhUC_10_405_peak<-c(aa10[123:132])

G6PdhUC_10_568_base<-c(bb10[51:60])
G6PdhUC_10_568_low<-c(bb10[76:85])
G6PdhUC_10_568_peak<-c(bb10[123:132])

G6PdhUC_10_bpl<-c((G6PdhUC_10_405_base/G6PdhUC_10_568_base)/((G6PdhUC_10_405_peak/G6PdhUC_10_568_peak)/(G6PdhUC_10_405_low/G6PdhUC_10_568_low)))
G6PdhUC_10_blp<-c((G6PdhUC_10_405_base/G6PdhUC_10_568_base)/((G6PdhUC_10_405_low/G6PdhUC_10_568_low)/(G6PdhUC_10_405_peak/G6PdhUC_10_568_peak)))
G6PdhUC_10_btl<-c((G6PdhUC_10_405_base/G6PdhUC_10_568_base)/(G6PdhUC_10_405_low/G6PdhUC_10_568_low))
G6PdhUC_10_btp<-c((G6PdhUC_10_405_base/G6PdhUC_10_568_base)/(G6PdhUC_10_405_peak/G6PdhUC_10_568_peak))

iNap_G6PdhUC_10_base<-c(mean(G6PdhUC_10_405_base/G6PdhUC_10_568_base))               
iNap_G6PdhUC_10_bpl<-c(mean(G6PdhUC_10_bpl))
iNap_G6PdhUC_10_blp<-c(mean(G6PdhUC_10_blp))
iNap_G6PdhUC_10_btl<-c(mean(G6PdhUC_10_btl))
iNap_G6PdhUC_10_btp<-c(mean(G6PdhUC_10_btp))



a12<-c(G6Pdh[,45])
b12<-c(G6Pdh[,46])
c12<-c(G6Pdh[,47])
d12<-c(G6Pdh[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
G6PdhUC_eyedisc_12<-c(aa12/bb12)

G6PdhUC_12_405_base<-c(aa12[51:60])
G6PdhUC_12_405_low<-c(aa12[76:85])
G6PdhUC_12_405_peak<-c(aa12[123:132])

G6PdhUC_12_568_base<-c(bb12[51:60])
G6PdhUC_12_568_low<-c(bb12[76:85])
G6PdhUC_12_568_peak<-c(bb12[123:132])

G6PdhUC_12_bpl<-c((G6PdhUC_12_405_base/G6PdhUC_12_568_base)/((G6PdhUC_12_405_peak/G6PdhUC_12_568_peak)/(G6PdhUC_12_405_low/G6PdhUC_12_568_low)))
G6PdhUC_12_blp<-c((G6PdhUC_12_405_base/G6PdhUC_12_568_base)/((G6PdhUC_12_405_low/G6PdhUC_12_568_low)/(G6PdhUC_12_405_peak/G6PdhUC_12_568_peak)))
G6PdhUC_12_btl<-c((G6PdhUC_12_405_base/G6PdhUC_12_568_base)/(G6PdhUC_12_405_low/G6PdhUC_12_568_low))
G6PdhUC_12_btp<-c((G6PdhUC_12_405_base/G6PdhUC_12_568_base)/(G6PdhUC_12_405_peak/G6PdhUC_12_568_peak))

iNap_G6PdhUC_12_base<-c(mean(G6PdhUC_12_405_base/G6PdhUC_12_568_base))               
iNap_G6PdhUC_12_bpl<-c(mean(G6PdhUC_12_bpl))
iNap_G6PdhUC_12_blp<-c(mean(G6PdhUC_12_blp))
iNap_G6PdhUC_12_btl<-c(mean(G6PdhUC_12_btl))
iNap_G6PdhUC_12_btp<-c(mean(G6PdhUC_12_btp))

a13<-c(G6Pdh[,49])
b13<-c(G6Pdh[,50])
c13<-c(G6Pdh[,51])
d13<-c(G6Pdh[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
G6PdhUC_eyedisc_13<-c(aa13/bb13)

G6PdhUC_13_405_base<-c(aa13[51:60])
G6PdhUC_13_405_low<-c(aa13[76:85])
G6PdhUC_13_405_peak<-c(aa13[123:132])

G6PdhUC_13_568_base<-c(bb13[51:60])
G6PdhUC_13_568_low<-c(bb13[76:85])
G6PdhUC_13_568_peak<-c(bb13[123:132])

G6PdhUC_13_bpl<-c((G6PdhUC_13_405_base/G6PdhUC_13_568_base)/((G6PdhUC_13_405_peak/G6PdhUC_13_568_peak)/(G6PdhUC_13_405_low/G6PdhUC_13_568_low)))
G6PdhUC_13_blp<-c((G6PdhUC_13_405_base/G6PdhUC_13_568_base)/((G6PdhUC_13_405_low/G6PdhUC_13_568_low)/(G6PdhUC_13_405_peak/G6PdhUC_13_568_peak)))
G6PdhUC_13_btl<-c((G6PdhUC_13_405_base/G6PdhUC_13_568_base)/(G6PdhUC_13_405_low/G6PdhUC_13_568_low))
G6PdhUC_13_btp<-c((G6PdhUC_13_405_base/G6PdhUC_13_568_base)/(G6PdhUC_13_405_peak/G6PdhUC_13_568_peak))

iNap_G6PdhUC_13_base<-c(mean(G6PdhUC_13_405_base/G6PdhUC_13_568_base))               
iNap_G6PdhUC_13_bpl<-c(mean(G6PdhUC_13_bpl))
iNap_G6PdhUC_13_blp<-c(mean(G6PdhUC_13_blp))
iNap_G6PdhUC_13_btl<-c(mean(G6PdhUC_13_btl))
iNap_G6PdhUC_13_btp<-c(mean(G6PdhUC_13_btp))

a14<-c(G6Pdh[,53])
b14<-c(G6Pdh[,54])
c14<-c(G6Pdh[,55])
d14<-c(G6Pdh[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
G6PdhUC_eyedisc_14<-c(aa14/bb14)

G6PdhUC_14_405_base<-c(aa14[51:60])
G6PdhUC_14_405_low<-c(aa14[76:85])
G6PdhUC_14_405_peak<-c(aa14[123:132])

G6PdhUC_14_568_base<-c(bb14[51:60])
G6PdhUC_14_568_low<-c(bb14[76:85])
G6PdhUC_14_568_peak<-c(bb14[123:132])

G6PdhUC_14_bpl<-c((G6PdhUC_14_405_base/G6PdhUC_14_568_base)/((G6PdhUC_14_405_peak/G6PdhUC_14_568_peak)/(G6PdhUC_14_405_low/G6PdhUC_14_568_low)))
G6PdhUC_14_blp<-c((G6PdhUC_14_405_base/G6PdhUC_14_568_base)/((G6PdhUC_14_405_low/G6PdhUC_14_568_low)/(G6PdhUC_14_405_peak/G6PdhUC_14_568_peak)))
G6PdhUC_14_btl<-c((G6PdhUC_14_405_base/G6PdhUC_14_568_base)/(G6PdhUC_14_405_low/G6PdhUC_14_568_low))
G6PdhUC_14_btp<-c((G6PdhUC_14_405_base/G6PdhUC_14_568_base)/(G6PdhUC_14_405_peak/G6PdhUC_14_568_peak))

iNap_G6PdhUC_14_base<-c(mean(G6PdhUC_14_405_base/G6PdhUC_14_568_base))               
iNap_G6PdhUC_14_bpl<-c(mean(G6PdhUC_14_bpl))
iNap_G6PdhUC_14_blp<-c(mean(G6PdhUC_14_blp))
iNap_G6PdhUC_14_btl<-c(mean(G6PdhUC_14_btl))
iNap_G6PdhUC_14_btp<-c(mean(G6PdhUC_14_btp))


a16<-c(G6Pdh[,61])
b16<-c(G6Pdh[,62])
c16<-c(G6Pdh[,63])
d16<-c(G6Pdh[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
G6PdhUC_eyedisc_16<-c(aa16/bb16)

G6PdhUC_16_405_base<-c(aa16[51:60])
G6PdhUC_16_405_low<-c(aa16[76:85])
G6PdhUC_16_405_peak<-c(aa16[123:132])

G6PdhUC_16_568_base<-c(bb16[51:60])
G6PdhUC_16_568_low<-c(bb16[76:85])
G6PdhUC_16_568_peak<-c(bb16[123:132])

G6PdhUC_16_bpl<-c((G6PdhUC_16_405_base/G6PdhUC_16_568_base)/((G6PdhUC_16_405_peak/G6PdhUC_16_568_peak)/(G6PdhUC_16_405_low/G6PdhUC_16_568_low)))
G6PdhUC_16_blp<-c((G6PdhUC_16_405_base/G6PdhUC_16_568_base)/((G6PdhUC_16_405_low/G6PdhUC_16_568_low)/(G6PdhUC_16_405_peak/G6PdhUC_16_568_peak)))
G6PdhUC_16_btl<-c((G6PdhUC_16_405_base/G6PdhUC_16_568_base)/(G6PdhUC_16_405_low/G6PdhUC_16_568_low))
G6PdhUC_16_btp<-c((G6PdhUC_16_405_base/G6PdhUC_16_568_base)/(G6PdhUC_16_405_peak/G6PdhUC_16_568_peak))

iNap_G6PdhUC_16_base<-c(mean(G6PdhUC_16_405_base/G6PdhUC_16_568_base))               
iNap_G6PdhUC_16_bpl<-c(mean(G6PdhUC_16_bpl))
iNap_G6PdhUC_16_blp<-c(mean(G6PdhUC_16_blp))
iNap_G6PdhUC_16_btl<-c(mean(G6PdhUC_16_btl))
iNap_G6PdhUC_16_btp<-c(mean(G6PdhUC_16_btp))

a17<-c(G6Pdh[,65])
b17<-c(G6Pdh[,66])
c17<-c(G6Pdh[,67])
d17<-c(G6Pdh[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
G6PdhUC_eyedisc_17<-c(aa17/bb17)

G6PdhUC_17_405_base<-c(aa17[51:60])
G6PdhUC_17_405_low<-c(aa17[76:85])
G6PdhUC_17_405_peak<-c(aa17[123:132])

G6PdhUC_17_568_base<-c(bb17[51:60])
G6PdhUC_17_568_low<-c(bb17[76:85])
G6PdhUC_17_568_peak<-c(bb17[123:132])

G6PdhUC_17_bpl<-c((G6PdhUC_17_405_base/G6PdhUC_17_568_base)/((G6PdhUC_17_405_peak/G6PdhUC_17_568_peak)/(G6PdhUC_17_405_low/G6PdhUC_17_568_low)))
G6PdhUC_17_blp<-c((G6PdhUC_17_405_base/G6PdhUC_17_568_base)/((G6PdhUC_17_405_low/G6PdhUC_17_568_low)/(G6PdhUC_17_405_peak/G6PdhUC_17_568_peak)))
G6PdhUC_17_btl<-c((G6PdhUC_17_405_base/G6PdhUC_17_568_base)/(G6PdhUC_17_405_low/G6PdhUC_17_568_low))
G6PdhUC_17_btp<-c((G6PdhUC_17_405_base/G6PdhUC_17_568_base)/(G6PdhUC_17_405_peak/G6PdhUC_17_568_peak))

iNap_G6PdhUC_17_base<-c(mean(G6PdhUC_17_405_base/G6PdhUC_17_568_base))               
iNap_G6PdhUC_17_bpl<-c(mean(G6PdhUC_17_bpl))
iNap_G6PdhUC_17_blp<-c(mean(G6PdhUC_17_blp))
iNap_G6PdhUC_17_btl<-c(mean(G6PdhUC_17_btl))
iNap_G6PdhUC_17_btp<-c(mean(G6PdhUC_17_btp))


iNap_G6PdhUC_time_course<-c(G6PdhUC_eyedisc_1,G6PdhUC_eyedisc_2,G6PdhUC_eyedisc_3,G6PdhUC_eyedisc_4,G6PdhUC_eyedisc_5,G6PdhUC_eyedisc_6,G6PdhUC_eyedisc_7,G6PdhUC_eyedisc_8,G6PdhUC_eyedisc_9,G6PdhUC_eyedisc_10,G6PdhUC_eyedisc_12,G6PdhUC_eyedisc_13,G6PdhUC_eyedisc_14,G6PdhUC_eyedisc_16,G6PdhUC_eyedisc_17)
matiNap_G6PdhUC_time_course<-matrix(iNap_G6PdhUC_time_course,nrow=132,ncol=15)
mean_iNap_G6PdhUC_time_course<-c(rowMeans(matiNap_G6PdhUC_time_course))

iNap_G6PdhUC_bpl<-c(iNap_G6PdhUC_1_bpl,iNap_G6PdhUC_2_bpl,iNap_G6PdhUC_3_bpl,iNap_G6PdhUC_4_bpl,iNap_G6PdhUC_5_bpl,iNap_G6PdhUC_6_bpl,iNap_G6PdhUC_7_bpl,iNap_G6PdhUC_8_bpl,iNap_G6PdhUC_9_bpl,iNap_G6PdhUC_10_bpl,iNap_G6PdhUC_12_bpl,iNap_G6PdhUC_13_bpl,iNap_G6PdhUC_14_bpl,iNap_G6PdhUC_16_bpl,iNap_G6PdhUC_17_bpl)
iNap_G6PdhUC_blp<-c(iNap_G6PdhUC_1_blp,iNap_G6PdhUC_2_blp,iNap_G6PdhUC_3_blp,iNap_G6PdhUC_4_blp,iNap_G6PdhUC_5_blp,iNap_G6PdhUC_6_blp,iNap_G6PdhUC_7_blp,iNap_G6PdhUC_8_blp,iNap_G6PdhUC_9_blp,iNap_G6PdhUC_10_blp,iNap_G6PdhUC_12_blp,iNap_G6PdhUC_13_blp,iNap_G6PdhUC_14_blp,iNap_G6PdhUC_16_blp,iNap_G6PdhUC_17_blp)
iNap_G6PdhUC_btp<-c(iNap_G6PdhUC_1_btp,iNap_G6PdhUC_2_btp,iNap_G6PdhUC_3_btp,iNap_G6PdhUC_4_btp,iNap_G6PdhUC_5_btp,iNap_G6PdhUC_6_btp,iNap_G6PdhUC_7_btp,iNap_G6PdhUC_8_btp,iNap_G6PdhUC_9_btp,iNap_G6PdhUC_10_btp,iNap_G6PdhUC_12_btp,iNap_G6PdhUC_13_btp,iNap_G6PdhUC_14_btp,iNap_G6PdhUC_16_btp,iNap_G6PdhUC_17_btp)
iNap_G6PdhUC_btl<-c(iNap_G6PdhUC_1_btl,iNap_G6PdhUC_2_btl,iNap_G6PdhUC_3_btl,iNap_G6PdhUC_4_btl,iNap_G6PdhUC_5_btl,iNap_G6PdhUC_6_btl,iNap_G6PdhUC_7_btl,iNap_G6PdhUC_8_btl,iNap_G6PdhUC_9_btl,iNap_G6PdhUC_10_btl,iNap_G6PdhUC_12_btl,iNap_G6PdhUC_13_btl,iNap_G6PdhUC_14_btl,iNap_G6PdhUC_16_btl,iNap_G6PdhUC_17_btl)
iNap_G6PdhUC_base<-c(iNap_G6PdhUC_1_base,iNap_G6PdhUC_2_base,iNap_G6PdhUC_3_base,iNap_G6PdhUC_4_base,iNap_G6PdhUC_5_base,iNap_G6PdhUC_6_base,iNap_G6PdhUC_7_base,iNap_G6PdhUC_8_base,iNap_G6PdhUC_9_base,iNap_G6PdhUC_10_base,iNap_G6PdhUC_12_base,iNap_G6PdhUC_13_base,iNap_G6PdhUC_14_base,iNap_G6PdhUC_16_base,iNap_G6PdhUC_17_base)


