a1<-c(kl3[,1])
b1<-c(kl3[,2])
c1<-c(kl3[,3])
d1<-c(kl3[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
kl3UC_eyedisc_1<-c(aa1/bb1)

kl3UC_1_405_base<-c(aa1[51:60])
kl3UC_1_405_low<-c(aa1[76:85])
kl3UC_1_405_peak<-c(aa1[123:132])

kl3UC_1_568_base<-c(bb1[51:60])
kl3UC_1_568_low<-c(bb1[76:85])
kl3UC_1_568_peak<-c(bb1[123:132])

kl3UC_1_bpl<-c((kl3UC_1_405_base/kl3UC_1_568_base)/((kl3UC_1_405_peak/kl3UC_1_568_peak)/(kl3UC_1_405_low/kl3UC_1_568_low)))
kl3UC_1_blp<-c((kl3UC_1_405_base/kl3UC_1_568_base)/((kl3UC_1_405_low/kl3UC_1_568_low)/(kl3UC_1_405_peak/kl3UC_1_568_peak)))
kl3UC_1_btl<-c((kl3UC_1_405_base/kl3UC_1_568_base)/(kl3UC_1_405_low/kl3UC_1_568_low))
kl3UC_1_btp<-c((kl3UC_1_405_base/kl3UC_1_568_base)/(kl3UC_1_405_peak/kl3UC_1_568_peak))

iNap_kl3UC_1_base<-c(mean(kl3UC_1_405_base/kl3UC_1_568_base))               
iNap_kl3UC_1_bpl<-c(mean(kl3UC_1_bpl))
iNap_kl3UC_1_blp<-c(mean(kl3UC_1_blp))
iNap_kl3UC_1_btl<-c(mean(kl3UC_1_btl))
iNap_kl3UC_1_btp<-c(mean(kl3UC_1_btp))


a2<-c(kl3[,5])
b2<-c(kl3[,6])
c2<-c(kl3[,7])
d2<-c(kl3[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
kl3UC_eyedisc_2<-c(aa2/bb2)



kl3UC_2_405_base<-c(aa2[51:60])
kl3UC_2_405_low<-c(aa2[76:85])
kl3UC_2_405_peak<-c(aa2[123:132])

kl3UC_2_568_base<-c(bb2[51:60])
kl3UC_2_568_low<-c(bb2[76:85])
kl3UC_2_568_peak<-c(bb2[123:132])

kl3UC_2_bpl<-c((kl3UC_2_405_base/kl3UC_2_568_base)/((kl3UC_2_405_peak/kl3UC_2_568_peak)/(kl3UC_2_405_low/kl3UC_2_568_low)))
kl3UC_2_blp<-c((kl3UC_2_405_base/kl3UC_2_568_base)/((kl3UC_2_405_low/kl3UC_2_568_low)/(kl3UC_2_405_peak/kl3UC_2_568_peak)))
kl3UC_2_btl<-c((kl3UC_2_405_base/kl3UC_2_568_base)/(kl3UC_2_405_low/kl3UC_2_568_low))
kl3UC_2_btp<-c((kl3UC_2_405_base/kl3UC_2_568_base)/(kl3UC_2_405_peak/kl3UC_2_568_peak))

iNap_kl3UC_2_base<-c(mean(kl3UC_2_405_base/kl3UC_2_568_base))               
iNap_kl3UC_2_bpl<-c(mean(kl3UC_2_bpl))
iNap_kl3UC_2_blp<-c(mean(kl3UC_2_blp))
iNap_kl3UC_2_btl<-c(mean(kl3UC_2_btl))
iNap_kl3UC_2_btp<-c(mean(kl3UC_2_btp))



a3<-c(kl3[,9])
b3<-c(kl3[,10])
c3<-c(kl3[,11])
d3<-c(kl3[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
kl3UC_eyedisc_3<-c(aa3/bb3)


kl3UC_3_405_base<-c(aa3[51:60])
kl3UC_3_405_low<-c(aa3[76:85])
kl3UC_3_405_peak<-c(aa3[123:132])

kl3UC_3_568_base<-c(bb3[51:60])
kl3UC_3_568_low<-c(bb3[76:85])
kl3UC_3_568_peak<-c(bb3[123:132])

kl3UC_3_bpl<-c((kl3UC_3_405_base/kl3UC_3_568_base)/((kl3UC_3_405_peak/kl3UC_3_568_peak)/(kl3UC_3_405_low/kl3UC_3_568_low)))
kl3UC_3_blp<-c((kl3UC_3_405_base/kl3UC_3_568_base)/((kl3UC_3_405_low/kl3UC_3_568_low)/(kl3UC_3_405_peak/kl3UC_3_568_peak)))
kl3UC_3_btl<-c((kl3UC_3_405_base/kl3UC_3_568_base)/(kl3UC_3_405_low/kl3UC_3_568_low))
kl3UC_3_btp<-c((kl3UC_3_405_base/kl3UC_3_568_base)/(kl3UC_3_405_peak/kl3UC_3_568_peak))

iNap_kl3UC_3_base<-c(mean(kl3UC_3_405_base/kl3UC_3_568_base))               
iNap_kl3UC_3_bpl<-c(mean(kl3UC_3_bpl))
iNap_kl3UC_3_blp<-c(mean(kl3UC_3_blp))
iNap_kl3UC_3_btl<-c(mean(kl3UC_3_btl))
iNap_kl3UC_3_btp<-c(mean(kl3UC_3_btp))

a4<-c(kl3[,13])
b4<-c(kl3[,14])
c4<-c(kl3[,15])
d4<-c(kl3[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
kl3UC_eyedisc_4<-c(aa4/bb4)


kl3UC_4_405_base<-c(aa4[51:60])
kl3UC_4_405_low<-c(aa4[76:85])
kl3UC_4_405_peak<-c(aa4[123:132])

kl3UC_4_568_base<-c(bb4[51:60])
kl3UC_4_568_low<-c(bb4[76:85])
kl3UC_4_568_peak<-c(bb4[123:132])

kl3UC_4_bpl<-c((kl3UC_4_405_base/kl3UC_4_568_base)/((kl3UC_4_405_peak/kl3UC_4_568_peak)/(kl3UC_4_405_low/kl3UC_4_568_low)))
kl3UC_4_blp<-c((kl3UC_4_405_base/kl3UC_4_568_base)/((kl3UC_4_405_low/kl3UC_4_568_low)/(kl3UC_4_405_peak/kl3UC_4_568_peak)))
kl3UC_4_btl<-c((kl3UC_4_405_base/kl3UC_4_568_base)/(kl3UC_4_405_low/kl3UC_4_568_low))
kl3UC_4_btp<-c((kl3UC_4_405_base/kl3UC_4_568_base)/(kl3UC_4_405_peak/kl3UC_4_568_peak))

iNap_kl3UC_4_base<-c(mean(kl3UC_4_405_base/kl3UC_4_568_base))               
iNap_kl3UC_4_bpl<-c(mean(kl3UC_4_bpl))
iNap_kl3UC_4_blp<-c(mean(kl3UC_4_blp))
iNap_kl3UC_4_btl<-c(mean(kl3UC_4_btl))
iNap_kl3UC_4_btp<-c(mean(kl3UC_4_btp))



a6<-c(kl3[,21])
b6<-c(kl3[,22])
c6<-c(kl3[,23])
d6<-c(kl3[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
kl3UC_eyedisc_6<-c(aa6/bb6)

kl3UC_6_405_base<-c(aa6[51:60])
kl3UC_6_405_low<-c(aa6[76:85])
kl3UC_6_405_peak<-c(aa6[123:132])

kl3UC_6_568_base<-c(bb6[51:60])
kl3UC_6_568_low<-c(bb6[76:85])
kl3UC_6_568_peak<-c(bb6[123:132])

kl3UC_6_bpl<-c((kl3UC_6_405_base/kl3UC_6_568_base)/((kl3UC_6_405_peak/kl3UC_6_568_peak)/(kl3UC_6_405_low/kl3UC_6_568_low)))
kl3UC_6_blp<-c((kl3UC_6_405_base/kl3UC_6_568_base)/((kl3UC_6_405_low/kl3UC_6_568_low)/(kl3UC_6_405_peak/kl3UC_6_568_peak)))
kl3UC_6_btl<-c((kl3UC_6_405_base/kl3UC_6_568_base)/(kl3UC_6_405_low/kl3UC_6_568_low))
kl3UC_6_btp<-c((kl3UC_6_405_base/kl3UC_6_568_base)/(kl3UC_6_405_peak/kl3UC_6_568_peak))

iNap_kl3UC_6_base<-c(mean(kl3UC_6_405_base/kl3UC_6_568_base))               
iNap_kl3UC_6_bpl<-c(mean(kl3UC_6_bpl))
iNap_kl3UC_6_blp<-c(mean(kl3UC_6_blp))
iNap_kl3UC_6_btl<-c(mean(kl3UC_6_btl))
iNap_kl3UC_6_btp<-c(mean(kl3UC_6_btp))




a7<-c(kl3[,25])
b7<-c(kl3[,26])
c7<-c(kl3[,27])
d7<-c(kl3[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
kl3UC_eyedisc_7<-c(aa7/bb7)



kl3UC_7_405_base<-c(aa7[51:60])
kl3UC_7_405_low<-c(aa7[76:85])
kl3UC_7_405_peak<-c(aa7[123:132])

kl3UC_7_568_base<-c(bb7[51:60])
kl3UC_7_568_low<-c(bb7[76:85])
kl3UC_7_568_peak<-c(bb7[123:132])

kl3UC_7_bpl<-c((kl3UC_7_405_base/kl3UC_7_568_base)/((kl3UC_7_405_peak/kl3UC_7_568_peak)/(kl3UC_7_405_low/kl3UC_7_568_low)))
kl3UC_7_blp<-c((kl3UC_7_405_base/kl3UC_7_568_base)/((kl3UC_7_405_low/kl3UC_7_568_low)/(kl3UC_7_405_peak/kl3UC_7_568_peak)))
kl3UC_7_btl<-c((kl3UC_7_405_base/kl3UC_7_568_base)/(kl3UC_7_405_low/kl3UC_7_568_low))
kl3UC_7_btp<-c((kl3UC_7_405_base/kl3UC_7_568_base)/(kl3UC_7_405_peak/kl3UC_7_568_peak))

iNap_kl3UC_7_base<-c(mean(kl3UC_7_405_base/kl3UC_7_568_base))               
iNap_kl3UC_7_bpl<-c(mean(kl3UC_7_bpl))
iNap_kl3UC_7_blp<-c(mean(kl3UC_7_blp))
iNap_kl3UC_7_btl<-c(mean(kl3UC_7_btl))
iNap_kl3UC_7_btp<-c(mean(kl3UC_7_btp))


a8<-c(kl3[,29])
b8<-c(kl3[,30])
c8<-c(kl3[,31])
d8<-c(kl3[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
kl3UC_eyedisc_8<-c(aa8/bb8)

kl3UC_8_405_base<-c(aa8[51:60])
kl3UC_8_405_low<-c(aa8[76:85])
kl3UC_8_405_peak<-c(aa8[123:132])

kl3UC_8_568_base<-c(bb8[51:60])
kl3UC_8_568_low<-c(bb8[76:85])
kl3UC_8_568_peak<-c(bb8[123:132])

kl3UC_8_bpl<-c((kl3UC_8_405_base/kl3UC_8_568_base)/((kl3UC_8_405_peak/kl3UC_8_568_peak)/(kl3UC_8_405_low/kl3UC_8_568_low)))
kl3UC_8_blp<-c((kl3UC_8_405_base/kl3UC_8_568_base)/((kl3UC_8_405_low/kl3UC_8_568_low)/(kl3UC_8_405_peak/kl3UC_8_568_peak)))
kl3UC_8_btl<-c((kl3UC_8_405_base/kl3UC_8_568_base)/(kl3UC_8_405_low/kl3UC_8_568_low))
kl3UC_8_btp<-c((kl3UC_8_405_base/kl3UC_8_568_base)/(kl3UC_8_405_peak/kl3UC_8_568_peak))

iNap_kl3UC_8_base<-c(mean(kl3UC_8_405_base/kl3UC_8_568_base))               
iNap_kl3UC_8_bpl<-c(mean(kl3UC_8_bpl))
iNap_kl3UC_8_blp<-c(mean(kl3UC_8_blp))
iNap_kl3UC_8_btl<-c(mean(kl3UC_8_btl))
iNap_kl3UC_8_btp<-c(mean(kl3UC_8_btp))


a9<-c(kl3[,33])
b9<-c(kl3[,34])
c9<-c(kl3[,35])
d9<-c(kl3[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
kl3UC_eyedisc_9<-c(aa9/bb9)

kl3UC_9_405_base<-c(aa9[51:60])
kl3UC_9_405_low<-c(aa9[76:85])
kl3UC_9_405_peak<-c(aa9[123:132])

kl3UC_9_568_base<-c(bb9[51:60])
kl3UC_9_568_low<-c(bb9[76:85])
kl3UC_9_568_peak<-c(bb9[123:132])

kl3UC_9_bpl<-c((kl3UC_9_405_base/kl3UC_9_568_base)/((kl3UC_9_405_peak/kl3UC_9_568_peak)/(kl3UC_9_405_low/kl3UC_9_568_low)))
kl3UC_9_blp<-c((kl3UC_9_405_base/kl3UC_9_568_base)/((kl3UC_9_405_low/kl3UC_9_568_low)/(kl3UC_9_405_peak/kl3UC_9_568_peak)))
kl3UC_9_btl<-c((kl3UC_9_405_base/kl3UC_9_568_base)/(kl3UC_9_405_low/kl3UC_9_568_low))
kl3UC_9_btp<-c((kl3UC_9_405_base/kl3UC_9_568_base)/(kl3UC_9_405_peak/kl3UC_9_568_peak))

iNap_kl3UC_9_base<-c(mean(kl3UC_9_405_base/kl3UC_9_568_base))               
iNap_kl3UC_9_bpl<-c(mean(kl3UC_9_bpl))
iNap_kl3UC_9_blp<-c(mean(kl3UC_9_blp))
iNap_kl3UC_9_btl<-c(mean(kl3UC_9_btl))
iNap_kl3UC_9_btp<-c(mean(kl3UC_9_btp))

a10<-c(kl3[,37])
b10<-c(kl3[,38])
c10<-c(kl3[,39])
d10<-c(kl3[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
kl3UC_eyedisc_10<-c(aa10/bb10)

kl3UC_10_405_base<-c(aa10[51:60])
kl3UC_10_405_low<-c(aa10[76:85])
kl3UC_10_405_peak<-c(aa10[123:132])

kl3UC_10_568_base<-c(bb10[51:60])
kl3UC_10_568_low<-c(bb10[76:85])
kl3UC_10_568_peak<-c(bb10[123:132])

kl3UC_10_bpl<-c((kl3UC_10_405_base/kl3UC_10_568_base)/((kl3UC_10_405_peak/kl3UC_10_568_peak)/(kl3UC_10_405_low/kl3UC_10_568_low)))
kl3UC_10_blp<-c((kl3UC_10_405_base/kl3UC_10_568_base)/((kl3UC_10_405_low/kl3UC_10_568_low)/(kl3UC_10_405_peak/kl3UC_10_568_peak)))
kl3UC_10_btl<-c((kl3UC_10_405_base/kl3UC_10_568_base)/(kl3UC_10_405_low/kl3UC_10_568_low))
kl3UC_10_btp<-c((kl3UC_10_405_base/kl3UC_10_568_base)/(kl3UC_10_405_peak/kl3UC_10_568_peak))

iNap_kl3UC_10_base<-c(mean(kl3UC_10_405_base/kl3UC_10_568_base))               
iNap_kl3UC_10_bpl<-c(mean(kl3UC_10_bpl))
iNap_kl3UC_10_blp<-c(mean(kl3UC_10_blp))
iNap_kl3UC_10_btl<-c(mean(kl3UC_10_btl))
iNap_kl3UC_10_btp<-c(mean(kl3UC_10_btp))

a11<-c(kl3[,41])
b11<-c(kl3[,42])
c11<-c(kl3[,43])
d11<-c(kl3[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
kl3UC_eyedisc_11<-c(aa11/bb11)

kl3UC_11_405_base<-c(aa11[51:60])
kl3UC_11_405_low<-c(aa11[76:85])
kl3UC_11_405_peak<-c(aa11[123:132])

kl3UC_11_568_base<-c(bb11[51:60])
kl3UC_11_568_low<-c(bb11[76:85])
kl3UC_11_568_peak<-c(bb11[123:132])

kl3UC_11_bpl<-c((kl3UC_11_405_base/kl3UC_11_568_base)/((kl3UC_11_405_peak/kl3UC_11_568_peak)/(kl3UC_11_405_low/kl3UC_11_568_low)))
kl3UC_11_blp<-c((kl3UC_11_405_base/kl3UC_11_568_base)/((kl3UC_11_405_low/kl3UC_11_568_low)/(kl3UC_11_405_peak/kl3UC_11_568_peak)))
kl3UC_11_btl<-c((kl3UC_11_405_base/kl3UC_11_568_base)/(kl3UC_11_405_low/kl3UC_11_568_low))
kl3UC_11_btp<-c((kl3UC_11_405_base/kl3UC_11_568_base)/(kl3UC_11_405_peak/kl3UC_11_568_peak))

iNap_kl3UC_11_base<-c(mean(kl3UC_11_405_base/kl3UC_11_568_base)) 
iNap_kl3UC_11_bpl<-c(mean(kl3UC_11_bpl))
iNap_kl3UC_11_blp<-c(mean(kl3UC_11_blp))
iNap_kl3UC_11_btl<-c(mean(kl3UC_11_btl))
iNap_kl3UC_11_btp<-c(mean(kl3UC_11_btp))


a13<-c(kl3[,49])
b13<-c(kl3[,50])
c13<-c(kl3[,51])
d13<-c(kl3[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
kl3UC_eyedisc_13<-c(aa13/bb13)

kl3UC_13_405_base<-c(aa13[51:60])
kl3UC_13_405_low<-c(aa13[76:85])
kl3UC_13_405_peak<-c(aa13[123:132])

kl3UC_13_568_base<-c(bb13[51:60])
kl3UC_13_568_low<-c(bb13[76:85])
kl3UC_13_568_peak<-c(bb13[123:132])

kl3UC_13_bpl<-c((kl3UC_13_405_base/kl3UC_13_568_base)/((kl3UC_13_405_peak/kl3UC_13_568_peak)/(kl3UC_13_405_low/kl3UC_13_568_low)))
kl3UC_13_blp<-c((kl3UC_13_405_base/kl3UC_13_568_base)/((kl3UC_13_405_low/kl3UC_13_568_low)/(kl3UC_13_405_peak/kl3UC_13_568_peak)))
kl3UC_13_btl<-c((kl3UC_13_405_base/kl3UC_13_568_base)/(kl3UC_13_405_low/kl3UC_13_568_low))
kl3UC_13_btp<-c((kl3UC_13_405_base/kl3UC_13_568_base)/(kl3UC_13_405_peak/kl3UC_13_568_peak))

iNap_kl3UC_13_base<-c(mean(kl3UC_13_405_base/kl3UC_13_568_base))               
iNap_kl3UC_13_bpl<-c(mean(kl3UC_13_bpl))
iNap_kl3UC_13_blp<-c(mean(kl3UC_13_blp))
iNap_kl3UC_13_btl<-c(mean(kl3UC_13_btl))
iNap_kl3UC_13_btp<-c(mean(kl3UC_13_btp))

a14<-c(kl3[,53])
b14<-c(kl3[,54])
c14<-c(kl3[,55])
d14<-c(kl3[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
kl3UC_eyedisc_14<-c(aa14/bb14)

kl3UC_14_405_base<-c(aa14[51:60])
kl3UC_14_405_low<-c(aa14[76:85])
kl3UC_14_405_peak<-c(aa14[123:132])

kl3UC_14_568_base<-c(bb14[51:60])
kl3UC_14_568_low<-c(bb14[76:85])
kl3UC_14_568_peak<-c(bb14[123:132])

kl3UC_14_bpl<-c((kl3UC_14_405_base/kl3UC_14_568_base)/((kl3UC_14_405_peak/kl3UC_14_568_peak)/(kl3UC_14_405_low/kl3UC_14_568_low)))
kl3UC_14_blp<-c((kl3UC_14_405_base/kl3UC_14_568_base)/((kl3UC_14_405_low/kl3UC_14_568_low)/(kl3UC_14_405_peak/kl3UC_14_568_peak)))
kl3UC_14_btl<-c((kl3UC_14_405_base/kl3UC_14_568_base)/(kl3UC_14_405_low/kl3UC_14_568_low))
kl3UC_14_btp<-c((kl3UC_14_405_base/kl3UC_14_568_base)/(kl3UC_14_405_peak/kl3UC_14_568_peak))

iNap_kl3UC_14_base<-c(mean(kl3UC_14_405_base/kl3UC_14_568_base))               
iNap_kl3UC_14_bpl<-c(mean(kl3UC_14_bpl))
iNap_kl3UC_14_blp<-c(mean(kl3UC_14_blp))
iNap_kl3UC_14_btl<-c(mean(kl3UC_14_btl))
iNap_kl3UC_14_btp<-c(mean(kl3UC_14_btp))


iNap_kl3UC_time_course<-c(kl3UC_eyedisc_1,kl3UC_eyedisc_2,kl3UC_eyedisc_3,kl3UC_eyedisc_4,kl3UC_eyedisc_6,kl3UC_eyedisc_7,kl3UC_eyedisc_8,kl3UC_eyedisc_9,kl3UC_eyedisc_10,kl3UC_eyedisc_11,kl3UC_eyedisc_13,kl3UC_eyedisc_14)
matiNap_kl3UC_time_course<-matrix(iNap_kl3UC_time_course,nrow=132,ncol=12)
mean_iNap_kl3UC_time_course<-c(rowMeans(matiNap_kl3UC_time_course))

iNap_kl3UC_bpl<-c(iNap_kl3UC_1_bpl,iNap_kl3UC_2_bpl,iNap_kl3UC_3_bpl,iNap_kl3UC_4_bpl,iNap_kl3UC_6_bpl,iNap_kl3UC_7_bpl,iNap_kl3UC_8_bpl,iNap_kl3UC_9_bpl,iNap_kl3UC_10_bpl,iNap_kl3UC_11_bpl,iNap_kl3UC_13_bpl,iNap_kl3UC_14_bpl)
iNap_kl3UC_blp<-c(iNap_kl3UC_1_blp,iNap_kl3UC_2_blp,iNap_kl3UC_3_blp,iNap_kl3UC_4_blp,iNap_kl3UC_6_blp,iNap_kl3UC_7_blp,iNap_kl3UC_8_blp,iNap_kl3UC_9_blp,iNap_kl3UC_10_blp,iNap_kl3UC_11_blp,iNap_kl3UC_13_blp,iNap_kl3UC_14_blp)
iNap_kl3UC_btp<-c(iNap_kl3UC_1_btp,iNap_kl3UC_2_btp,iNap_kl3UC_3_btp,iNap_kl3UC_4_btp,iNap_kl3UC_6_btp,iNap_kl3UC_7_btp,iNap_kl3UC_8_btp,iNap_kl3UC_9_btp,iNap_kl3UC_10_btp,iNap_kl3UC_11_btp,iNap_kl3UC_13_btp,iNap_kl3UC_14_btp)
iNap_kl3UC_btl<-c(iNap_kl3UC_1_btl,iNap_kl3UC_2_btl,iNap_kl3UC_3_btl,iNap_kl3UC_4_btl,iNap_kl3UC_6_btl,iNap_kl3UC_7_btl,iNap_kl3UC_8_btl,iNap_kl3UC_9_btl,iNap_kl3UC_10_btl,iNap_kl3UC_11_btl,iNap_kl3UC_13_btl,iNap_kl3UC_14_btl)
iNap_kl3UC_base<-c(iNap_kl3UC_1_base,iNap_kl3UC_2_base,iNap_kl3UC_3_base,iNap_kl3UC_4_base,iNap_kl3UC_6_base,iNap_kl3UC_7_base,iNap_kl3UC_8_base,iNap_kl3UC_9_base,iNap_kl3UC_10_base,iNap_kl3UC_11_base,iNap_kl3UC_13_base,iNap_kl3UC_14_base)


