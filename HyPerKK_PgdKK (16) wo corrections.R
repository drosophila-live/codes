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

a14<-c(Pgd[,53])
b14<-c(Pgd[,54])
c14<-c(Pgd[,55])
d14<-c(Pgd[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
PgdUC_eyedisc_14<-c(bb14/aa14)

PgdUC_14_568_base<-c(bb14[51:60])
PgdUC_14_568_peak<-c(bb14[85:94])
PgdUC_14_568_low<-c(bb14[141:150])

PgdUC_14_488_base<-c(aa14[51:60])
PgdUC_14_488_peak<-c(aa14[85:94])
PgdUC_14_488_low<-c(aa14[141:150])

PgdUC_14_blp<-c((PgdUC_14_568_base/PgdUC_14_488_base)/((PgdUC_14_568_low/PgdUC_14_488_low)/(PgdUC_14_568_peak/PgdUC_14_488_peak)))
PgdUC_14_bpl<-c((PgdUC_14_568_base/PgdUC_14_488_base)/((PgdUC_14_568_peak/PgdUC_14_488_peak)/(PgdUC_14_568_low/PgdUC_14_488_low)))
PgdUC_14_btp<-c((PgdUC_14_568_base/PgdUC_14_488_base)/(PgdUC_14_568_peak/PgdUC_14_488_peak))
PgdUC_14_btl<-c((PgdUC_14_568_base/PgdUC_14_488_base)/(PgdUC_14_568_low/PgdUC_14_488_low))

HyPer_PgdUC_14_base<-c(mean(PgdUC_14_568_base/PgdUC_14_488_base))               
HyPer_PgdUC_14_blp<-c(mean(PgdUC_14_blp))
HyPer_PgdUC_14_bpl<-c(mean(PgdUC_14_bpl))
HyPer_PgdUC_14_btp<-c(mean(PgdUC_14_btp))
HyPer_PgdUC_14_btl<-c(mean(PgdUC_14_btl))

a15<-c(Pgd[,57])
b15<-c(Pgd[,58])
c15<-c(Pgd[,59])
d15<-c(Pgd[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
PgdUC_eyedisc_15<-c(bb15/aa15)

PgdUC_15_568_base<-c(bb15[51:60])
PgdUC_15_568_peak<-c(bb15[85:94])
PgdUC_15_568_low<-c(bb15[141:150])

PgdUC_15_488_base<-c(aa15[51:60])
PgdUC_15_488_peak<-c(aa15[85:94])
PgdUC_15_488_low<-c(aa15[141:150])

PgdUC_15_blp<-c((PgdUC_15_568_base/PgdUC_15_488_base)/((PgdUC_15_568_low/PgdUC_15_488_low)/(PgdUC_15_568_peak/PgdUC_15_488_peak)))
PgdUC_15_bpl<-c((PgdUC_15_568_base/PgdUC_15_488_base)/((PgdUC_15_568_peak/PgdUC_15_488_peak)/(PgdUC_15_568_low/PgdUC_15_488_low)))
PgdUC_15_btp<-c((PgdUC_15_568_base/PgdUC_15_488_base)/(PgdUC_15_568_peak/PgdUC_15_488_peak))
PgdUC_15_btl<-c((PgdUC_15_568_base/PgdUC_15_488_base)/(PgdUC_15_568_low/PgdUC_15_488_low))

HyPer_PgdUC_15_base<-c(mean(PgdUC_15_568_base/PgdUC_15_488_base))               
HyPer_PgdUC_15_blp<-c(mean(PgdUC_15_blp))
HyPer_PgdUC_15_bpl<-c(mean(PgdUC_15_bpl))
HyPer_PgdUC_15_btp<-c(mean(PgdUC_15_btp))
HyPer_PgdUC_15_btl<-c(mean(PgdUC_15_btl))

a16<-c(Pgd[,61])
b16<-c(Pgd[,62])
c16<-c(Pgd[,63])
d16<-c(Pgd[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
PgdUC_eyedisc_16<-c(bb16/aa16)

PgdUC_16_568_base<-c(bb16[51:60])
PgdUC_16_568_peak<-c(bb16[85:94])
PgdUC_16_568_low<-c(bb16[141:150])

PgdUC_16_488_base<-c(aa16[51:60])
PgdUC_16_488_peak<-c(aa16[85:94])
PgdUC_16_488_low<-c(aa16[141:150])

PgdUC_16_blp<-c((PgdUC_16_568_base/PgdUC_16_488_base)/((PgdUC_16_568_low/PgdUC_16_488_low)/(PgdUC_16_568_peak/PgdUC_16_488_peak)))
PgdUC_16_bpl<-c((PgdUC_16_568_base/PgdUC_16_488_base)/((PgdUC_16_568_peak/PgdUC_16_488_peak)/(PgdUC_16_568_low/PgdUC_16_488_low)))
PgdUC_16_btp<-c((PgdUC_16_568_base/PgdUC_16_488_base)/(PgdUC_16_568_peak/PgdUC_16_488_peak))
PgdUC_16_btl<-c((PgdUC_16_568_base/PgdUC_16_488_base)/(PgdUC_16_568_low/PgdUC_16_488_low))

HyPer_PgdUC_16_base<-c(mean(PgdUC_16_568_base/PgdUC_16_488_base)) 
HyPer_PgdUC_16_blp<-c(mean(PgdUC_16_blp))
HyPer_PgdUC_16_bpl<-c(mean(PgdUC_16_bpl))
HyPer_PgdUC_16_btp<-c(mean(PgdUC_16_btp))
HyPer_PgdUC_16_btl<-c(mean(PgdUC_16_btl))

a17<-c(Pgd[,65])
b17<-c(Pgd[,66])
c17<-c(Pgd[,67])
d17<-c(Pgd[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
PgdUC_eyedisc_17<-c(bb17/aa17)

PgdUC_17_568_base<-c(bb17[51:60])
PgdUC_17_568_peak<-c(bb17[85:94])
PgdUC_17_568_low<-c(bb17[141:150])

PgdUC_17_488_base<-c(aa17[51:60])
PgdUC_17_488_peak<-c(aa17[85:94])
PgdUC_17_488_low<-c(aa17[141:150])

PgdUC_17_blp<-c((PgdUC_17_568_base/PgdUC_17_488_base)/((PgdUC_17_568_low/PgdUC_17_488_low)/(PgdUC_17_568_peak/PgdUC_17_488_peak)))
PgdUC_17_bpl<-c((PgdUC_17_568_base/PgdUC_17_488_base)/((PgdUC_17_568_peak/PgdUC_17_488_peak)/(PgdUC_17_568_low/PgdUC_17_488_low)))
PgdUC_17_btp<-c((PgdUC_17_568_base/PgdUC_17_488_base)/(PgdUC_17_568_peak/PgdUC_17_488_peak))
PgdUC_17_btl<-c((PgdUC_17_568_base/PgdUC_17_488_base)/(PgdUC_17_568_low/PgdUC_17_488_low))

HyPer_PgdUC_17_base<-c(mean(PgdUC_17_568_base/PgdUC_17_488_base)) 
HyPer_PgdUC_17_blp<-c(mean(PgdUC_17_blp))
HyPer_PgdUC_17_bpl<-c(mean(PgdUC_17_bpl))
HyPer_PgdUC_17_btp<-c(mean(PgdUC_17_btp))
HyPer_PgdUC_17_btl<-c(mean(PgdUC_17_btl))

a18<-c(Pgd[,69])
b18<-c(Pgd[,70])
c18<-c(Pgd[,71])
d18<-c(Pgd[,72])
aa18<-c(a18-b18)
bb18<-c(c18-d18)
PgdUC_eyedisc_18<-c(bb18/aa18)

PgdUC_18_568_base<-c(bb18[51:60])
PgdUC_18_568_peak<-c(bb18[85:94])
PgdUC_18_568_low<-c(bb18[141:150])

PgdUC_18_488_base<-c(aa18[51:60])
PgdUC_18_488_peak<-c(aa18[85:94])
PgdUC_18_488_low<-c(aa18[141:150])

PgdUC_18_blp<-c((PgdUC_18_568_base/PgdUC_18_488_base)/((PgdUC_18_568_low/PgdUC_18_488_low)/(PgdUC_18_568_peak/PgdUC_18_488_peak)))
PgdUC_18_bpl<-c((PgdUC_18_568_base/PgdUC_18_488_base)/((PgdUC_18_568_peak/PgdUC_18_488_peak)/(PgdUC_18_568_low/PgdUC_18_488_low)))
PgdUC_18_btp<-c((PgdUC_18_568_base/PgdUC_18_488_base)/(PgdUC_18_568_peak/PgdUC_18_488_peak))
PgdUC_18_btl<-c((PgdUC_18_568_base/PgdUC_18_488_base)/(PgdUC_18_568_low/PgdUC_18_488_low))

HyPer_PgdUC_18_base<-c(mean(PgdUC_18_568_base/PgdUC_18_488_base)) 
HyPer_PgdUC_18_blp<-c(mean(PgdUC_18_blp))
HyPer_PgdUC_18_bpl<-c(mean(PgdUC_18_bpl))
HyPer_PgdUC_18_btp<-c(mean(PgdUC_18_btp))
HyPer_PgdUC_18_btl<-c(mean(PgdUC_18_btl))

a19<-c(Pgd[,73])
b19<-c(Pgd[,74])
c19<-c(Pgd[,75])
d19<-c(Pgd[,76])
aa19<-c(a19-b19)
bb19<-c(c19-d19)
PgdUC_eyedisc_19<-c(bb19/aa19)

PgdUC_19_568_base<-c(bb19[51:60])
PgdUC_19_568_peak<-c(bb19[85:94])
PgdUC_19_568_low<-c(bb19[141:150])

PgdUC_19_488_base<-c(aa19[51:60])
PgdUC_19_488_peak<-c(aa19[85:94])
PgdUC_19_488_low<-c(aa19[141:150])

PgdUC_19_blp<-c((PgdUC_19_568_base/PgdUC_19_488_base)/((PgdUC_19_568_low/PgdUC_19_488_low)/(PgdUC_19_568_peak/PgdUC_19_488_peak)))
PgdUC_19_bpl<-c((PgdUC_19_568_base/PgdUC_19_488_base)/((PgdUC_19_568_peak/PgdUC_19_488_peak)/(PgdUC_19_568_low/PgdUC_19_488_low)))
PgdUC_19_btp<-c((PgdUC_19_568_base/PgdUC_19_488_base)/(PgdUC_19_568_peak/PgdUC_19_488_peak))
PgdUC_19_btl<-c((PgdUC_19_568_base/PgdUC_19_488_base)/(PgdUC_19_568_low/PgdUC_19_488_low))

HyPer_PgdUC_19_base<-c(mean(PgdUC_19_568_base/PgdUC_19_488_base)) 
HyPer_PgdUC_19_blp<-c(mean(PgdUC_19_blp))
HyPer_PgdUC_19_bpl<-c(mean(PgdUC_19_bpl))
HyPer_PgdUC_19_btp<-c(mean(PgdUC_19_btp))
HyPer_PgdUC_19_btl<-c(mean(PgdUC_19_btl))

a20<-c(Pgd[,77])
b20<-c(Pgd[,78])
c20<-c(Pgd[,79])
d20<-c(Pgd[,80])
aa20<-c(a20-b20)
bb20<-c(c20-d20)
PgdUC_eyedisc_20<-c(bb20/aa20)

PgdUC_20_568_base<-c(bb20[51:60])
PgdUC_20_568_peak<-c(bb20[85:94])
PgdUC_20_568_low<-c(bb20[141:150])

PgdUC_20_488_base<-c(aa20[51:60])
PgdUC_20_488_peak<-c(aa20[85:94])
PgdUC_20_488_low<-c(aa20[141:150])

PgdUC_20_blp<-c((PgdUC_20_568_base/PgdUC_20_488_base)/((PgdUC_20_568_low/PgdUC_20_488_low)/(PgdUC_20_568_peak/PgdUC_20_488_peak)))
PgdUC_20_bpl<-c((PgdUC_20_568_base/PgdUC_20_488_base)/((PgdUC_20_568_peak/PgdUC_20_488_peak)/(PgdUC_20_568_low/PgdUC_20_488_low)))
PgdUC_20_btp<-c((PgdUC_20_568_base/PgdUC_20_488_base)/(PgdUC_20_568_peak/PgdUC_20_488_peak))
PgdUC_20_btl<-c((PgdUC_20_568_base/PgdUC_20_488_base)/(PgdUC_20_568_low/PgdUC_20_488_low))

HyPer_PgdUC_20_base<-c(mean(PgdUC_20_568_base/PgdUC_20_488_base)) 
HyPer_PgdUC_20_blp<-c(mean(PgdUC_20_blp))
HyPer_PgdUC_20_bpl<-c(mean(PgdUC_20_bpl))
HyPer_PgdUC_20_btp<-c(mean(PgdUC_20_btp))
HyPer_PgdUC_20_btl<-c(mean(PgdUC_20_btl))

a21<-c(Pgd[,81])
b21<-c(Pgd[,82])
c21<-c(Pgd[,83])
d21<-c(Pgd[,84])
aa21<-c(a21-b21)
bb21<-c(c21-d21)
PgdUC_eyedisc_21<-c(bb21/aa21)

PgdUC_21_568_base<-c(bb21[51:60])
PgdUC_21_568_peak<-c(bb21[85:94])
PgdUC_21_568_low<-c(bb21[141:150])

PgdUC_21_488_base<-c(aa21[51:60])
PgdUC_21_488_peak<-c(aa21[85:94])
PgdUC_21_488_low<-c(aa21[141:150])

PgdUC_21_blp<-c((PgdUC_21_568_base/PgdUC_21_488_base)/((PgdUC_21_568_low/PgdUC_21_488_low)/(PgdUC_21_568_peak/PgdUC_21_488_peak)))
PgdUC_21_bpl<-c((PgdUC_21_568_base/PgdUC_21_488_base)/((PgdUC_21_568_peak/PgdUC_21_488_peak)/(PgdUC_21_568_low/PgdUC_21_488_low)))
PgdUC_21_btp<-c((PgdUC_21_568_base/PgdUC_21_488_base)/(PgdUC_21_568_peak/PgdUC_21_488_peak))
PgdUC_21_btl<-c((PgdUC_21_568_base/PgdUC_21_488_base)/(PgdUC_21_568_low/PgdUC_21_488_low))

HyPer_PgdUC_21_base<-c(mean(PgdUC_21_568_base/PgdUC_21_488_base)) 
HyPer_PgdUC_21_blp<-c(mean(PgdUC_21_blp))
HyPer_PgdUC_21_bpl<-c(mean(PgdUC_21_bpl))
HyPer_PgdUC_21_btp<-c(mean(PgdUC_21_btp))
HyPer_PgdUC_21_btl<-c(mean(PgdUC_21_btl))

HyPer_PgdUC_time_course<-c(PgdUC_eyedisc_1,PgdUC_eyedisc_2,PgdUC_eyedisc_3,PgdUC_eyedisc_4,PgdUC_eyedisc_5,PgdUC_eyedisc_6,PgdUC_eyedisc_12,PgdUC_eyedisc_13,PgdUC_eyedisc_14,PgdUC_eyedisc_15,PgdUC_eyedisc_16,PgdUC_eyedisc_17,PgdUC_eyedisc_18,PgdUC_eyedisc_19,PgdUC_eyedisc_20,PgdUC_eyedisc_21)
matHyPer_PgdUC_time_course<-matrix(HyPer_PgdUC_time_course,nrow=150,ncol=16)
mean_HyPer_PgdUC_time_course<-c(rowMeans(matHyPer_PgdUC_time_course))

HyPer_PgdUC_blp<-c(HyPer_PgdUC_1_blp,HyPer_PgdUC_2_blp,HyPer_PgdUC_3_blp,HyPer_PgdUC_4_blp,HyPer_PgdUC_5_blp,HyPer_PgdUC_6_blp,HyPer_PgdUC_12_blp,HyPer_PgdUC_13_blp,HyPer_PgdUC_14_blp,HyPer_PgdUC_15_blp,HyPer_PgdUC_16_blp,HyPer_PgdUC_17_blp,HyPer_PgdUC_18_blp,HyPer_PgdUC_19_blp,HyPer_PgdUC_20_blp,HyPer_PgdUC_21_blp)
HyPer_PgdUC_bpl<-c(HyPer_PgdUC_1_bpl,HyPer_PgdUC_2_bpl,HyPer_PgdUC_3_bpl,HyPer_PgdUC_4_bpl,HyPer_PgdUC_5_bpl,HyPer_PgdUC_6_bpl,HyPer_PgdUC_12_bpl,HyPer_PgdUC_13_bpl,HyPer_PgdUC_14_bpl,HyPer_PgdUC_15_bpl,HyPer_PgdUC_16_bpl,HyPer_PgdUC_17_bpl,HyPer_PgdUC_18_bpl,HyPer_PgdUC_19_bpl,HyPer_PgdUC_20_bpl,HyPer_PgdUC_21_bpl)
HyPer_PgdUC_btl<-c(HyPer_PgdUC_1_btl,HyPer_PgdUC_2_btl,HyPer_PgdUC_3_btl,HyPer_PgdUC_4_btl,HyPer_PgdUC_5_btl,HyPer_PgdUC_6_btl,HyPer_PgdUC_12_btl,HyPer_PgdUC_13_btl,HyPer_PgdUC_14_btl,HyPer_PgdUC_15_btl,HyPer_PgdUC_16_btl,HyPer_PgdUC_17_btl,HyPer_PgdUC_18_btl,HyPer_PgdUC_19_btl,HyPer_PgdUC_20_btl,HyPer_PgdUC_21_btl)
HyPer_PgdUC_btp<-c(HyPer_PgdUC_1_btp,HyPer_PgdUC_2_btp,HyPer_PgdUC_3_btp,HyPer_PgdUC_4_btp,HyPer_PgdUC_5_btp,HyPer_PgdUC_6_btp,HyPer_PgdUC_12_btp,HyPer_PgdUC_13_btp,HyPer_PgdUC_14_btp,HyPer_PgdUC_15_btp,HyPer_PgdUC_16_btp,HyPer_PgdUC_17_btp,HyPer_PgdUC_18_btp,HyPer_PgdUC_19_btp,HyPer_PgdUC_20_btp,HyPer_PgdUC_21_btp)
HyPer_PgdUC_base<-c(HyPer_PgdUC_1_base,HyPer_PgdUC_2_base,HyPer_PgdUC_3_base,HyPer_PgdUC_4_base,HyPer_PgdUC_5_base,HyPer_PgdUC_6_base,HyPer_PgdUC_12_base,HyPer_PgdUC_13_base,HyPer_PgdUC_14_base,HyPer_PgdUC_15_base,HyPer_PgdUC_16_base,HyPer_PgdUC_17_base,HyPer_PgdUC_18_base,HyPer_PgdUC_19_base,HyPer_PgdUC_20_base,HyPer_PgdUC_21_base)


