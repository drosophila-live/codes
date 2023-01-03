a1<-c(G6Pdh[,1])
b1<-c(G6Pdh[,2])
c1<-c(G6Pdh[,3])
d1<-c(G6Pdh[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
G6PdhUC_eyedisc_1<-c(bb1/aa1)

G6PdhUC_1_568_base<-c(bb1[51:60])
G6PdhUC_1_568_peak<-c(bb1[85:94])
G6PdhUC_1_568_low<-c(bb1[141:150])

G6PdhUC_1_488_base<-c(aa1[51:60])
G6PdhUC_1_488_peak<-c(aa1[85:94])
G6PdhUC_1_488_low<-c(aa1[141:150])

G6PdhUC_1_blp<-c((G6PdhUC_1_568_base/G6PdhUC_1_488_base)/((G6PdhUC_1_568_low/G6PdhUC_1_488_low)/(G6PdhUC_1_568_peak/G6PdhUC_1_488_peak)))
G6PdhUC_1_bpl<-c((G6PdhUC_1_568_base/G6PdhUC_1_488_base)/((G6PdhUC_1_568_peak/G6PdhUC_1_488_peak)/(G6PdhUC_1_568_low/G6PdhUC_1_488_low)))
G6PdhUC_1_btp<-c((G6PdhUC_1_568_base/G6PdhUC_1_488_base)/(G6PdhUC_1_568_peak/G6PdhUC_1_488_peak))
G6PdhUC_1_btl<-c((G6PdhUC_1_568_base/G6PdhUC_1_488_base)/(G6PdhUC_1_568_low/G6PdhUC_1_488_low))

HyPer_G6PdhUC_1_base<-c(mean(G6PdhUC_1_568_base/G6PdhUC_1_488_base))               
HyPer_G6PdhUC_1_blp<-c(mean(G6PdhUC_1_blp))
HyPer_G6PdhUC_1_bpl<-c(mean(G6PdhUC_1_bpl))
HyPer_G6PdhUC_1_btp<-c(mean(G6PdhUC_1_btp))
HyPer_G6PdhUC_1_btl<-c(mean(G6PdhUC_1_btl))


a2<-c(G6Pdh[,5])
b2<-c(G6Pdh[,6])
c2<-c(G6Pdh[,7])
d2<-c(G6Pdh[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
G6PdhUC_eyedisc_2<-c(bb2/aa2)



G6PdhUC_2_568_base<-c(bb2[51:60])
G6PdhUC_2_568_peak<-c(bb2[85:94])
G6PdhUC_2_568_low<-c(bb2[141:150])

G6PdhUC_2_488_base<-c(aa2[51:60])
G6PdhUC_2_488_peak<-c(aa2[85:94])
G6PdhUC_2_488_low<-c(aa2[141:150])

G6PdhUC_2_blp<-c((G6PdhUC_2_568_base/G6PdhUC_2_488_base)/((G6PdhUC_2_568_low/G6PdhUC_2_488_low)/(G6PdhUC_2_568_peak/G6PdhUC_2_488_peak)))
G6PdhUC_2_bpl<-c((G6PdhUC_2_568_base/G6PdhUC_2_488_base)/((G6PdhUC_2_568_peak/G6PdhUC_2_488_peak)/(G6PdhUC_2_568_low/G6PdhUC_2_488_low)))
G6PdhUC_2_btp<-c((G6PdhUC_2_568_base/G6PdhUC_2_488_base)/(G6PdhUC_2_568_peak/G6PdhUC_2_488_peak))
G6PdhUC_2_btl<-c((G6PdhUC_2_568_base/G6PdhUC_2_488_base)/(G6PdhUC_2_568_low/G6PdhUC_2_488_low))

HyPer_G6PdhUC_2_base<-c(mean(G6PdhUC_2_568_base/G6PdhUC_2_488_base))               
HyPer_G6PdhUC_2_blp<-c(mean(G6PdhUC_2_blp))
HyPer_G6PdhUC_2_bpl<-c(mean(G6PdhUC_2_bpl))
HyPer_G6PdhUC_2_btp<-c(mean(G6PdhUC_2_btp))
HyPer_G6PdhUC_2_btl<-c(mean(G6PdhUC_2_btl))



a3<-c(G6Pdh[,9])
b3<-c(G6Pdh[,10])
c3<-c(G6Pdh[,11])
d3<-c(G6Pdh[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
G6PdhUC_eyedisc_3<-c(bb3/aa3)


G6PdhUC_3_568_base<-c(bb3[51:60])
G6PdhUC_3_568_peak<-c(bb3[85:94])
G6PdhUC_3_568_low<-c(bb3[141:150])

G6PdhUC_3_488_base<-c(aa3[51:60])
G6PdhUC_3_488_peak<-c(aa3[85:94])
G6PdhUC_3_488_low<-c(aa3[141:150])

G6PdhUC_3_blp<-c((G6PdhUC_3_568_base/G6PdhUC_3_488_base)/((G6PdhUC_3_568_low/G6PdhUC_3_488_low)/(G6PdhUC_3_568_peak/G6PdhUC_3_488_peak)))
G6PdhUC_3_bpl<-c((G6PdhUC_3_568_base/G6PdhUC_3_488_base)/((G6PdhUC_3_568_peak/G6PdhUC_3_488_peak)/(G6PdhUC_3_568_low/G6PdhUC_3_488_low)))
G6PdhUC_3_btp<-c((G6PdhUC_3_568_base/G6PdhUC_3_488_base)/(G6PdhUC_3_568_peak/G6PdhUC_3_488_peak))
G6PdhUC_3_btl<-c((G6PdhUC_3_568_base/G6PdhUC_3_488_base)/(G6PdhUC_3_568_low/G6PdhUC_3_488_low))

HyPer_G6PdhUC_3_base<-c(mean(G6PdhUC_3_568_base/G6PdhUC_3_488_base))               
HyPer_G6PdhUC_3_blp<-c(mean(G6PdhUC_3_blp))
HyPer_G6PdhUC_3_bpl<-c(mean(G6PdhUC_3_bpl))
HyPer_G6PdhUC_3_btp<-c(mean(G6PdhUC_3_btp))
HyPer_G6PdhUC_3_btl<-c(mean(G6PdhUC_3_btl))


a4<-c(G6Pdh[,13])
b4<-c(G6Pdh[,14])
c4<-c(G6Pdh[,15])
d4<-c(G6Pdh[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
G6PdhUC_eyedisc_4<-c(bb4/aa4)



G6PdhUC_4_568_base<-c(bb4[51:60])
G6PdhUC_4_568_peak<-c(bb4[85:94])
G6PdhUC_4_568_low<-c(bb4[141:150])

G6PdhUC_4_488_base<-c(aa4[51:60])
G6PdhUC_4_488_peak<-c(aa4[85:94])
G6PdhUC_4_488_low<-c(aa4[141:150])

G6PdhUC_4_blp<-c((G6PdhUC_4_568_base/G6PdhUC_4_488_base)/((G6PdhUC_4_568_low/G6PdhUC_4_488_low)/(G6PdhUC_4_568_peak/G6PdhUC_4_488_peak)))
G6PdhUC_4_bpl<-c((G6PdhUC_4_568_base/G6PdhUC_4_488_base)/((G6PdhUC_4_568_peak/G6PdhUC_4_488_peak)/(G6PdhUC_4_568_low/G6PdhUC_4_488_low)))
G6PdhUC_4_btp<-c((G6PdhUC_4_568_base/G6PdhUC_4_488_base)/(G6PdhUC_4_568_peak/G6PdhUC_4_488_peak))
G6PdhUC_4_btl<-c((G6PdhUC_4_568_base/G6PdhUC_4_488_base)/(G6PdhUC_4_568_low/G6PdhUC_4_488_low))

HyPer_G6PdhUC_4_base<-c(mean(G6PdhUC_4_568_base/G6PdhUC_4_488_base))               
HyPer_G6PdhUC_4_blp<-c(mean(G6PdhUC_4_blp))
HyPer_G6PdhUC_4_bpl<-c(mean(G6PdhUC_4_bpl))
HyPer_G6PdhUC_4_btp<-c(mean(G6PdhUC_4_btp))
HyPer_G6PdhUC_4_btl<-c(mean(G6PdhUC_4_btl))


a5<-c(G6Pdh[,17])
b5<-c(G6Pdh[,18])
c5<-c(G6Pdh[,19])
d5<-c(G6Pdh[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
G6PdhUC_eyedisc_5<-c(bb5/aa5)



G6PdhUC_5_568_base<-c(bb5[51:60])
G6PdhUC_5_568_peak<-c(bb5[85:94])
G6PdhUC_5_568_low<-c(bb5[141:150])

G6PdhUC_5_488_base<-c(aa5[51:60])
G6PdhUC_5_488_peak<-c(aa5[85:94])
G6PdhUC_5_488_low<-c(aa5[141:150])

G6PdhUC_5_blp<-c((G6PdhUC_5_568_base/G6PdhUC_5_488_base)/((G6PdhUC_5_568_low/G6PdhUC_5_488_low)/(G6PdhUC_5_568_peak/G6PdhUC_5_488_peak)))
G6PdhUC_5_bpl<-c((G6PdhUC_5_568_base/G6PdhUC_5_488_base)/((G6PdhUC_5_568_peak/G6PdhUC_5_488_peak)/(G6PdhUC_5_568_low/G6PdhUC_5_488_low)))
G6PdhUC_5_btp<-c((G6PdhUC_5_568_base/G6PdhUC_5_488_base)/(G6PdhUC_5_568_peak/G6PdhUC_5_488_peak))
G6PdhUC_5_btl<-c((G6PdhUC_5_568_base/G6PdhUC_5_488_base)/(G6PdhUC_5_568_low/G6PdhUC_5_488_low))

HyPer_G6PdhUC_5_base<-c(mean(G6PdhUC_5_568_base/G6PdhUC_5_488_base))               
HyPer_G6PdhUC_5_blp<-c(mean(G6PdhUC_5_blp))
HyPer_G6PdhUC_5_bpl<-c(mean(G6PdhUC_5_bpl))
HyPer_G6PdhUC_5_btp<-c(mean(G6PdhUC_5_btp))
HyPer_G6PdhUC_5_btl<-c(mean(G6PdhUC_5_btl))


a6<-c(G6Pdh[,21])
b6<-c(G6Pdh[,22])
c6<-c(G6Pdh[,23])
d6<-c(G6Pdh[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
G6PdhUC_eyedisc_6<-c(bb6/aa6)

G6PdhUC_6_568_base<-c(bb6[51:60])
G6PdhUC_6_568_peak<-c(bb6[85:94])
G6PdhUC_6_568_low<-c(bb6[141:150])

G6PdhUC_6_488_base<-c(aa6[51:60])
G6PdhUC_6_488_peak<-c(aa6[85:94])
G6PdhUC_6_488_low<-c(aa6[141:150])

G6PdhUC_6_blp<-c((G6PdhUC_6_568_base/G6PdhUC_6_488_base)/((G6PdhUC_6_568_low/G6PdhUC_6_488_low)/(G6PdhUC_6_568_peak/G6PdhUC_6_488_peak)))
G6PdhUC_6_bpl<-c((G6PdhUC_6_568_base/G6PdhUC_6_488_base)/((G6PdhUC_6_568_peak/G6PdhUC_6_488_peak)/(G6PdhUC_6_568_low/G6PdhUC_6_488_low)))
G6PdhUC_6_btp<-c((G6PdhUC_6_568_base/G6PdhUC_6_488_base)/(G6PdhUC_6_568_peak/G6PdhUC_6_488_peak))
G6PdhUC_6_btl<-c((G6PdhUC_6_568_base/G6PdhUC_6_488_base)/(G6PdhUC_6_568_low/G6PdhUC_6_488_low))

HyPer_G6PdhUC_6_base<-c(mean(G6PdhUC_6_568_base/G6PdhUC_6_488_base))               
HyPer_G6PdhUC_6_blp<-c(mean(G6PdhUC_6_blp))
HyPer_G6PdhUC_6_bpl<-c(mean(G6PdhUC_6_bpl))
HyPer_G6PdhUC_6_btp<-c(mean(G6PdhUC_6_btp))
HyPer_G6PdhUC_6_btl<-c(mean(G6PdhUC_6_btl))




a7<-c(G6Pdh[,25])
b7<-c(G6Pdh[,26])
c7<-c(G6Pdh[,27])
d7<-c(G6Pdh[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
G6PdhUC_eyedisc_7<-c(bb7/aa7)



G6PdhUC_7_568_base<-c(bb7[51:60])
G6PdhUC_7_568_peak<-c(bb7[85:94])
G6PdhUC_7_568_low<-c(bb7[141:150])

G6PdhUC_7_488_base<-c(aa7[51:60])
G6PdhUC_7_488_peak<-c(aa7[85:94])
G6PdhUC_7_488_low<-c(aa7[141:150])

G6PdhUC_7_blp<-c((G6PdhUC_7_568_base/G6PdhUC_7_488_base)/((G6PdhUC_7_568_low/G6PdhUC_7_488_low)/(G6PdhUC_7_568_peak/G6PdhUC_7_488_peak)))
G6PdhUC_7_bpl<-c((G6PdhUC_7_568_base/G6PdhUC_7_488_base)/((G6PdhUC_7_568_peak/G6PdhUC_7_488_peak)/(G6PdhUC_7_568_low/G6PdhUC_7_488_low)))
G6PdhUC_7_btp<-c((G6PdhUC_7_568_base/G6PdhUC_7_488_base)/(G6PdhUC_7_568_peak/G6PdhUC_7_488_peak))
G6PdhUC_7_btl<-c((G6PdhUC_7_568_base/G6PdhUC_7_488_base)/(G6PdhUC_7_568_low/G6PdhUC_7_488_low))

HyPer_G6PdhUC_7_base<-c(mean(G6PdhUC_7_568_base/G6PdhUC_7_488_base))               
HyPer_G6PdhUC_7_blp<-c(mean(G6PdhUC_7_blp))
HyPer_G6PdhUC_7_bpl<-c(mean(G6PdhUC_7_bpl))
HyPer_G6PdhUC_7_btp<-c(mean(G6PdhUC_7_btp))
HyPer_G6PdhUC_7_btl<-c(mean(G6PdhUC_7_btl))



a9<-c(G6Pdh[,33])
b9<-c(G6Pdh[,34])
c9<-c(G6Pdh[,35])
d9<-c(G6Pdh[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
G6PdhUC_eyedisc_9<-c(bb9/aa9)

G6PdhUC_9_568_base<-c(bb9[51:60])
G6PdhUC_9_568_peak<-c(bb9[85:94])
G6PdhUC_9_568_low<-c(bb9[141:150])

G6PdhUC_9_488_base<-c(aa9[51:60])
G6PdhUC_9_488_peak<-c(aa9[85:94])
G6PdhUC_9_488_low<-c(aa9[141:150])

G6PdhUC_9_blp<-c((G6PdhUC_9_568_base/G6PdhUC_9_488_base)/((G6PdhUC_9_568_low/G6PdhUC_9_488_low)/(G6PdhUC_9_568_peak/G6PdhUC_9_488_peak)))
G6PdhUC_9_bpl<-c((G6PdhUC_9_568_base/G6PdhUC_9_488_base)/((G6PdhUC_9_568_peak/G6PdhUC_9_488_peak)/(G6PdhUC_9_568_low/G6PdhUC_9_488_low)))
G6PdhUC_9_btp<-c((G6PdhUC_9_568_base/G6PdhUC_9_488_base)/(G6PdhUC_9_568_peak/G6PdhUC_9_488_peak))
G6PdhUC_9_btl<-c((G6PdhUC_9_568_base/G6PdhUC_9_488_base)/(G6PdhUC_9_568_low/G6PdhUC_9_488_low))

HyPer_G6PdhUC_9_base<-c(mean(G6PdhUC_9_568_base/G6PdhUC_9_488_base))               
HyPer_G6PdhUC_9_blp<-c(mean(G6PdhUC_9_blp))
HyPer_G6PdhUC_9_bpl<-c(mean(G6PdhUC_9_bpl))
HyPer_G6PdhUC_9_btp<-c(mean(G6PdhUC_9_btp))
HyPer_G6PdhUC_9_btl<-c(mean(G6PdhUC_9_btl))

a10<-c(G6Pdh[,37])
b10<-c(G6Pdh[,38])
c10<-c(G6Pdh[,39])
d10<-c(G6Pdh[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
G6PdhUC_eyedisc_10<-c(bb10/aa10)

G6PdhUC_10_568_base<-c(bb10[51:60])
G6PdhUC_10_568_peak<-c(bb10[85:94])
G6PdhUC_10_568_low<-c(bb10[141:150])

G6PdhUC_10_488_base<-c(aa10[51:60])
G6PdhUC_10_488_peak<-c(aa10[85:94])
G6PdhUC_10_488_low<-c(aa10[141:150])

G6PdhUC_10_blp<-c((G6PdhUC_10_568_base/G6PdhUC_10_488_base)/((G6PdhUC_10_568_low/G6PdhUC_10_488_low)/(G6PdhUC_10_568_peak/G6PdhUC_10_488_peak)))
G6PdhUC_10_bpl<-c((G6PdhUC_10_568_base/G6PdhUC_10_488_base)/((G6PdhUC_10_568_peak/G6PdhUC_10_488_peak)/(G6PdhUC_10_568_low/G6PdhUC_10_488_low)))
G6PdhUC_10_btp<-c((G6PdhUC_10_568_base/G6PdhUC_10_488_base)/(G6PdhUC_10_568_peak/G6PdhUC_10_488_peak))
G6PdhUC_10_btl<-c((G6PdhUC_10_568_base/G6PdhUC_10_488_base)/(G6PdhUC_10_568_low/G6PdhUC_10_488_low))

HyPer_G6PdhUC_10_base<-c(mean(G6PdhUC_10_568_base/G6PdhUC_10_488_base))               
HyPer_G6PdhUC_10_blp<-c(mean(G6PdhUC_10_blp))
HyPer_G6PdhUC_10_bpl<-c(mean(G6PdhUC_10_bpl))
HyPer_G6PdhUC_10_btp<-c(mean(G6PdhUC_10_btp))
HyPer_G6PdhUC_10_btl<-c(mean(G6PdhUC_10_btl))

a11<-c(G6Pdh[,41])
b11<-c(G6Pdh[,42])
c11<-c(G6Pdh[,43])
d11<-c(G6Pdh[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
G6PdhUC_eyedisc_11<-c(bb11/aa11)

G6PdhUC_11_568_base<-c(bb11[51:60])
G6PdhUC_11_568_peak<-c(bb11[85:94])
G6PdhUC_11_568_low<-c(bb11[141:150])

G6PdhUC_11_488_base<-c(aa11[51:60])
G6PdhUC_11_488_peak<-c(aa11[85:94])
G6PdhUC_11_488_low<-c(aa11[141:150])

G6PdhUC_11_blp<-c((G6PdhUC_11_568_base/G6PdhUC_11_488_base)/((G6PdhUC_11_568_low/G6PdhUC_11_488_low)/(G6PdhUC_11_568_peak/G6PdhUC_11_488_peak)))
G6PdhUC_11_bpl<-c((G6PdhUC_11_568_base/G6PdhUC_11_488_base)/((G6PdhUC_11_568_peak/G6PdhUC_11_488_peak)/(G6PdhUC_11_568_low/G6PdhUC_11_488_low)))
G6PdhUC_11_btp<-c((G6PdhUC_11_568_base/G6PdhUC_11_488_base)/(G6PdhUC_11_568_peak/G6PdhUC_11_488_peak))
G6PdhUC_11_btl<-c((G6PdhUC_11_568_base/G6PdhUC_11_488_base)/(G6PdhUC_11_568_low/G6PdhUC_11_488_low))

HyPer_G6PdhUC_11_base<-c(mean(G6PdhUC_11_568_base/G6PdhUC_11_488_base))               
HyPer_G6PdhUC_11_blp<-c(mean(G6PdhUC_11_blp))
HyPer_G6PdhUC_11_bpl<-c(mean(G6PdhUC_11_bpl))
HyPer_G6PdhUC_11_btp<-c(mean(G6PdhUC_11_btp))
HyPer_G6PdhUC_11_btl<-c(mean(G6PdhUC_11_btl))

a12<-c(G6Pdh[,45])
b12<-c(G6Pdh[,46])
c12<-c(G6Pdh[,47])
d12<-c(G6Pdh[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
G6PdhUC_eyedisc_12<-c(bb12/aa12)

G6PdhUC_12_568_base<-c(bb12[51:60])
G6PdhUC_12_568_peak<-c(bb12[85:94])
G6PdhUC_12_568_low<-c(bb12[141:150])

G6PdhUC_12_488_base<-c(aa12[51:60])
G6PdhUC_12_488_peak<-c(aa12[85:94])
G6PdhUC_12_488_low<-c(aa12[141:150])

G6PdhUC_12_blp<-c((G6PdhUC_12_568_base/G6PdhUC_12_488_base)/((G6PdhUC_12_568_low/G6PdhUC_12_488_low)/(G6PdhUC_12_568_peak/G6PdhUC_12_488_peak)))
G6PdhUC_12_bpl<-c((G6PdhUC_12_568_base/G6PdhUC_12_488_base)/((G6PdhUC_12_568_peak/G6PdhUC_12_488_peak)/(G6PdhUC_12_568_low/G6PdhUC_12_488_low)))
G6PdhUC_12_btp<-c((G6PdhUC_12_568_base/G6PdhUC_12_488_base)/(G6PdhUC_12_568_peak/G6PdhUC_12_488_peak))
G6PdhUC_12_btl<-c((G6PdhUC_12_568_base/G6PdhUC_12_488_base)/(G6PdhUC_12_568_low/G6PdhUC_12_488_low))

HyPer_G6PdhUC_12_base<-c(mean(G6PdhUC_12_568_base/G6PdhUC_12_488_base))               
HyPer_G6PdhUC_12_blp<-c(mean(G6PdhUC_12_blp))
HyPer_G6PdhUC_12_bpl<-c(mean(G6PdhUC_12_bpl))
HyPer_G6PdhUC_12_btp<-c(mean(G6PdhUC_12_btp))
HyPer_G6PdhUC_12_btl<-c(mean(G6PdhUC_12_btl))

a13<-c(G6Pdh[,49])
b13<-c(G6Pdh[,50])
c13<-c(G6Pdh[,51])
d13<-c(G6Pdh[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
G6PdhUC_eyedisc_13<-c(bb13/aa13)

G6PdhUC_13_568_base<-c(bb13[51:60])
G6PdhUC_13_568_peak<-c(bb13[85:94])
G6PdhUC_13_568_low<-c(bb13[141:150])

G6PdhUC_13_488_base<-c(aa13[51:60])
G6PdhUC_13_488_peak<-c(aa13[85:94])
G6PdhUC_13_488_low<-c(aa13[141:150])

G6PdhUC_13_blp<-c((G6PdhUC_13_568_base/G6PdhUC_13_488_base)/((G6PdhUC_13_568_low/G6PdhUC_13_488_low)/(G6PdhUC_13_568_peak/G6PdhUC_13_488_peak)))
G6PdhUC_13_bpl<-c((G6PdhUC_13_568_base/G6PdhUC_13_488_base)/((G6PdhUC_13_568_peak/G6PdhUC_13_488_peak)/(G6PdhUC_13_568_low/G6PdhUC_13_488_low)))
G6PdhUC_13_btp<-c((G6PdhUC_13_568_base/G6PdhUC_13_488_base)/(G6PdhUC_13_568_peak/G6PdhUC_13_488_peak))
G6PdhUC_13_btl<-c((G6PdhUC_13_568_base/G6PdhUC_13_488_base)/(G6PdhUC_13_568_low/G6PdhUC_13_488_low))

HyPer_G6PdhUC_13_base<-c(mean(G6PdhUC_13_568_base/G6PdhUC_13_488_base))               
HyPer_G6PdhUC_13_blp<-c(mean(G6PdhUC_13_blp))
HyPer_G6PdhUC_13_bpl<-c(mean(G6PdhUC_13_bpl))
HyPer_G6PdhUC_13_btp<-c(mean(G6PdhUC_13_btp))
HyPer_G6PdhUC_13_btl<-c(mean(G6PdhUC_13_btl))

a14<-c(G6Pdh[,53])
b14<-c(G6Pdh[,54])
c14<-c(G6Pdh[,55])
d14<-c(G6Pdh[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
G6PdhUC_eyedisc_14<-c(bb14/aa14)

G6PdhUC_14_568_base<-c(bb14[51:60])
G6PdhUC_14_568_peak<-c(bb14[85:94])
G6PdhUC_14_568_low<-c(bb14[141:150])

G6PdhUC_14_488_base<-c(aa14[51:60])
G6PdhUC_14_488_peak<-c(aa14[85:94])
G6PdhUC_14_488_low<-c(aa14[141:150])

G6PdhUC_14_blp<-c((G6PdhUC_14_568_base/G6PdhUC_14_488_base)/((G6PdhUC_14_568_low/G6PdhUC_14_488_low)/(G6PdhUC_14_568_peak/G6PdhUC_14_488_peak)))
G6PdhUC_14_bpl<-c((G6PdhUC_14_568_base/G6PdhUC_14_488_base)/((G6PdhUC_14_568_peak/G6PdhUC_14_488_peak)/(G6PdhUC_14_568_low/G6PdhUC_14_488_low)))
G6PdhUC_14_btp<-c((G6PdhUC_14_568_base/G6PdhUC_14_488_base)/(G6PdhUC_14_568_peak/G6PdhUC_14_488_peak))
G6PdhUC_14_btl<-c((G6PdhUC_14_568_base/G6PdhUC_14_488_base)/(G6PdhUC_14_568_low/G6PdhUC_14_488_low))

HyPer_G6PdhUC_14_base<-c(mean(G6PdhUC_14_568_base/G6PdhUC_14_488_base))               
HyPer_G6PdhUC_14_blp<-c(mean(G6PdhUC_14_blp))
HyPer_G6PdhUC_14_bpl<-c(mean(G6PdhUC_14_bpl))
HyPer_G6PdhUC_14_btp<-c(mean(G6PdhUC_14_btp))
HyPer_G6PdhUC_14_btl<-c(mean(G6PdhUC_14_btl))

a15<-c(G6Pdh[,57])
b15<-c(G6Pdh[,58])
c15<-c(G6Pdh[,59])
d15<-c(G6Pdh[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
G6PdhUC_eyedisc_15<-c(bb15/aa15)

G6PdhUC_15_568_base<-c(bb15[51:60])
G6PdhUC_15_568_peak<-c(bb15[85:94])
G6PdhUC_15_568_low<-c(bb15[141:150])

G6PdhUC_15_488_base<-c(aa15[51:60])
G6PdhUC_15_488_peak<-c(aa15[85:94])
G6PdhUC_15_488_low<-c(aa15[141:150])

G6PdhUC_15_blp<-c((G6PdhUC_15_568_base/G6PdhUC_15_488_base)/((G6PdhUC_15_568_low/G6PdhUC_15_488_low)/(G6PdhUC_15_568_peak/G6PdhUC_15_488_peak)))
G6PdhUC_15_bpl<-c((G6PdhUC_15_568_base/G6PdhUC_15_488_base)/((G6PdhUC_15_568_peak/G6PdhUC_15_488_peak)/(G6PdhUC_15_568_low/G6PdhUC_15_488_low)))
G6PdhUC_15_btp<-c((G6PdhUC_15_568_base/G6PdhUC_15_488_base)/(G6PdhUC_15_568_peak/G6PdhUC_15_488_peak))
G6PdhUC_15_btl<-c((G6PdhUC_15_568_base/G6PdhUC_15_488_base)/(G6PdhUC_15_568_low/G6PdhUC_15_488_low))

HyPer_G6PdhUC_15_base<-c(mean(G6PdhUC_15_568_base/G6PdhUC_15_488_base))               
HyPer_G6PdhUC_15_blp<-c(mean(G6PdhUC_15_blp))
HyPer_G6PdhUC_15_bpl<-c(mean(G6PdhUC_15_bpl))
HyPer_G6PdhUC_15_btp<-c(mean(G6PdhUC_15_btp))
HyPer_G6PdhUC_15_btl<-c(mean(G6PdhUC_15_btl))



HyPer_G6PdhUC_time_course<-c(G6PdhUC_eyedisc_1,G6PdhUC_eyedisc_2,G6PdhUC_eyedisc_3,G6PdhUC_eyedisc_4,G6PdhUC_eyedisc_5,G6PdhUC_eyedisc_6,G6PdhUC_eyedisc_7,G6PdhUC_eyedisc_9,G6PdhUC_eyedisc_10,G6PdhUC_eyedisc_11,G6PdhUC_eyedisc_12,G6PdhUC_eyedisc_13,G6PdhUC_eyedisc_14,G6PdhUC_eyedisc_15)
matHyPer_G6PdhUC_time_course<-matrix(HyPer_G6PdhUC_time_course,nrow=150,ncol=14)
mean_HyPer_G6PdhUC_time_course<-c(rowMeans(matHyPer_G6PdhUC_time_course))

HyPer_G6PdhUC_blp<-c(HyPer_G6PdhUC_1_blp,HyPer_G6PdhUC_2_blp,HyPer_G6PdhUC_3_blp,HyPer_G6PdhUC_4_blp,HyPer_G6PdhUC_5_blp,HyPer_G6PdhUC_6_blp,HyPer_G6PdhUC_7_blp,HyPer_G6PdhUC_9_blp,HyPer_G6PdhUC_10_blp,HyPer_G6PdhUC_11_blp,HyPer_G6PdhUC_12_blp,HyPer_G6PdhUC_13_blp,HyPer_G6PdhUC_14_blp,HyPer_G6PdhUC_15_blp)
HyPer_G6PdhUC_bpl<-c(HyPer_G6PdhUC_1_bpl,HyPer_G6PdhUC_2_bpl,HyPer_G6PdhUC_3_bpl,HyPer_G6PdhUC_4_bpl,HyPer_G6PdhUC_5_bpl,HyPer_G6PdhUC_6_bpl,HyPer_G6PdhUC_7_bpl,HyPer_G6PdhUC_9_bpl,HyPer_G6PdhUC_10_bpl,HyPer_G6PdhUC_11_bpl,HyPer_G6PdhUC_12_bpl,HyPer_G6PdhUC_13_bpl,HyPer_G6PdhUC_14_bpl,HyPer_G6PdhUC_15_bpl)
HyPer_G6PdhUC_btl<-c(HyPer_G6PdhUC_1_btl,HyPer_G6PdhUC_2_btl,HyPer_G6PdhUC_3_btl,HyPer_G6PdhUC_4_btl,HyPer_G6PdhUC_5_btl,HyPer_G6PdhUC_6_btl,HyPer_G6PdhUC_7_btl,HyPer_G6PdhUC_9_btl,HyPer_G6PdhUC_10_btl,HyPer_G6PdhUC_11_btl,HyPer_G6PdhUC_12_btl,HyPer_G6PdhUC_13_btl,HyPer_G6PdhUC_14_btl,HyPer_G6PdhUC_15_btl)
HyPer_G6PdhUC_btp<-c(HyPer_G6PdhUC_1_btp,HyPer_G6PdhUC_2_btp,HyPer_G6PdhUC_3_btp,HyPer_G6PdhUC_4_btp,HyPer_G6PdhUC_5_btp,HyPer_G6PdhUC_6_btp,HyPer_G6PdhUC_7_btp,HyPer_G6PdhUC_9_btp,HyPer_G6PdhUC_10_btp,HyPer_G6PdhUC_11_btp,HyPer_G6PdhUC_12_btp,HyPer_G6PdhUC_13_btp,HyPer_G6PdhUC_14_btp,HyPer_G6PdhUC_15_btp)
HyPer_G6PdhUC_base<-c(HyPer_G6PdhUC_1_base,HyPer_G6PdhUC_2_base,HyPer_G6PdhUC_3_base,HyPer_G6PdhUC_4_base,HyPer_G6PdhUC_5_base,HyPer_G6PdhUC_6_base,HyPer_G6PdhUC_7_base,HyPer_G6PdhUC_9_base,HyPer_G6PdhUC_10_base,HyPer_G6PdhUC_11_base,HyPer_G6PdhUC_12_base,HyPer_G6PdhUC_13_base,HyPer_G6PdhUC_14_base,HyPer_G6PdhUC_15_base)


