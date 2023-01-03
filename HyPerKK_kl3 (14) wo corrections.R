a1<-c(kl3[,1])
b1<-c(kl3[,2])
c1<-c(kl3[,3])
d1<-c(kl3[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
kl3UC_eyedisc_1<-c(bb1/aa1)

kl3UC_1_568_base<-c(bb1[51:60])
kl3UC_1_568_peak<-c(bb1[85:94])
kl3UC_1_568_low<-c(bb1[141:150])

kl3UC_1_488_base<-c(aa1[51:60])
kl3UC_1_488_peak<-c(aa1[85:94])
kl3UC_1_488_low<-c(aa1[141:150])

kl3UC_1_blp<-c((kl3UC_1_568_base/kl3UC_1_488_base)/((kl3UC_1_568_low/kl3UC_1_488_low)/(kl3UC_1_568_peak/kl3UC_1_488_peak)))
kl3UC_1_bpl<-c((kl3UC_1_568_base/kl3UC_1_488_base)/((kl3UC_1_568_peak/kl3UC_1_488_peak)/(kl3UC_1_568_low/kl3UC_1_488_low)))
kl3UC_1_btp<-c((kl3UC_1_568_base/kl3UC_1_488_base)/(kl3UC_1_568_peak/kl3UC_1_488_peak))
kl3UC_1_btl<-c((kl3UC_1_568_base/kl3UC_1_488_base)/(kl3UC_1_568_low/kl3UC_1_488_low))

HyPer_kl3UC_1_base<-c(mean(kl3UC_1_568_base/kl3UC_1_488_base))               
HyPer_kl3UC_1_blp<-c(mean(kl3UC_1_blp))
HyPer_kl3UC_1_bpl<-c(mean(kl3UC_1_bpl))
HyPer_kl3UC_1_btp<-c(mean(kl3UC_1_btp))
HyPer_kl3UC_1_btl<-c(mean(kl3UC_1_btl))


a2<-c(kl3[,5])
b2<-c(kl3[,6])
c2<-c(kl3[,7])
d2<-c(kl3[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
kl3UC_eyedisc_2<-c(bb2/aa2)



kl3UC_2_568_base<-c(bb2[51:60])
kl3UC_2_568_peak<-c(bb2[85:94])
kl3UC_2_568_low<-c(bb2[141:150])

kl3UC_2_488_base<-c(aa2[51:60])
kl3UC_2_488_peak<-c(aa2[85:94])
kl3UC_2_488_low<-c(aa2[141:150])

kl3UC_2_blp<-c((kl3UC_2_568_base/kl3UC_2_488_base)/((kl3UC_2_568_low/kl3UC_2_488_low)/(kl3UC_2_568_peak/kl3UC_2_488_peak)))
kl3UC_2_bpl<-c((kl3UC_2_568_base/kl3UC_2_488_base)/((kl3UC_2_568_peak/kl3UC_2_488_peak)/(kl3UC_2_568_low/kl3UC_2_488_low)))
kl3UC_2_btp<-c((kl3UC_2_568_base/kl3UC_2_488_base)/(kl3UC_2_568_peak/kl3UC_2_488_peak))
kl3UC_2_btl<-c((kl3UC_2_568_base/kl3UC_2_488_base)/(kl3UC_2_568_low/kl3UC_2_488_low))

HyPer_kl3UC_2_base<-c(mean(kl3UC_2_568_base/kl3UC_2_488_base))               
HyPer_kl3UC_2_blp<-c(mean(kl3UC_2_blp))
HyPer_kl3UC_2_bpl<-c(mean(kl3UC_2_bpl))
HyPer_kl3UC_2_btp<-c(mean(kl3UC_2_btp))
HyPer_kl3UC_2_btl<-c(mean(kl3UC_2_btl))



a3<-c(kl3[,9])
b3<-c(kl3[,10])
c3<-c(kl3[,11])
d3<-c(kl3[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
kl3UC_eyedisc_3<-c(bb3/aa3)


kl3UC_3_568_base<-c(bb3[51:60])
kl3UC_3_568_peak<-c(bb3[85:94])
kl3UC_3_568_low<-c(bb3[141:150])

kl3UC_3_488_base<-c(aa3[51:60])
kl3UC_3_488_peak<-c(aa3[85:94])
kl3UC_3_488_low<-c(aa3[141:150])

kl3UC_3_blp<-c((kl3UC_3_568_base/kl3UC_3_488_base)/((kl3UC_3_568_low/kl3UC_3_488_low)/(kl3UC_3_568_peak/kl3UC_3_488_peak)))
kl3UC_3_bpl<-c((kl3UC_3_568_base/kl3UC_3_488_base)/((kl3UC_3_568_peak/kl3UC_3_488_peak)/(kl3UC_3_568_low/kl3UC_3_488_low)))
kl3UC_3_btp<-c((kl3UC_3_568_base/kl3UC_3_488_base)/(kl3UC_3_568_peak/kl3UC_3_488_peak))
kl3UC_3_btl<-c((kl3UC_3_568_base/kl3UC_3_488_base)/(kl3UC_3_568_low/kl3UC_3_488_low))

HyPer_kl3UC_3_base<-c(mean(kl3UC_3_568_base/kl3UC_3_488_base))               
HyPer_kl3UC_3_blp<-c(mean(kl3UC_3_blp))
HyPer_kl3UC_3_bpl<-c(mean(kl3UC_3_bpl))
HyPer_kl3UC_3_btp<-c(mean(kl3UC_3_btp))
HyPer_kl3UC_3_btl<-c(mean(kl3UC_3_btl))


a4<-c(kl3[,13])
b4<-c(kl3[,14])
c4<-c(kl3[,15])
d4<-c(kl3[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
kl3UC_eyedisc_4<-c(bb4/aa4)



kl3UC_4_568_base<-c(bb4[51:60])
kl3UC_4_568_peak<-c(bb4[85:94])
kl3UC_4_568_low<-c(bb4[141:150])

kl3UC_4_488_base<-c(aa4[51:60])
kl3UC_4_488_peak<-c(aa4[85:94])
kl3UC_4_488_low<-c(aa4[141:150])

kl3UC_4_blp<-c((kl3UC_4_568_base/kl3UC_4_488_base)/((kl3UC_4_568_low/kl3UC_4_488_low)/(kl3UC_4_568_peak/kl3UC_4_488_peak)))
kl3UC_4_bpl<-c((kl3UC_4_568_base/kl3UC_4_488_base)/((kl3UC_4_568_peak/kl3UC_4_488_peak)/(kl3UC_4_568_low/kl3UC_4_488_low)))
kl3UC_4_btp<-c((kl3UC_4_568_base/kl3UC_4_488_base)/(kl3UC_4_568_peak/kl3UC_4_488_peak))
kl3UC_4_btl<-c((kl3UC_4_568_base/kl3UC_4_488_base)/(kl3UC_4_568_low/kl3UC_4_488_low))

HyPer_kl3UC_4_base<-c(mean(kl3UC_4_568_base/kl3UC_4_488_base))               
HyPer_kl3UC_4_blp<-c(mean(kl3UC_4_blp))
HyPer_kl3UC_4_bpl<-c(mean(kl3UC_4_bpl))
HyPer_kl3UC_4_btp<-c(mean(kl3UC_4_btp))
HyPer_kl3UC_4_btl<-c(mean(kl3UC_4_btl))


a5<-c(kl3[,17])
b5<-c(kl3[,18])
c5<-c(kl3[,19])
d5<-c(kl3[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
kl3UC_eyedisc_5<-c(bb5/aa5)



kl3UC_5_568_base<-c(bb5[51:60])
kl3UC_5_568_peak<-c(bb5[85:94])
kl3UC_5_568_low<-c(bb5[141:150])

kl3UC_5_488_base<-c(aa5[51:60])
kl3UC_5_488_peak<-c(aa5[85:94])
kl3UC_5_488_low<-c(aa5[141:150])

kl3UC_5_blp<-c((kl3UC_5_568_base/kl3UC_5_488_base)/((kl3UC_5_568_low/kl3UC_5_488_low)/(kl3UC_5_568_peak/kl3UC_5_488_peak)))
kl3UC_5_bpl<-c((kl3UC_5_568_base/kl3UC_5_488_base)/((kl3UC_5_568_peak/kl3UC_5_488_peak)/(kl3UC_5_568_low/kl3UC_5_488_low)))
kl3UC_5_btp<-c((kl3UC_5_568_base/kl3UC_5_488_base)/(kl3UC_5_568_peak/kl3UC_5_488_peak))
kl3UC_5_btl<-c((kl3UC_5_568_base/kl3UC_5_488_base)/(kl3UC_5_568_low/kl3UC_5_488_low))

HyPer_kl3UC_5_base<-c(mean(kl3UC_5_568_base/kl3UC_5_488_base))               
HyPer_kl3UC_5_blp<-c(mean(kl3UC_5_blp))
HyPer_kl3UC_5_bpl<-c(mean(kl3UC_5_bpl))
HyPer_kl3UC_5_btp<-c(mean(kl3UC_5_btp))
HyPer_kl3UC_5_btl<-c(mean(kl3UC_5_btl))


a6<-c(kl3[,21])
b6<-c(kl3[,22])
c6<-c(kl3[,23])
d6<-c(kl3[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
kl3UC_eyedisc_6<-c(bb6/aa6)

kl3UC_6_568_base<-c(bb6[51:60])
kl3UC_6_568_peak<-c(bb6[85:94])
kl3UC_6_568_low<-c(bb6[141:150])

kl3UC_6_488_base<-c(aa6[51:60])
kl3UC_6_488_peak<-c(aa6[85:94])
kl3UC_6_488_low<-c(aa6[141:150])

kl3UC_6_blp<-c((kl3UC_6_568_base/kl3UC_6_488_base)/((kl3UC_6_568_low/kl3UC_6_488_low)/(kl3UC_6_568_peak/kl3UC_6_488_peak)))
kl3UC_6_bpl<-c((kl3UC_6_568_base/kl3UC_6_488_base)/((kl3UC_6_568_peak/kl3UC_6_488_peak)/(kl3UC_6_568_low/kl3UC_6_488_low)))
kl3UC_6_btp<-c((kl3UC_6_568_base/kl3UC_6_488_base)/(kl3UC_6_568_peak/kl3UC_6_488_peak))
kl3UC_6_btl<-c((kl3UC_6_568_base/kl3UC_6_488_base)/(kl3UC_6_568_low/kl3UC_6_488_low))

HyPer_kl3UC_6_base<-c(mean(kl3UC_6_568_base/kl3UC_6_488_base))               
HyPer_kl3UC_6_blp<-c(mean(kl3UC_6_blp))
HyPer_kl3UC_6_bpl<-c(mean(kl3UC_6_bpl))
HyPer_kl3UC_6_btp<-c(mean(kl3UC_6_btp))
HyPer_kl3UC_6_btl<-c(mean(kl3UC_6_btl))




a7<-c(kl3[,25])
b7<-c(kl3[,26])
c7<-c(kl3[,27])
d7<-c(kl3[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
kl3UC_eyedisc_7<-c(bb7/aa7)



kl3UC_7_568_base<-c(bb7[51:60])
kl3UC_7_568_peak<-c(bb7[85:94])
kl3UC_7_568_low<-c(bb7[141:150])

kl3UC_7_488_base<-c(aa7[51:60])
kl3UC_7_488_peak<-c(aa7[85:94])
kl3UC_7_488_low<-c(aa7[141:150])

kl3UC_7_blp<-c((kl3UC_7_568_base/kl3UC_7_488_base)/((kl3UC_7_568_low/kl3UC_7_488_low)/(kl3UC_7_568_peak/kl3UC_7_488_peak)))
kl3UC_7_bpl<-c((kl3UC_7_568_base/kl3UC_7_488_base)/((kl3UC_7_568_peak/kl3UC_7_488_peak)/(kl3UC_7_568_low/kl3UC_7_488_low)))
kl3UC_7_btp<-c((kl3UC_7_568_base/kl3UC_7_488_base)/(kl3UC_7_568_peak/kl3UC_7_488_peak))
kl3UC_7_btl<-c((kl3UC_7_568_base/kl3UC_7_488_base)/(kl3UC_7_568_low/kl3UC_7_488_low))

HyPer_kl3UC_7_base<-c(mean(kl3UC_7_568_base/kl3UC_7_488_base))               
HyPer_kl3UC_7_blp<-c(mean(kl3UC_7_blp))
HyPer_kl3UC_7_bpl<-c(mean(kl3UC_7_bpl))
HyPer_kl3UC_7_btp<-c(mean(kl3UC_7_btp))
HyPer_kl3UC_7_btl<-c(mean(kl3UC_7_btl))



a9<-c(kl3[,33])
b9<-c(kl3[,34])
c9<-c(kl3[,35])
d9<-c(kl3[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
kl3UC_eyedisc_9<-c(bb9/aa9)

kl3UC_9_568_base<-c(bb9[51:60])
kl3UC_9_568_peak<-c(bb9[85:94])
kl3UC_9_568_low<-c(bb9[141:150])

kl3UC_9_488_base<-c(aa9[51:60])
kl3UC_9_488_peak<-c(aa9[85:94])
kl3UC_9_488_low<-c(aa9[141:150])

kl3UC_9_blp<-c((kl3UC_9_568_base/kl3UC_9_488_base)/((kl3UC_9_568_low/kl3UC_9_488_low)/(kl3UC_9_568_peak/kl3UC_9_488_peak)))
kl3UC_9_bpl<-c((kl3UC_9_568_base/kl3UC_9_488_base)/((kl3UC_9_568_peak/kl3UC_9_488_peak)/(kl3UC_9_568_low/kl3UC_9_488_low)))
kl3UC_9_btp<-c((kl3UC_9_568_base/kl3UC_9_488_base)/(kl3UC_9_568_peak/kl3UC_9_488_peak))
kl3UC_9_btl<-c((kl3UC_9_568_base/kl3UC_9_488_base)/(kl3UC_9_568_low/kl3UC_9_488_low))

HyPer_kl3UC_9_base<-c(mean(kl3UC_9_568_base/kl3UC_9_488_base))               
HyPer_kl3UC_9_blp<-c(mean(kl3UC_9_blp))
HyPer_kl3UC_9_bpl<-c(mean(kl3UC_9_bpl))
HyPer_kl3UC_9_btp<-c(mean(kl3UC_9_btp))
HyPer_kl3UC_9_btl<-c(mean(kl3UC_9_btl))

a10<-c(kl3[,37])
b10<-c(kl3[,38])
c10<-c(kl3[,39])
d10<-c(kl3[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
kl3UC_eyedisc_10<-c(bb10/aa10)

kl3UC_10_568_base<-c(bb10[51:60])
kl3UC_10_568_peak<-c(bb10[85:94])
kl3UC_10_568_low<-c(bb10[141:150])

kl3UC_10_488_base<-c(aa10[51:60])
kl3UC_10_488_peak<-c(aa10[85:94])
kl3UC_10_488_low<-c(aa10[141:150])

kl3UC_10_blp<-c((kl3UC_10_568_base/kl3UC_10_488_base)/((kl3UC_10_568_low/kl3UC_10_488_low)/(kl3UC_10_568_peak/kl3UC_10_488_peak)))
kl3UC_10_bpl<-c((kl3UC_10_568_base/kl3UC_10_488_base)/((kl3UC_10_568_peak/kl3UC_10_488_peak)/(kl3UC_10_568_low/kl3UC_10_488_low)))
kl3UC_10_btp<-c((kl3UC_10_568_base/kl3UC_10_488_base)/(kl3UC_10_568_peak/kl3UC_10_488_peak))
kl3UC_10_btl<-c((kl3UC_10_568_base/kl3UC_10_488_base)/(kl3UC_10_568_low/kl3UC_10_488_low))

HyPer_kl3UC_10_base<-c(mean(kl3UC_10_568_base/kl3UC_10_488_base))               
HyPer_kl3UC_10_blp<-c(mean(kl3UC_10_blp))
HyPer_kl3UC_10_bpl<-c(mean(kl3UC_10_bpl))
HyPer_kl3UC_10_btp<-c(mean(kl3UC_10_btp))
HyPer_kl3UC_10_btl<-c(mean(kl3UC_10_btl))

a11<-c(kl3[,41])
b11<-c(kl3[,42])
c11<-c(kl3[,43])
d11<-c(kl3[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
kl3UC_eyedisc_11<-c(bb11/aa11)

kl3UC_11_568_base<-c(bb11[51:60])
kl3UC_11_568_peak<-c(bb11[85:94])
kl3UC_11_568_low<-c(bb11[141:150])

kl3UC_11_488_base<-c(aa11[51:60])
kl3UC_11_488_peak<-c(aa11[85:94])
kl3UC_11_488_low<-c(aa11[141:150])

kl3UC_11_blp<-c((kl3UC_11_568_base/kl3UC_11_488_base)/((kl3UC_11_568_low/kl3UC_11_488_low)/(kl3UC_11_568_peak/kl3UC_11_488_peak)))
kl3UC_11_bpl<-c((kl3UC_11_568_base/kl3UC_11_488_base)/((kl3UC_11_568_peak/kl3UC_11_488_peak)/(kl3UC_11_568_low/kl3UC_11_488_low)))
kl3UC_11_btp<-c((kl3UC_11_568_base/kl3UC_11_488_base)/(kl3UC_11_568_peak/kl3UC_11_488_peak))
kl3UC_11_btl<-c((kl3UC_11_568_base/kl3UC_11_488_base)/(kl3UC_11_568_low/kl3UC_11_488_low))

HyPer_kl3UC_11_base<-c(mean(kl3UC_11_568_base/kl3UC_11_488_base))               
HyPer_kl3UC_11_blp<-c(mean(kl3UC_11_blp))
HyPer_kl3UC_11_bpl<-c(mean(kl3UC_11_bpl))
HyPer_kl3UC_11_btp<-c(mean(kl3UC_11_btp))
HyPer_kl3UC_11_btl<-c(mean(kl3UC_11_btl))

a12<-c(kl3[,45])
b12<-c(kl3[,46])
c12<-c(kl3[,47])
d12<-c(kl3[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
kl3UC_eyedisc_12<-c(bb12/aa12)

kl3UC_12_568_base<-c(bb12[51:60])
kl3UC_12_568_peak<-c(bb12[85:94])
kl3UC_12_568_low<-c(bb12[141:150])

kl3UC_12_488_base<-c(aa12[51:60])
kl3UC_12_488_peak<-c(aa12[85:94])
kl3UC_12_488_low<-c(aa12[141:150])

kl3UC_12_blp<-c((kl3UC_12_568_base/kl3UC_12_488_base)/((kl3UC_12_568_low/kl3UC_12_488_low)/(kl3UC_12_568_peak/kl3UC_12_488_peak)))
kl3UC_12_bpl<-c((kl3UC_12_568_base/kl3UC_12_488_base)/((kl3UC_12_568_peak/kl3UC_12_488_peak)/(kl3UC_12_568_low/kl3UC_12_488_low)))
kl3UC_12_btp<-c((kl3UC_12_568_base/kl3UC_12_488_base)/(kl3UC_12_568_peak/kl3UC_12_488_peak))
kl3UC_12_btl<-c((kl3UC_12_568_base/kl3UC_12_488_base)/(kl3UC_12_568_low/kl3UC_12_488_low))

HyPer_kl3UC_12_base<-c(mean(kl3UC_12_568_base/kl3UC_12_488_base))               
HyPer_kl3UC_12_blp<-c(mean(kl3UC_12_blp))
HyPer_kl3UC_12_bpl<-c(mean(kl3UC_12_bpl))
HyPer_kl3UC_12_btp<-c(mean(kl3UC_12_btp))
HyPer_kl3UC_12_btl<-c(mean(kl3UC_12_btl))

a13<-c(kl3[,49])
b13<-c(kl3[,50])
c13<-c(kl3[,51])
d13<-c(kl3[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
kl3UC_eyedisc_13<-c(bb13/aa13)

kl3UC_13_568_base<-c(bb13[51:60])
kl3UC_13_568_peak<-c(bb13[85:94])
kl3UC_13_568_low<-c(bb13[141:150])

kl3UC_13_488_base<-c(aa13[51:60])
kl3UC_13_488_peak<-c(aa13[85:94])
kl3UC_13_488_low<-c(aa13[141:150])

kl3UC_13_blp<-c((kl3UC_13_568_base/kl3UC_13_488_base)/((kl3UC_13_568_low/kl3UC_13_488_low)/(kl3UC_13_568_peak/kl3UC_13_488_peak)))
kl3UC_13_bpl<-c((kl3UC_13_568_base/kl3UC_13_488_base)/((kl3UC_13_568_peak/kl3UC_13_488_peak)/(kl3UC_13_568_low/kl3UC_13_488_low)))
kl3UC_13_btp<-c((kl3UC_13_568_base/kl3UC_13_488_base)/(kl3UC_13_568_peak/kl3UC_13_488_peak))
kl3UC_13_btl<-c((kl3UC_13_568_base/kl3UC_13_488_base)/(kl3UC_13_568_low/kl3UC_13_488_low))

HyPer_kl3UC_13_base<-c(mean(kl3UC_13_568_base/kl3UC_13_488_base))               
HyPer_kl3UC_13_blp<-c(mean(kl3UC_13_blp))
HyPer_kl3UC_13_bpl<-c(mean(kl3UC_13_bpl))
HyPer_kl3UC_13_btp<-c(mean(kl3UC_13_btp))
HyPer_kl3UC_13_btl<-c(mean(kl3UC_13_btl))

a14<-c(kl3[,53])
b14<-c(kl3[,54])
c14<-c(kl3[,55])
d14<-c(kl3[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
kl3UC_eyedisc_14<-c(bb14/aa14)

kl3UC_14_568_base<-c(bb14[51:60])
kl3UC_14_568_peak<-c(bb14[85:94])
kl3UC_14_568_low<-c(bb14[141:150])

kl3UC_14_488_base<-c(aa14[51:60])
kl3UC_14_488_peak<-c(aa14[85:94])
kl3UC_14_488_low<-c(aa14[141:150])

kl3UC_14_blp<-c((kl3UC_14_568_base/kl3UC_14_488_base)/((kl3UC_14_568_low/kl3UC_14_488_low)/(kl3UC_14_568_peak/kl3UC_14_488_peak)))
kl3UC_14_bpl<-c((kl3UC_14_568_base/kl3UC_14_488_base)/((kl3UC_14_568_peak/kl3UC_14_488_peak)/(kl3UC_14_568_low/kl3UC_14_488_low)))
kl3UC_14_btp<-c((kl3UC_14_568_base/kl3UC_14_488_base)/(kl3UC_14_568_peak/kl3UC_14_488_peak))
kl3UC_14_btl<-c((kl3UC_14_568_base/kl3UC_14_488_base)/(kl3UC_14_568_low/kl3UC_14_488_low))

HyPer_kl3UC_14_base<-c(mean(kl3UC_14_568_base/kl3UC_14_488_base))               
HyPer_kl3UC_14_blp<-c(mean(kl3UC_14_blp))
HyPer_kl3UC_14_bpl<-c(mean(kl3UC_14_bpl))
HyPer_kl3UC_14_btp<-c(mean(kl3UC_14_btp))
HyPer_kl3UC_14_btl<-c(mean(kl3UC_14_btl))

a15<-c(kl3[,57])
b15<-c(kl3[,58])
c15<-c(kl3[,59])
d15<-c(kl3[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
kl3UC_eyedisc_15<-c(bb15/aa15)

kl3UC_15_568_base<-c(bb15[51:60])
kl3UC_15_568_peak<-c(bb15[85:94])
kl3UC_15_568_low<-c(bb15[141:150])

kl3UC_15_488_base<-c(aa15[51:60])
kl3UC_15_488_peak<-c(aa15[85:94])
kl3UC_15_488_low<-c(aa15[141:150])

kl3UC_15_blp<-c((kl3UC_15_568_base/kl3UC_15_488_base)/((kl3UC_15_568_low/kl3UC_15_488_low)/(kl3UC_15_568_peak/kl3UC_15_488_peak)))
kl3UC_15_bpl<-c((kl3UC_15_568_base/kl3UC_15_488_base)/((kl3UC_15_568_peak/kl3UC_15_488_peak)/(kl3UC_15_568_low/kl3UC_15_488_low)))
kl3UC_15_btp<-c((kl3UC_15_568_base/kl3UC_15_488_base)/(kl3UC_15_568_peak/kl3UC_15_488_peak))
kl3UC_15_btl<-c((kl3UC_15_568_base/kl3UC_15_488_base)/(kl3UC_15_568_low/kl3UC_15_488_low))

HyPer_kl3UC_15_base<-c(mean(kl3UC_15_568_base/kl3UC_15_488_base))               
HyPer_kl3UC_15_blp<-c(mean(kl3UC_15_blp))
HyPer_kl3UC_15_bpl<-c(mean(kl3UC_15_bpl))
HyPer_kl3UC_15_btp<-c(mean(kl3UC_15_btp))
HyPer_kl3UC_15_btl<-c(mean(kl3UC_15_btl))



HyPer_kl3UC_time_course<-c(kl3UC_eyedisc_1,kl3UC_eyedisc_2,kl3UC_eyedisc_3,kl3UC_eyedisc_4,kl3UC_eyedisc_5,kl3UC_eyedisc_6,kl3UC_eyedisc_7,kl3UC_eyedisc_9,kl3UC_eyedisc_10,kl3UC_eyedisc_11,kl3UC_eyedisc_12,kl3UC_eyedisc_13,kl3UC_eyedisc_14,kl3UC_eyedisc_15)
matHyPer_kl3UC_time_course<-matrix(HyPer_kl3UC_time_course,nrow=150,ncol=14)
mean_HyPer_kl3UC_time_course<-c(rowMeans(matHyPer_kl3UC_time_course))

HyPer_kl3UC_blp<-c(HyPer_kl3UC_1_blp,HyPer_kl3UC_2_blp,HyPer_kl3UC_3_blp,HyPer_kl3UC_4_blp,HyPer_kl3UC_5_blp,HyPer_kl3UC_6_blp,HyPer_kl3UC_7_blp,HyPer_kl3UC_9_blp,HyPer_kl3UC_10_blp,HyPer_kl3UC_11_blp,HyPer_kl3UC_12_blp,HyPer_kl3UC_13_blp,HyPer_kl3UC_14_blp,HyPer_kl3UC_15_blp)
HyPer_kl3UC_bpl<-c(HyPer_kl3UC_1_bpl,HyPer_kl3UC_2_bpl,HyPer_kl3UC_3_bpl,HyPer_kl3UC_4_bpl,HyPer_kl3UC_5_bpl,HyPer_kl3UC_6_bpl,HyPer_kl3UC_7_bpl,HyPer_kl3UC_9_bpl,HyPer_kl3UC_10_bpl,HyPer_kl3UC_11_bpl,HyPer_kl3UC_12_bpl,HyPer_kl3UC_13_bpl,HyPer_kl3UC_14_bpl,HyPer_kl3UC_15_bpl)
HyPer_kl3UC_btl<-c(HyPer_kl3UC_1_btl,HyPer_kl3UC_2_btl,HyPer_kl3UC_3_btl,HyPer_kl3UC_4_btl,HyPer_kl3UC_5_btl,HyPer_kl3UC_6_btl,HyPer_kl3UC_7_btl,HyPer_kl3UC_9_btl,HyPer_kl3UC_10_btl,HyPer_kl3UC_11_btl,HyPer_kl3UC_12_btl,HyPer_kl3UC_13_btl,HyPer_kl3UC_14_btl,HyPer_kl3UC_15_btl)
HyPer_kl3UC_btp<-c(HyPer_kl3UC_1_btp,HyPer_kl3UC_2_btp,HyPer_kl3UC_3_btp,HyPer_kl3UC_4_btp,HyPer_kl3UC_5_btp,HyPer_kl3UC_6_btp,HyPer_kl3UC_7_btp,HyPer_kl3UC_9_btp,HyPer_kl3UC_10_btp,HyPer_kl3UC_11_btp,HyPer_kl3UC_12_btp,HyPer_kl3UC_13_btp,HyPer_kl3UC_14_btp,HyPer_kl3UC_15_btp)
HyPer_kl3UC_base<-c(HyPer_kl3UC_1_base,HyPer_kl3UC_2_base,HyPer_kl3UC_3_base,HyPer_kl3UC_4_base,HyPer_kl3UC_5_base,HyPer_kl3UC_6_base,HyPer_kl3UC_7_base,HyPer_kl3UC_9_base,HyPer_kl3UC_10_base,HyPer_kl3UC_11_base,HyPer_kl3UC_12_base,HyPer_kl3UC_13_base,HyPer_kl3UC_14_base,HyPer_kl3UC_15_base)


