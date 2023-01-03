a1<-c(kl3[,1])
b1<-c(kl3[,2])
c1<-c(kl3[,3])
d1<-c(kl3[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
kl3UC_eyedisc_1<-c(aa1/bb1)

kl3UC_1_488_base<-c(aa1[51:60])
kl3UC_1_488_low<-c(aa1[111:120])
kl3UC_1_488_peak<-c(aa1[76:85])

kl3UC_1_568_base<-c(bb1[51:60])
kl3UC_1_568_low<-c(bb1[111:120])
kl3UC_1_568_peak<-c(bb1[76:85])

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
kl3UC_2_488_peak<-c(aa2[76:85])

kl3UC_2_568_base<-c(bb2[51:60])
kl3UC_2_568_low<-c(bb2[111:120])
kl3UC_2_568_peak<-c(bb2[76:85])

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
kl3UC_3_488_peak<-c(aa3[76:85])

kl3UC_3_568_base<-c(bb3[51:60])
kl3UC_3_568_low<-c(bb3[111:120])
kl3UC_3_568_peak<-c(bb3[76:85])

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
kl3UC_4_488_peak<-c(aa4[76:85])

kl3UC_4_568_base<-c(bb4[51:60])
kl3UC_4_568_low<-c(bb4[111:120])
kl3UC_4_568_peak<-c(bb4[76:85])

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
kl3UC_5_488_peak<-c(aa5[76:85])

kl3UC_5_568_base<-c(bb5[51:60])
kl3UC_5_568_low<-c(bb5[111:120])
kl3UC_5_568_peak<-c(bb5[76:85])

kl3UC_5_bpl<-c((kl3UC_5_488_base/kl3UC_5_568_base)/((kl3UC_5_488_peak/kl3UC_5_568_peak)/(kl3UC_5_488_low/kl3UC_5_568_low)))
kl3UC_5_blp<-c((kl3UC_5_488_base/kl3UC_5_568_base)/((kl3UC_5_488_low/kl3UC_5_568_low)/(kl3UC_5_488_peak/kl3UC_5_568_peak)))
kl3UC_5_btl<-c((kl3UC_5_488_base/kl3UC_5_568_base)/(kl3UC_5_488_low/kl3UC_5_568_low))
kl3UC_5_btp<-c((kl3UC_5_488_base/kl3UC_5_568_base)/(kl3UC_5_488_peak/kl3UC_5_568_peak))

pHerry_kl3UC_5_base<-c(mean(kl3UC_5_488_base/kl3UC_5_568_base))               
pHerry_kl3UC_5_bpl<-c(mean(kl3UC_5_bpl))
pHerry_kl3UC_5_blp<-c(mean(kl3UC_5_blp))
pHerry_kl3UC_5_btl<-c(mean(kl3UC_5_btl))
pHerry_kl3UC_5_btp<-c(mean(kl3UC_5_btp))


a6<-c(kl3[,21])
b6<-c(kl3[,22])
c6<-c(kl3[,23])
d6<-c(kl3[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
kl3UC_eyedisc_6<-c(aa6/bb6)

kl3UC_6_488_base<-c(aa6[51:60])
kl3UC_6_488_low<-c(aa6[111:120])
kl3UC_6_488_peak<-c(aa6[76:85])

kl3UC_6_568_base<-c(bb6[51:60])
kl3UC_6_568_low<-c(bb6[111:120])
kl3UC_6_568_peak<-c(bb6[76:85])

kl3UC_6_bpl<-c((kl3UC_6_488_base/kl3UC_6_568_base)/((kl3UC_6_488_peak/kl3UC_6_568_peak)/(kl3UC_6_488_low/kl3UC_6_568_low)))
kl3UC_6_blp<-c((kl3UC_6_488_base/kl3UC_6_568_base)/((kl3UC_6_488_low/kl3UC_6_568_low)/(kl3UC_6_488_peak/kl3UC_6_568_peak)))
kl3UC_6_btl<-c((kl3UC_6_488_base/kl3UC_6_568_base)/(kl3UC_6_488_low/kl3UC_6_568_low))
kl3UC_6_btp<-c((kl3UC_6_488_base/kl3UC_6_568_base)/(kl3UC_6_488_peak/kl3UC_6_568_peak))

pHerry_kl3UC_6_base<-c(mean(kl3UC_6_488_base/kl3UC_6_568_base))               
pHerry_kl3UC_6_bpl<-c(mean(kl3UC_6_bpl))
pHerry_kl3UC_6_blp<-c(mean(kl3UC_6_blp))
pHerry_kl3UC_6_btl<-c(mean(kl3UC_6_btl))
pHerry_kl3UC_6_btp<-c(mean(kl3UC_6_btp))




a7<-c(kl3[,25])
b7<-c(kl3[,26])
c7<-c(kl3[,27])
d7<-c(kl3[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
kl3UC_eyedisc_7<-c(aa7/bb7)



kl3UC_7_488_base<-c(aa7[51:60])
kl3UC_7_488_low<-c(aa7[111:120])
kl3UC_7_488_peak<-c(aa7[76:85])

kl3UC_7_568_base<-c(bb7[51:60])
kl3UC_7_568_low<-c(bb7[111:120])
kl3UC_7_568_peak<-c(bb7[76:85])

kl3UC_7_bpl<-c((kl3UC_7_488_base/kl3UC_7_568_base)/((kl3UC_7_488_peak/kl3UC_7_568_peak)/(kl3UC_7_488_low/kl3UC_7_568_low)))
kl3UC_7_blp<-c((kl3UC_7_488_base/kl3UC_7_568_base)/((kl3UC_7_488_low/kl3UC_7_568_low)/(kl3UC_7_488_peak/kl3UC_7_568_peak)))
kl3UC_7_btl<-c((kl3UC_7_488_base/kl3UC_7_568_base)/(kl3UC_7_488_low/kl3UC_7_568_low))
kl3UC_7_btp<-c((kl3UC_7_488_base/kl3UC_7_568_base)/(kl3UC_7_488_peak/kl3UC_7_568_peak))

pHerry_kl3UC_7_base<-c(mean(kl3UC_7_488_base/kl3UC_7_568_base))               
pHerry_kl3UC_7_bpl<-c(mean(kl3UC_7_bpl))
pHerry_kl3UC_7_blp<-c(mean(kl3UC_7_blp))
pHerry_kl3UC_7_btl<-c(mean(kl3UC_7_btl))
pHerry_kl3UC_7_btp<-c(mean(kl3UC_7_btp))



a13<-c(kl3[,49])
b13<-c(kl3[,50])
c13<-c(kl3[,51])
d13<-c(kl3[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
kl3UC_eyedisc_13<-c(aa13/bb13)

kl3UC_13_488_base<-c(aa13[51:60])
kl3UC_13_488_low<-c(aa13[111:120])
kl3UC_13_488_peak<-c(aa13[76:85])

kl3UC_13_568_base<-c(bb13[51:60])
kl3UC_13_568_low<-c(bb13[111:120])
kl3UC_13_568_peak<-c(bb13[76:85])

kl3UC_13_bpl<-c((kl3UC_13_488_base/kl3UC_13_568_base)/((kl3UC_13_488_peak/kl3UC_13_568_peak)/(kl3UC_13_488_low/kl3UC_13_568_low)))
kl3UC_13_blp<-c((kl3UC_13_488_base/kl3UC_13_568_base)/((kl3UC_13_488_low/kl3UC_13_568_low)/(kl3UC_13_488_peak/kl3UC_13_568_peak)))
kl3UC_13_btl<-c((kl3UC_13_488_base/kl3UC_13_568_base)/(kl3UC_13_488_low/kl3UC_13_568_low))
kl3UC_13_btp<-c((kl3UC_13_488_base/kl3UC_13_568_base)/(kl3UC_13_488_peak/kl3UC_13_568_peak))

pHerry_kl3UC_13_base<-c(mean(kl3UC_13_488_base/kl3UC_13_568_base))               
pHerry_kl3UC_13_bpl<-c(mean(kl3UC_13_bpl))
pHerry_kl3UC_13_blp<-c(mean(kl3UC_13_blp))
pHerry_kl3UC_13_btl<-c(mean(kl3UC_13_btl))
pHerry_kl3UC_13_btp<-c(mean(kl3UC_13_btp))

a14<-c(kl3[,53])
b14<-c(kl3[,54])
c14<-c(kl3[,55])
d14<-c(kl3[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
kl3UC_eyedisc_14<-c(aa14/bb14)

kl3UC_14_488_base<-c(aa14[51:60])
kl3UC_14_488_low<-c(aa14[76:85])
kl3UC_14_488_peak<-c(aa14[111:120])

kl3UC_14_568_base<-c(bb14[51:60])
kl3UC_14_568_low<-c(bb14[76:85])
kl3UC_14_568_peak<-c(bb14[111:120])

kl3UC_14_bpl<-c((kl3UC_14_488_base/kl3UC_14_568_base)/((kl3UC_14_488_peak/kl3UC_14_568_peak)/(kl3UC_14_488_low/kl3UC_14_568_low)))
kl3UC_14_blp<-c((kl3UC_14_488_base/kl3UC_14_568_base)/((kl3UC_14_488_low/kl3UC_14_568_low)/(kl3UC_14_488_peak/kl3UC_14_568_peak)))
kl3UC_14_btl<-c((kl3UC_14_488_base/kl3UC_14_568_base)/(kl3UC_14_488_low/kl3UC_14_568_low))
kl3UC_14_btp<-c((kl3UC_14_488_base/kl3UC_14_568_base)/(kl3UC_14_488_peak/kl3UC_14_568_peak))

pHerry_kl3UC_14_base<-c(mean(kl3UC_14_488_base/kl3UC_14_568_base))               
pHerry_kl3UC_14_bpl<-c(mean(kl3UC_14_bpl))
pHerry_kl3UC_14_blp<-c(mean(kl3UC_14_blp))
pHerry_kl3UC_14_btl<-c(mean(kl3UC_14_btl))
pHerry_kl3UC_14_btp<-c(mean(kl3UC_14_btp))

a15<-c(kl3[,57])
b15<-c(kl3[,58])
c15<-c(kl3[,59])
d15<-c(kl3[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
kl3UC_eyedisc_15<-c(aa15/bb15)

kl3UC_15_488_base<-c(aa15[51:60])
kl3UC_15_488_low<-c(aa15[111:120])
kl3UC_15_488_peak<-c(aa15[76:85])

kl3UC_15_568_base<-c(bb15[51:60])
kl3UC_15_568_low<-c(bb15[111:120])
kl3UC_15_568_peak<-c(bb15[76:85])

kl3UC_15_bpl<-c((kl3UC_15_488_base/kl3UC_15_568_base)/((kl3UC_15_488_peak/kl3UC_15_568_peak)/(kl3UC_15_488_low/kl3UC_15_568_low)))
kl3UC_15_blp<-c((kl3UC_15_488_base/kl3UC_15_568_base)/((kl3UC_15_488_low/kl3UC_15_568_low)/(kl3UC_15_488_peak/kl3UC_15_568_peak)))
kl3UC_15_btl<-c((kl3UC_15_488_base/kl3UC_15_568_base)/(kl3UC_15_488_low/kl3UC_15_568_low))
kl3UC_15_btp<-c((kl3UC_15_488_base/kl3UC_15_568_base)/(kl3UC_15_488_peak/kl3UC_15_568_peak))

pHerry_kl3UC_15_base<-c(mean(kl3UC_15_488_base/kl3UC_15_568_base))               
pHerry_kl3UC_15_bpl<-c(mean(kl3UC_15_bpl))
pHerry_kl3UC_15_blp<-c(mean(kl3UC_15_blp))
pHerry_kl3UC_15_btl<-c(mean(kl3UC_15_btl))
pHerry_kl3UC_15_btp<-c(mean(kl3UC_15_btp))


a16<-c(kl3[,61])
b16<-c(kl3[,62])
c16<-c(kl3[,63])
d16<-c(kl3[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
kl3UC_eyedisc_16<-c(aa16/bb16)

kl3UC_16_488_base<-c(aa16[51:60])
kl3UC_16_488_low<-c(aa16[111:120])
kl3UC_16_488_peak<-c(aa16[76:85])

kl3UC_16_568_base<-c(bb16[51:60])
kl3UC_16_568_low<-c(bb16[111:120])
kl3UC_16_568_peak<-c(bb16[76:85])

kl3UC_16_bpl<-c((kl3UC_16_488_base/kl3UC_16_568_base)/((kl3UC_16_488_peak/kl3UC_16_568_peak)/(kl3UC_16_488_low/kl3UC_16_568_low)))
kl3UC_16_blp<-c((kl3UC_16_488_base/kl3UC_16_568_base)/((kl3UC_16_488_low/kl3UC_16_568_low)/(kl3UC_16_488_peak/kl3UC_16_568_peak)))
kl3UC_16_btl<-c((kl3UC_16_488_base/kl3UC_16_568_base)/(kl3UC_16_488_low/kl3UC_16_568_low))
kl3UC_16_btp<-c((kl3UC_16_488_base/kl3UC_16_568_base)/(kl3UC_16_488_peak/kl3UC_16_568_peak))

pHerry_kl3UC_16_base<-c(mean(kl3UC_16_488_base/kl3UC_16_568_base))               
pHerry_kl3UC_16_bpl<-c(mean(kl3UC_16_bpl))
pHerry_kl3UC_16_blp<-c(mean(kl3UC_16_blp))
pHerry_kl3UC_16_btl<-c(mean(kl3UC_16_btl))
pHerry_kl3UC_16_btp<-c(mean(kl3UC_16_btp))

a17<-c(kl3[,65])
b17<-c(kl3[,66])
c17<-c(kl3[,67])
d17<-c(kl3[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
kl3UC_eyedisc_17<-c(aa17/bb17)

kl3UC_17_488_base<-c(aa17[51:60])
kl3UC_17_488_low<-c(aa17[111:120])
kl3UC_17_488_peak<-c(aa17[76:85])

kl3UC_17_568_base<-c(bb17[51:60])
kl3UC_17_568_low<-c(bb17[111:120])
kl3UC_17_568_peak<-c(bb17[76:85])

kl3UC_17_bpl<-c((kl3UC_17_488_base/kl3UC_17_568_base)/((kl3UC_17_488_peak/kl3UC_17_568_peak)/(kl3UC_17_488_low/kl3UC_17_568_low)))
kl3UC_17_blp<-c((kl3UC_17_488_base/kl3UC_17_568_base)/((kl3UC_17_488_low/kl3UC_17_568_low)/(kl3UC_17_488_peak/kl3UC_17_568_peak)))
kl3UC_17_btl<-c((kl3UC_17_488_base/kl3UC_17_568_base)/(kl3UC_17_488_low/kl3UC_17_568_low))
kl3UC_17_btp<-c((kl3UC_17_488_base/kl3UC_17_568_base)/(kl3UC_17_488_peak/kl3UC_17_568_peak))

pHerry_kl3UC_17_base<-c(mean(kl3UC_17_488_base/kl3UC_17_568_base))               
pHerry_kl3UC_17_bpl<-c(mean(kl3UC_17_bpl))
pHerry_kl3UC_17_blp<-c(mean(kl3UC_17_blp))
pHerry_kl3UC_17_btl<-c(mean(kl3UC_17_btl))
pHerry_kl3UC_17_btp<-c(mean(kl3UC_17_btp))



pHerry_kl3UC_time_course<-c(kl3UC_eyedisc_1,kl3UC_eyedisc_2,kl3UC_eyedisc_3,kl3UC_eyedisc_4,kl3UC_eyedisc_5,kl3UC_eyedisc_6,kl3UC_eyedisc_7,kl3UC_eyedisc_13,kl3UC_eyedisc_14,kl3UC_eyedisc_15,kl3UC_eyedisc_16,kl3UC_eyedisc_17)
matpHerry_kl3UC_time_course<-matrix(pHerry_kl3UC_time_course,nrow=120,ncol=15)
mean_pHerry_kl3UC_time_course<-c(rowMeans(matpHerry_kl3UC_time_course))

pHerry_kl3UC_bpl<-c(pHerry_kl3UC_1_bpl,pHerry_kl3UC_2_bpl,pHerry_kl3UC_3_bpl,pHerry_kl3UC_4_bpl,pHerry_kl3UC_5_bpl,pHerry_kl3UC_6_bpl,pHerry_kl3UC_7_bpl,pHerry_kl3UC_13_bpl,pHerry_kl3UC_14_bpl,pHerry_kl3UC_15_bpl,pHerry_kl3UC_16_bpl,pHerry_kl3UC_17_bpl)
pHerry_kl3UC_blp<-c(pHerry_kl3UC_1_blp,pHerry_kl3UC_2_blp,pHerry_kl3UC_3_blp,pHerry_kl3UC_4_blp,pHerry_kl3UC_5_blp,pHerry_kl3UC_6_blp,pHerry_kl3UC_7_blp,pHerry_kl3UC_13_blp,pHerry_kl3UC_14_blp,pHerry_kl3UC_15_blp,pHerry_kl3UC_16_blp,pHerry_kl3UC_17_blp)
pHerry_kl3UC_btp<-c(pHerry_kl3UC_1_btp,pHerry_kl3UC_2_btp,pHerry_kl3UC_3_btp,pHerry_kl3UC_4_btp,pHerry_kl3UC_5_btp,pHerry_kl3UC_6_btp,pHerry_kl3UC_7_btp,pHerry_kl3UC_13_btp,pHerry_kl3UC_14_btp,pHerry_kl3UC_15_btp,pHerry_kl3UC_16_btp,pHerry_kl3UC_17_btp)
pHerry_kl3UC_btl<-c(pHerry_kl3UC_1_btl,pHerry_kl3UC_2_btl,pHerry_kl3UC_3_btl,pHerry_kl3UC_4_btl,pHerry_kl3UC_5_btl,pHerry_kl3UC_6_btl,pHerry_kl3UC_7_btl,pHerry_kl3UC_13_btl,pHerry_kl3UC_14_btl,pHerry_kl3UC_15_btl,pHerry_kl3UC_16_btl,pHerry_kl3UC_17_btl)
pHerry_kl3UC_base<-c(pHerry_kl3UC_1_base,pHerry_kl3UC_2_base,pHerry_kl3UC_3_base,pHerry_kl3UC_4_base,pHerry_kl3UC_5_base,pHerry_kl3UC_6_base,pHerry_kl3UC_7_base,pHerry_kl3UC_13_base,pHerry_kl3UC_14_base,pHerry_kl3UC_15_base,pHerry_kl3UC_16_base,pHerry_kl3UC_17_base)
