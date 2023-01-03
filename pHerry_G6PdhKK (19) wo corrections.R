a1<-c(G6Pdh[,1])
b1<-c(G6Pdh[,2])
c1<-c(G6Pdh[,3])
d1<-c(G6Pdh[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
G6PdhUC_eyedisc_1<-c(aa1/bb1)

G6PdhUC_1_488_base<-c(aa1[51:60])
G6PdhUC_1_488_low<-c(aa1[111:120])
G6PdhUC_1_488_peak<-c(aa1[76:85])

G6PdhUC_1_568_base<-c(bb1[51:60])
G6PdhUC_1_568_low<-c(bb1[111:120])
G6PdhUC_1_568_peak<-c(bb1[76:85])

G6PdhUC_1_bpl<-c((G6PdhUC_1_488_base/G6PdhUC_1_568_base)/((G6PdhUC_1_488_peak/G6PdhUC_1_568_peak)/(G6PdhUC_1_488_low/G6PdhUC_1_568_low)))
G6PdhUC_1_blp<-c((G6PdhUC_1_488_base/G6PdhUC_1_568_base)/((G6PdhUC_1_488_low/G6PdhUC_1_568_low)/(G6PdhUC_1_488_peak/G6PdhUC_1_568_peak)))
G6PdhUC_1_btl<-c((G6PdhUC_1_488_base/G6PdhUC_1_568_base)/(G6PdhUC_1_488_low/G6PdhUC_1_568_low))
G6PdhUC_1_btp<-c((G6PdhUC_1_488_base/G6PdhUC_1_568_base)/(G6PdhUC_1_488_peak/G6PdhUC_1_568_peak))

pHerry_G6PdhUC_1_base<-c(mean(G6PdhUC_1_488_base/G6PdhUC_1_568_base))               
pHerry_G6PdhUC_1_bpl<-c(mean(G6PdhUC_1_bpl))
pHerry_G6PdhUC_1_blp<-c(mean(G6PdhUC_1_blp))
pHerry_G6PdhUC_1_btl<-c(mean(G6PdhUC_1_btl))
pHerry_G6PdhUC_1_btp<-c(mean(G6PdhUC_1_btp))


a2<-c(G6Pdh[,5])
b2<-c(G6Pdh[,6])
c2<-c(G6Pdh[,7])
d2<-c(G6Pdh[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
G6PdhUC_eyedisc_2<-c(aa2/bb2)



G6PdhUC_2_488_base<-c(aa2[51:60])
G6PdhUC_2_488_low<-c(aa2[111:120])
G6PdhUC_2_488_peak<-c(aa2[76:85])

G6PdhUC_2_568_base<-c(bb2[51:60])
G6PdhUC_2_568_low<-c(bb2[111:120])
G6PdhUC_2_568_peak<-c(bb2[76:85])

G6PdhUC_2_bpl<-c((G6PdhUC_2_488_base/G6PdhUC_2_568_base)/((G6PdhUC_2_488_peak/G6PdhUC_2_568_peak)/(G6PdhUC_2_488_low/G6PdhUC_2_568_low)))
G6PdhUC_2_blp<-c((G6PdhUC_2_488_base/G6PdhUC_2_568_base)/((G6PdhUC_2_488_low/G6PdhUC_2_568_low)/(G6PdhUC_2_488_peak/G6PdhUC_2_568_peak)))
G6PdhUC_2_btl<-c((G6PdhUC_2_488_base/G6PdhUC_2_568_base)/(G6PdhUC_2_488_low/G6PdhUC_2_568_low))
G6PdhUC_2_btp<-c((G6PdhUC_2_488_base/G6PdhUC_2_568_base)/(G6PdhUC_2_488_peak/G6PdhUC_2_568_peak))

pHerry_G6PdhUC_2_base<-c(mean(G6PdhUC_2_488_base/G6PdhUC_2_568_base))               
pHerry_G6PdhUC_2_bpl<-c(mean(G6PdhUC_2_bpl))
pHerry_G6PdhUC_2_blp<-c(mean(G6PdhUC_2_blp))
pHerry_G6PdhUC_2_btl<-c(mean(G6PdhUC_2_btl))
pHerry_G6PdhUC_2_btp<-c(mean(G6PdhUC_2_btp))



a3<-c(G6Pdh[,9])
b3<-c(G6Pdh[,10])
c3<-c(G6Pdh[,11])
d3<-c(G6Pdh[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
G6PdhUC_eyedisc_3<-c(aa3/bb3)


G6PdhUC_3_488_base<-c(aa3[51:60])
G6PdhUC_3_488_low<-c(aa3[111:120])
G6PdhUC_3_488_peak<-c(aa3[76:85])

G6PdhUC_3_568_base<-c(bb3[51:60])
G6PdhUC_3_568_low<-c(bb3[111:120])
G6PdhUC_3_568_peak<-c(bb3[76:85])

G6PdhUC_3_bpl<-c((G6PdhUC_3_488_base/G6PdhUC_3_568_base)/((G6PdhUC_3_488_peak/G6PdhUC_3_568_peak)/(G6PdhUC_3_488_low/G6PdhUC_3_568_low)))
G6PdhUC_3_blp<-c((G6PdhUC_3_488_base/G6PdhUC_3_568_base)/((G6PdhUC_3_488_low/G6PdhUC_3_568_low)/(G6PdhUC_3_488_peak/G6PdhUC_3_568_peak)))
G6PdhUC_3_btl<-c((G6PdhUC_3_488_base/G6PdhUC_3_568_base)/(G6PdhUC_3_488_low/G6PdhUC_3_568_low))
G6PdhUC_3_btp<-c((G6PdhUC_3_488_base/G6PdhUC_3_568_base)/(G6PdhUC_3_488_peak/G6PdhUC_3_568_peak))

pHerry_G6PdhUC_3_base<-c(mean(G6PdhUC_3_488_base/G6PdhUC_3_568_base))               
pHerry_G6PdhUC_3_bpl<-c(mean(G6PdhUC_3_bpl))
pHerry_G6PdhUC_3_blp<-c(mean(G6PdhUC_3_blp))
pHerry_G6PdhUC_3_btl<-c(mean(G6PdhUC_3_btl))
pHerry_G6PdhUC_3_btp<-c(mean(G6PdhUC_3_btp))


a4<-c(G6Pdh[,13])
b4<-c(G6Pdh[,14])
c4<-c(G6Pdh[,15])
d4<-c(G6Pdh[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
G6PdhUC_eyedisc_4<-c(aa4/bb4)



G6PdhUC_4_488_base<-c(aa4[51:60])
G6PdhUC_4_488_low<-c(aa4[111:120])
G6PdhUC_4_488_peak<-c(aa4[76:85])

G6PdhUC_4_568_base<-c(bb4[51:60])
G6PdhUC_4_568_low<-c(bb4[111:120])
G6PdhUC_4_568_peak<-c(bb4[76:85])

G6PdhUC_4_bpl<-c((G6PdhUC_4_488_base/G6PdhUC_4_568_base)/((G6PdhUC_4_488_peak/G6PdhUC_4_568_peak)/(G6PdhUC_4_488_low/G6PdhUC_4_568_low)))
G6PdhUC_4_blp<-c((G6PdhUC_4_488_base/G6PdhUC_4_568_base)/((G6PdhUC_4_488_low/G6PdhUC_4_568_low)/(G6PdhUC_4_488_peak/G6PdhUC_4_568_peak)))
G6PdhUC_4_btl<-c((G6PdhUC_4_488_base/G6PdhUC_4_568_base)/(G6PdhUC_4_488_low/G6PdhUC_4_568_low))
G6PdhUC_4_btp<-c((G6PdhUC_4_488_base/G6PdhUC_4_568_base)/(G6PdhUC_4_488_peak/G6PdhUC_4_568_peak))

pHerry_G6PdhUC_4_base<-c(mean(G6PdhUC_4_488_base/G6PdhUC_4_568_base))               
pHerry_G6PdhUC_4_bpl<-c(mean(G6PdhUC_4_bpl))
pHerry_G6PdhUC_4_blp<-c(mean(G6PdhUC_4_blp))
pHerry_G6PdhUC_4_btl<-c(mean(G6PdhUC_4_btl))
pHerry_G6PdhUC_4_btp<-c(mean(G6PdhUC_4_btp))


a5<-c(G6Pdh[,17])
b5<-c(G6Pdh[,18])
c5<-c(G6Pdh[,19])
d5<-c(G6Pdh[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
G6PdhUC_eyedisc_5<-c(aa5/bb5)



G6PdhUC_5_488_base<-c(aa5[51:60])
G6PdhUC_5_488_low<-c(aa5[111:120])
G6PdhUC_5_488_peak<-c(aa5[76:85])

G6PdhUC_5_568_base<-c(bb5[51:60])
G6PdhUC_5_568_low<-c(bb5[111:120])
G6PdhUC_5_568_peak<-c(bb5[76:85])

G6PdhUC_5_bpl<-c((G6PdhUC_5_488_base/G6PdhUC_5_568_base)/((G6PdhUC_5_488_peak/G6PdhUC_5_568_peak)/(G6PdhUC_5_488_low/G6PdhUC_5_568_low)))
G6PdhUC_5_blp<-c((G6PdhUC_5_488_base/G6PdhUC_5_568_base)/((G6PdhUC_5_488_low/G6PdhUC_5_568_low)/(G6PdhUC_5_488_peak/G6PdhUC_5_568_peak)))
G6PdhUC_5_btl<-c((G6PdhUC_5_488_base/G6PdhUC_5_568_base)/(G6PdhUC_5_488_low/G6PdhUC_5_568_low))
G6PdhUC_5_btp<-c((G6PdhUC_5_488_base/G6PdhUC_5_568_base)/(G6PdhUC_5_488_peak/G6PdhUC_5_568_peak))

pHerry_G6PdhUC_5_base<-c(mean(G6PdhUC_5_488_base/G6PdhUC_5_568_base))               
pHerry_G6PdhUC_5_bpl<-c(mean(G6PdhUC_5_bpl))
pHerry_G6PdhUC_5_blp<-c(mean(G6PdhUC_5_blp))
pHerry_G6PdhUC_5_btl<-c(mean(G6PdhUC_5_btl))
pHerry_G6PdhUC_5_btp<-c(mean(G6PdhUC_5_btp))


a6<-c(G6Pdh[,21])
b6<-c(G6Pdh[,22])
c6<-c(G6Pdh[,23])
d6<-c(G6Pdh[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
G6PdhUC_eyedisc_6<-c(aa6/bb6)

G6PdhUC_6_488_base<-c(aa6[51:60])
G6PdhUC_6_488_low<-c(aa6[111:120])
G6PdhUC_6_488_peak<-c(aa6[76:85])

G6PdhUC_6_568_base<-c(bb6[51:60])
G6PdhUC_6_568_low<-c(bb6[111:120])
G6PdhUC_6_568_peak<-c(bb6[76:85])

G6PdhUC_6_bpl<-c((G6PdhUC_6_488_base/G6PdhUC_6_568_base)/((G6PdhUC_6_488_peak/G6PdhUC_6_568_peak)/(G6PdhUC_6_488_low/G6PdhUC_6_568_low)))
G6PdhUC_6_blp<-c((G6PdhUC_6_488_base/G6PdhUC_6_568_base)/((G6PdhUC_6_488_low/G6PdhUC_6_568_low)/(G6PdhUC_6_488_peak/G6PdhUC_6_568_peak)))
G6PdhUC_6_btl<-c((G6PdhUC_6_488_base/G6PdhUC_6_568_base)/(G6PdhUC_6_488_low/G6PdhUC_6_568_low))
G6PdhUC_6_btp<-c((G6PdhUC_6_488_base/G6PdhUC_6_568_base)/(G6PdhUC_6_488_peak/G6PdhUC_6_568_peak))

pHerry_G6PdhUC_6_base<-c(mean(G6PdhUC_6_488_base/G6PdhUC_6_568_base))               
pHerry_G6PdhUC_6_bpl<-c(mean(G6PdhUC_6_bpl))
pHerry_G6PdhUC_6_blp<-c(mean(G6PdhUC_6_blp))
pHerry_G6PdhUC_6_btl<-c(mean(G6PdhUC_6_btl))
pHerry_G6PdhUC_6_btp<-c(mean(G6PdhUC_6_btp))




a7<-c(G6Pdh[,25])
b7<-c(G6Pdh[,26])
c7<-c(G6Pdh[,27])
d7<-c(G6Pdh[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
G6PdhUC_eyedisc_7<-c(aa7/bb7)



G6PdhUC_7_488_base<-c(aa7[51:60])
G6PdhUC_7_488_low<-c(aa7[111:120])
G6PdhUC_7_488_peak<-c(aa7[76:85])

G6PdhUC_7_568_base<-c(bb7[51:60])
G6PdhUC_7_568_low<-c(bb7[111:120])
G6PdhUC_7_568_peak<-c(bb7[76:85])

G6PdhUC_7_bpl<-c((G6PdhUC_7_488_base/G6PdhUC_7_568_base)/((G6PdhUC_7_488_peak/G6PdhUC_7_568_peak)/(G6PdhUC_7_488_low/G6PdhUC_7_568_low)))
G6PdhUC_7_blp<-c((G6PdhUC_7_488_base/G6PdhUC_7_568_base)/((G6PdhUC_7_488_low/G6PdhUC_7_568_low)/(G6PdhUC_7_488_peak/G6PdhUC_7_568_peak)))
G6PdhUC_7_btl<-c((G6PdhUC_7_488_base/G6PdhUC_7_568_base)/(G6PdhUC_7_488_low/G6PdhUC_7_568_low))
G6PdhUC_7_btp<-c((G6PdhUC_7_488_base/G6PdhUC_7_568_base)/(G6PdhUC_7_488_peak/G6PdhUC_7_568_peak))

pHerry_G6PdhUC_7_base<-c(mean(G6PdhUC_7_488_base/G6PdhUC_7_568_base))               
pHerry_G6PdhUC_7_bpl<-c(mean(G6PdhUC_7_bpl))
pHerry_G6PdhUC_7_blp<-c(mean(G6PdhUC_7_blp))
pHerry_G6PdhUC_7_btl<-c(mean(G6PdhUC_7_btl))
pHerry_G6PdhUC_7_btp<-c(mean(G6PdhUC_7_btp))


a8<-c(G6Pdh[,29])
b8<-c(G6Pdh[,30])
c8<-c(G6Pdh[,31])
d8<-c(G6Pdh[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
G6PdhUC_eyedisc_8<-c(aa8/bb8)

G6PdhUC_8_488_base<-c(aa8[51:60])
G6PdhUC_8_488_low<-c(aa8[111:120])
G6PdhUC_8_488_peak<-c(aa8[76:85])

G6PdhUC_8_568_base<-c(bb8[51:60])
G6PdhUC_8_568_low<-c(bb8[111:120])
G6PdhUC_8_568_peak<-c(bb8[76:85])

G6PdhUC_8_bpl<-c((G6PdhUC_8_488_base/G6PdhUC_8_568_base)/((G6PdhUC_8_488_peak/G6PdhUC_8_568_peak)/(G6PdhUC_8_488_low/G6PdhUC_8_568_low)))
G6PdhUC_8_blp<-c((G6PdhUC_8_488_base/G6PdhUC_8_568_base)/((G6PdhUC_8_488_low/G6PdhUC_8_568_low)/(G6PdhUC_8_488_peak/G6PdhUC_8_568_peak)))
G6PdhUC_8_btl<-c((G6PdhUC_8_488_base/G6PdhUC_8_568_base)/(G6PdhUC_8_488_low/G6PdhUC_8_568_low))
G6PdhUC_8_btp<-c((G6PdhUC_8_488_base/G6PdhUC_8_568_base)/(G6PdhUC_8_488_peak/G6PdhUC_8_568_peak))

pHerry_G6PdhUC_8_base<-c(mean(G6PdhUC_8_488_base/G6PdhUC_8_568_base))               
pHerry_G6PdhUC_8_bpl<-c(mean(G6PdhUC_8_bpl))
pHerry_G6PdhUC_8_blp<-c(mean(G6PdhUC_8_blp))
pHerry_G6PdhUC_8_btl<-c(mean(G6PdhUC_8_btl))
pHerry_G6PdhUC_8_btp<-c(mean(G6PdhUC_8_btp))


a9<-c(G6Pdh[,33])
b9<-c(G6Pdh[,34])
c9<-c(G6Pdh[,35])
d9<-c(G6Pdh[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
G6PdhUC_eyedisc_9<-c(aa9/bb9)

G6PdhUC_9_488_base<-c(aa9[51:60])
G6PdhUC_9_488_low<-c(aa9[111:120])
G6PdhUC_9_488_peak<-c(aa9[76:85])

G6PdhUC_9_568_base<-c(bb9[51:60])
G6PdhUC_9_568_low<-c(bb9[111:120])
G6PdhUC_9_568_peak<-c(bb9[76:85])

G6PdhUC_9_bpl<-c((G6PdhUC_9_488_base/G6PdhUC_9_568_base)/((G6PdhUC_9_488_peak/G6PdhUC_9_568_peak)/(G6PdhUC_9_488_low/G6PdhUC_9_568_low)))
G6PdhUC_9_blp<-c((G6PdhUC_9_488_base/G6PdhUC_9_568_base)/((G6PdhUC_9_488_low/G6PdhUC_9_568_low)/(G6PdhUC_9_488_peak/G6PdhUC_9_568_peak)))
G6PdhUC_9_btl<-c((G6PdhUC_9_488_base/G6PdhUC_9_568_base)/(G6PdhUC_9_488_low/G6PdhUC_9_568_low))
G6PdhUC_9_btp<-c((G6PdhUC_9_488_base/G6PdhUC_9_568_base)/(G6PdhUC_9_488_peak/G6PdhUC_9_568_peak))

pHerry_G6PdhUC_9_base<-c(mean(G6PdhUC_9_488_base/G6PdhUC_9_568_base))               
pHerry_G6PdhUC_9_bpl<-c(mean(G6PdhUC_9_bpl))
pHerry_G6PdhUC_9_blp<-c(mean(G6PdhUC_9_blp))
pHerry_G6PdhUC_9_btl<-c(mean(G6PdhUC_9_btl))
pHerry_G6PdhUC_9_btp<-c(mean(G6PdhUC_9_btp))

a10<-c(G6Pdh[,37])
b10<-c(G6Pdh[,38])
c10<-c(G6Pdh[,39])
d10<-c(G6Pdh[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
G6PdhUC_eyedisc_10<-c(aa10/bb10)

G6PdhUC_10_488_base<-c(aa10[51:60])
G6PdhUC_10_488_low<-c(aa10[111:120])
G6PdhUC_10_488_peak<-c(aa10[76:85])

G6PdhUC_10_568_base<-c(bb10[51:60])
G6PdhUC_10_568_low<-c(bb10[111:120])
G6PdhUC_10_568_peak<-c(bb10[76:85])

G6PdhUC_10_bpl<-c((G6PdhUC_10_488_base/G6PdhUC_10_568_base)/((G6PdhUC_10_488_peak/G6PdhUC_10_568_peak)/(G6PdhUC_10_488_low/G6PdhUC_10_568_low)))
G6PdhUC_10_blp<-c((G6PdhUC_10_488_base/G6PdhUC_10_568_base)/((G6PdhUC_10_488_low/G6PdhUC_10_568_low)/(G6PdhUC_10_488_peak/G6PdhUC_10_568_peak)))
G6PdhUC_10_btl<-c((G6PdhUC_10_488_base/G6PdhUC_10_568_base)/(G6PdhUC_10_488_low/G6PdhUC_10_568_low))
G6PdhUC_10_btp<-c((G6PdhUC_10_488_base/G6PdhUC_10_568_base)/(G6PdhUC_10_488_peak/G6PdhUC_10_568_peak))

pHerry_G6PdhUC_10_base<-c(mean(G6PdhUC_10_488_base/G6PdhUC_10_568_base))               
pHerry_G6PdhUC_10_bpl<-c(mean(G6PdhUC_10_bpl))
pHerry_G6PdhUC_10_blp<-c(mean(G6PdhUC_10_blp))
pHerry_G6PdhUC_10_btl<-c(mean(G6PdhUC_10_btl))
pHerry_G6PdhUC_10_btp<-c(mean(G6PdhUC_10_btp))

a11<-c(G6Pdh[,41])
b11<-c(G6Pdh[,42])
c11<-c(G6Pdh[,43])
d11<-c(G6Pdh[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
G6PdhUC_eyedisc_11<-c(aa11/bb11)

G6PdhUC_11_488_base<-c(aa11[51:60])
G6PdhUC_11_488_low<-c(aa11[111:120])
G6PdhUC_11_488_peak<-c(aa11[76:85])

G6PdhUC_11_568_base<-c(bb11[51:60])
G6PdhUC_11_568_low<-c(bb11[111:120])
G6PdhUC_11_568_peak<-c(bb11[76:85])

G6PdhUC_11_bpl<-c((G6PdhUC_11_488_base/G6PdhUC_11_568_base)/((G6PdhUC_11_488_peak/G6PdhUC_11_568_peak)/(G6PdhUC_11_488_low/G6PdhUC_11_568_low)))
G6PdhUC_11_blp<-c((G6PdhUC_11_488_base/G6PdhUC_11_568_base)/((G6PdhUC_11_488_low/G6PdhUC_11_568_low)/(G6PdhUC_11_488_peak/G6PdhUC_11_568_peak)))
G6PdhUC_11_btl<-c((G6PdhUC_11_488_base/G6PdhUC_11_568_base)/(G6PdhUC_11_488_low/G6PdhUC_11_568_low))
G6PdhUC_11_btp<-c((G6PdhUC_11_488_base/G6PdhUC_11_568_base)/(G6PdhUC_11_488_peak/G6PdhUC_11_568_peak))

pHerry_G6PdhUC_11_base<-c(mean(G6PdhUC_11_488_base/G6PdhUC_11_568_base))               
pHerry_G6PdhUC_11_bpl<-c(mean(G6PdhUC_11_bpl))
pHerry_G6PdhUC_11_blp<-c(mean(G6PdhUC_11_blp))
pHerry_G6PdhUC_11_btl<-c(mean(G6PdhUC_11_btl))
pHerry_G6PdhUC_11_btp<-c(mean(G6PdhUC_11_btp))

a12<-c(G6Pdh[,45])
b12<-c(G6Pdh[,46])
c12<-c(G6Pdh[,47])
d12<-c(G6Pdh[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
G6PdhUC_eyedisc_12<-c(aa12/bb12)

G6PdhUC_12_488_base<-c(aa12[51:60])
G6PdhUC_12_488_low<-c(aa12[111:120])
G6PdhUC_12_488_peak<-c(aa12[76:85])

G6PdhUC_12_568_base<-c(bb12[51:60])
G6PdhUC_12_568_low<-c(bb12[111:120])
G6PdhUC_12_568_peak<-c(bb12[76:85])

G6PdhUC_12_bpl<-c((G6PdhUC_12_488_base/G6PdhUC_12_568_base)/((G6PdhUC_12_488_peak/G6PdhUC_12_568_peak)/(G6PdhUC_12_488_low/G6PdhUC_12_568_low)))
G6PdhUC_12_blp<-c((G6PdhUC_12_488_base/G6PdhUC_12_568_base)/((G6PdhUC_12_488_low/G6PdhUC_12_568_low)/(G6PdhUC_12_488_peak/G6PdhUC_12_568_peak)))
G6PdhUC_12_btl<-c((G6PdhUC_12_488_base/G6PdhUC_12_568_base)/(G6PdhUC_12_488_low/G6PdhUC_12_568_low))
G6PdhUC_12_btp<-c((G6PdhUC_12_488_base/G6PdhUC_12_568_base)/(G6PdhUC_12_488_peak/G6PdhUC_12_568_peak))

pHerry_G6PdhUC_12_base<-c(mean(G6PdhUC_12_488_base/G6PdhUC_12_568_base))               
pHerry_G6PdhUC_12_bpl<-c(mean(G6PdhUC_12_bpl))
pHerry_G6PdhUC_12_blp<-c(mean(G6PdhUC_12_blp))
pHerry_G6PdhUC_12_btl<-c(mean(G6PdhUC_12_btl))
pHerry_G6PdhUC_12_btp<-c(mean(G6PdhUC_12_btp))

a13<-c(G6Pdh[,49])
b13<-c(G6Pdh[,50])
c13<-c(G6Pdh[,51])
d13<-c(G6Pdh[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
G6PdhUC_eyedisc_13<-c(aa13/bb13)

G6PdhUC_13_488_base<-c(aa13[51:60])
G6PdhUC_13_488_low<-c(aa13[111:120])
G6PdhUC_13_488_peak<-c(aa13[76:85])

G6PdhUC_13_568_base<-c(bb13[51:60])
G6PdhUC_13_568_low<-c(bb13[111:120])
G6PdhUC_13_568_peak<-c(bb13[76:85])

G6PdhUC_13_bpl<-c((G6PdhUC_13_488_base/G6PdhUC_13_568_base)/((G6PdhUC_13_488_peak/G6PdhUC_13_568_peak)/(G6PdhUC_13_488_low/G6PdhUC_13_568_low)))
G6PdhUC_13_blp<-c((G6PdhUC_13_488_base/G6PdhUC_13_568_base)/((G6PdhUC_13_488_low/G6PdhUC_13_568_low)/(G6PdhUC_13_488_peak/G6PdhUC_13_568_peak)))
G6PdhUC_13_btl<-c((G6PdhUC_13_488_base/G6PdhUC_13_568_base)/(G6PdhUC_13_488_low/G6PdhUC_13_568_low))
G6PdhUC_13_btp<-c((G6PdhUC_13_488_base/G6PdhUC_13_568_base)/(G6PdhUC_13_488_peak/G6PdhUC_13_568_peak))

pHerry_G6PdhUC_13_base<-c(mean(G6PdhUC_13_488_base/G6PdhUC_13_568_base))               
pHerry_G6PdhUC_13_bpl<-c(mean(G6PdhUC_13_bpl))
pHerry_G6PdhUC_13_blp<-c(mean(G6PdhUC_13_blp))
pHerry_G6PdhUC_13_btl<-c(mean(G6PdhUC_13_btl))
pHerry_G6PdhUC_13_btp<-c(mean(G6PdhUC_13_btp))


a15<-c(G6Pdh[,57])
b15<-c(G6Pdh[,58])
c15<-c(G6Pdh[,59])
d15<-c(G6Pdh[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
G6PdhUC_eyedisc_15<-c(aa15/bb15)

G6PdhUC_15_488_base<-c(aa15[51:60])
G6PdhUC_15_488_low<-c(aa15[111:120])
G6PdhUC_15_488_peak<-c(aa15[76:85])

G6PdhUC_15_568_base<-c(bb15[51:60])
G6PdhUC_15_568_low<-c(bb15[111:120])
G6PdhUC_15_568_peak<-c(bb15[76:85])

G6PdhUC_15_bpl<-c((G6PdhUC_15_488_base/G6PdhUC_15_568_base)/((G6PdhUC_15_488_peak/G6PdhUC_15_568_peak)/(G6PdhUC_15_488_low/G6PdhUC_15_568_low)))
G6PdhUC_15_blp<-c((G6PdhUC_15_488_base/G6PdhUC_15_568_base)/((G6PdhUC_15_488_low/G6PdhUC_15_568_low)/(G6PdhUC_15_488_peak/G6PdhUC_15_568_peak)))
G6PdhUC_15_btl<-c((G6PdhUC_15_488_base/G6PdhUC_15_568_base)/(G6PdhUC_15_488_low/G6PdhUC_15_568_low))
G6PdhUC_15_btp<-c((G6PdhUC_15_488_base/G6PdhUC_15_568_base)/(G6PdhUC_15_488_peak/G6PdhUC_15_568_peak))

pHerry_G6PdhUC_15_base<-c(mean(G6PdhUC_15_488_base/G6PdhUC_15_568_base))               
pHerry_G6PdhUC_15_bpl<-c(mean(G6PdhUC_15_bpl))
pHerry_G6PdhUC_15_blp<-c(mean(G6PdhUC_15_blp))
pHerry_G6PdhUC_15_btl<-c(mean(G6PdhUC_15_btl))
pHerry_G6PdhUC_15_btp<-c(mean(G6PdhUC_15_btp))




a16<-c(G6Pdh[,61])
b16<-c(G6Pdh[,62])
c16<-c(G6Pdh[,63])
d16<-c(G6Pdh[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
G6PdhUC_eyedisc_16<-c(aa16/bb16)

G6PdhUC_16_488_base<-c(aa16[51:60])
G6PdhUC_16_488_low<-c(aa16[111:120])
G6PdhUC_16_488_peak<-c(aa16[76:85])

G6PdhUC_16_568_base<-c(bb16[51:60])
G6PdhUC_16_568_low<-c(bb16[111:120])
G6PdhUC_16_568_peak<-c(bb16[76:85])

G6PdhUC_16_bpl<-c((G6PdhUC_16_488_base/G6PdhUC_16_568_base)/((G6PdhUC_16_488_peak/G6PdhUC_16_568_peak)/(G6PdhUC_16_488_low/G6PdhUC_16_568_low)))
G6PdhUC_16_blp<-c((G6PdhUC_16_488_base/G6PdhUC_16_568_base)/((G6PdhUC_16_488_low/G6PdhUC_16_568_low)/(G6PdhUC_16_488_peak/G6PdhUC_16_568_peak)))
G6PdhUC_16_btl<-c((G6PdhUC_16_488_base/G6PdhUC_16_568_base)/(G6PdhUC_16_488_low/G6PdhUC_16_568_low))
G6PdhUC_16_btp<-c((G6PdhUC_16_488_base/G6PdhUC_16_568_base)/(G6PdhUC_16_488_peak/G6PdhUC_16_568_peak))

pHerry_G6PdhUC_16_base<-c(mean(G6PdhUC_16_488_base/G6PdhUC_16_568_base))               
pHerry_G6PdhUC_16_bpl<-c(mean(G6PdhUC_16_bpl))
pHerry_G6PdhUC_16_blp<-c(mean(G6PdhUC_16_blp))
pHerry_G6PdhUC_16_btl<-c(mean(G6PdhUC_16_btl))
pHerry_G6PdhUC_16_btp<-c(mean(G6PdhUC_16_btp))

a17<-c(G6Pdh[,65])
b17<-c(G6Pdh[,66])
c17<-c(G6Pdh[,67])
d17<-c(G6Pdh[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
G6PdhUC_eyedisc_17<-c(aa17/bb17)

G6PdhUC_17_488_base<-c(aa17[51:60])
G6PdhUC_17_488_low<-c(aa17[111:120])
G6PdhUC_17_488_peak<-c(aa17[76:85])

G6PdhUC_17_568_base<-c(bb17[51:60])
G6PdhUC_17_568_low<-c(bb17[111:120])
G6PdhUC_17_568_peak<-c(bb17[76:85])

G6PdhUC_17_bpl<-c((G6PdhUC_17_488_base/G6PdhUC_17_568_base)/((G6PdhUC_17_488_peak/G6PdhUC_17_568_peak)/(G6PdhUC_17_488_low/G6PdhUC_17_568_low)))
G6PdhUC_17_blp<-c((G6PdhUC_17_488_base/G6PdhUC_17_568_base)/((G6PdhUC_17_488_low/G6PdhUC_17_568_low)/(G6PdhUC_17_488_peak/G6PdhUC_17_568_peak)))
G6PdhUC_17_btl<-c((G6PdhUC_17_488_base/G6PdhUC_17_568_base)/(G6PdhUC_17_488_low/G6PdhUC_17_568_low))
G6PdhUC_17_btp<-c((G6PdhUC_17_488_base/G6PdhUC_17_568_base)/(G6PdhUC_17_488_peak/G6PdhUC_17_568_peak))

pHerry_G6PdhUC_17_base<-c(mean(G6PdhUC_17_488_base/G6PdhUC_17_568_base))               
pHerry_G6PdhUC_17_bpl<-c(mean(G6PdhUC_17_bpl))
pHerry_G6PdhUC_17_blp<-c(mean(G6PdhUC_17_blp))
pHerry_G6PdhUC_17_btl<-c(mean(G6PdhUC_17_btl))
pHerry_G6PdhUC_17_btp<-c(mean(G6PdhUC_17_btp))


a18<-c(G6Pdh[,69])
b18<-c(G6Pdh[,70])
c18<-c(G6Pdh[,71])
d18<-c(G6Pdh[,72])
aa18<-c(a18-b18)
bb18<-c(c18-d18)
G6PdhUC_eyedisc_18<-c(aa18/bb18)

G6PdhUC_18_488_base<-c(aa18[51:60])
G6PdhUC_18_488_low<-c(aa18[111:120])
G6PdhUC_18_488_peak<-c(aa18[76:85])

G6PdhUC_18_568_base<-c(bb18[51:60])
G6PdhUC_18_568_low<-c(bb18[111:120])
G6PdhUC_18_568_peak<-c(bb18[76:85])

G6PdhUC_18_bpl<-c((G6PdhUC_18_488_base/G6PdhUC_18_568_base)/((G6PdhUC_18_488_peak/G6PdhUC_18_568_peak)/(G6PdhUC_18_488_low/G6PdhUC_18_568_low)))
G6PdhUC_18_blp<-c((G6PdhUC_18_488_base/G6PdhUC_18_568_base)/((G6PdhUC_18_488_low/G6PdhUC_18_568_low)/(G6PdhUC_18_488_peak/G6PdhUC_18_568_peak)))
G6PdhUC_18_btl<-c((G6PdhUC_18_488_base/G6PdhUC_18_568_base)/(G6PdhUC_18_488_low/G6PdhUC_18_568_low))
G6PdhUC_18_btp<-c((G6PdhUC_18_488_base/G6PdhUC_18_568_base)/(G6PdhUC_18_488_peak/G6PdhUC_18_568_peak))

pHerry_G6PdhUC_18_base<-c(mean(G6PdhUC_18_488_base/G6PdhUC_18_568_base))               
pHerry_G6PdhUC_18_bpl<-c(mean(G6PdhUC_18_bpl))
pHerry_G6PdhUC_18_blp<-c(mean(G6PdhUC_18_blp))
pHerry_G6PdhUC_18_btl<-c(mean(G6PdhUC_18_btl))
pHerry_G6PdhUC_18_btp<-c(mean(G6PdhUC_18_btp))


a19<-c(G6Pdh[,73])
b19<-c(G6Pdh[,74])
c19<-c(G6Pdh[,75])
d19<-c(G6Pdh[,76])
aa19<-c(a19-b19)
bb19<-c(c19-d19)
G6PdhUC_eyedisc_19<-c(aa19/bb19)

G6PdhUC_19_488_base<-c(aa19[51:60])
G6PdhUC_19_488_low<-c(aa19[111:120])
G6PdhUC_19_488_peak<-c(aa19[76:85])

G6PdhUC_19_568_base<-c(bb19[51:60])
G6PdhUC_19_568_low<-c(bb19[111:120])
G6PdhUC_19_568_peak<-c(bb19[76:85])

G6PdhUC_19_bpl<-c((G6PdhUC_19_488_base/G6PdhUC_19_568_base)/((G6PdhUC_19_488_peak/G6PdhUC_19_568_peak)/(G6PdhUC_19_488_low/G6PdhUC_19_568_low)))
G6PdhUC_19_blp<-c((G6PdhUC_19_488_base/G6PdhUC_19_568_base)/((G6PdhUC_19_488_low/G6PdhUC_19_568_low)/(G6PdhUC_19_488_peak/G6PdhUC_19_568_peak)))
G6PdhUC_19_btl<-c((G6PdhUC_19_488_base/G6PdhUC_19_568_base)/(G6PdhUC_19_488_low/G6PdhUC_19_568_low))
G6PdhUC_19_btp<-c((G6PdhUC_19_488_base/G6PdhUC_19_568_base)/(G6PdhUC_19_488_peak/G6PdhUC_19_568_peak))

pHerry_G6PdhUC_19_base<-c(mean(G6PdhUC_19_488_base/G6PdhUC_19_568_base))               
pHerry_G6PdhUC_19_bpl<-c(mean(G6PdhUC_19_bpl))
pHerry_G6PdhUC_19_blp<-c(mean(G6PdhUC_19_blp))
pHerry_G6PdhUC_19_btl<-c(mean(G6PdhUC_19_btl))
pHerry_G6PdhUC_19_btp<-c(mean(G6PdhUC_19_btp))


a20<-c(G6Pdh[,77])
b20<-c(G6Pdh[,78])
c20<-c(G6Pdh[,79])
d20<-c(G6Pdh[,80])
aa20<-c(a20-b20)
bb20<-c(c20-d20)
G6PdhUC_eyedisc_20<-c(aa20/bb20)

G6PdhUC_20_488_base<-c(aa20[51:60])
G6PdhUC_20_488_low<-c(aa20[111:120])
G6PdhUC_20_488_peak<-c(aa20[76:85])

G6PdhUC_20_568_base<-c(bb20[51:60])
G6PdhUC_20_568_low<-c(bb20[111:120])
G6PdhUC_20_568_peak<-c(bb20[76:85])

G6PdhUC_20_bpl<-c((G6PdhUC_20_488_base/G6PdhUC_20_568_base)/((G6PdhUC_20_488_peak/G6PdhUC_20_568_peak)/(G6PdhUC_20_488_low/G6PdhUC_20_568_low)))
G6PdhUC_20_blp<-c((G6PdhUC_20_488_base/G6PdhUC_20_568_base)/((G6PdhUC_20_488_low/G6PdhUC_20_568_low)/(G6PdhUC_20_488_peak/G6PdhUC_20_568_peak)))
G6PdhUC_20_btl<-c((G6PdhUC_20_488_base/G6PdhUC_20_568_base)/(G6PdhUC_20_488_low/G6PdhUC_20_568_low))
G6PdhUC_20_btp<-c((G6PdhUC_20_488_base/G6PdhUC_20_568_base)/(G6PdhUC_20_488_peak/G6PdhUC_20_568_peak))

pHerry_G6PdhUC_20_base<-c(mean(G6PdhUC_20_488_base/G6PdhUC_20_568_base))               
pHerry_G6PdhUC_20_bpl<-c(mean(G6PdhUC_20_bpl))
pHerry_G6PdhUC_20_blp<-c(mean(G6PdhUC_20_blp))
pHerry_G6PdhUC_20_btl<-c(mean(G6PdhUC_20_btl))
pHerry_G6PdhUC_20_btp<-c(mean(G6PdhUC_20_btp))


a21<-c(G6Pdh[,81])
b21<-c(G6Pdh[,82])
c21<-c(G6Pdh[,83])
d21<-c(G6Pdh[,84])
aa21<-c(a21-b21)
bb21<-c(c21-d21)
G6PdhUC_eyedisc_21<-c(aa21/bb21)

G6PdhUC_21_488_base<-c(aa21[51:60])
G6PdhUC_21_488_low<-c(aa21[111:120])
G6PdhUC_21_488_peak<-c(aa21[76:85])

G6PdhUC_21_568_base<-c(bb21[51:60])
G6PdhUC_21_568_low<-c(bb21[111:120])
G6PdhUC_21_568_peak<-c(bb21[76:85])

G6PdhUC_21_bpl<-c((G6PdhUC_21_488_base/G6PdhUC_21_568_base)/((G6PdhUC_21_488_peak/G6PdhUC_21_568_peak)/(G6PdhUC_21_488_low/G6PdhUC_21_568_low)))
G6PdhUC_21_blp<-c((G6PdhUC_21_488_base/G6PdhUC_21_568_base)/((G6PdhUC_21_488_low/G6PdhUC_21_568_low)/(G6PdhUC_21_488_peak/G6PdhUC_21_568_peak)))
G6PdhUC_21_btl<-c((G6PdhUC_21_488_base/G6PdhUC_21_568_base)/(G6PdhUC_21_488_low/G6PdhUC_21_568_low))
G6PdhUC_21_btp<-c((G6PdhUC_21_488_base/G6PdhUC_21_568_base)/(G6PdhUC_21_488_peak/G6PdhUC_21_568_peak))

pHerry_G6PdhUC_21_base<-c(mean(G6PdhUC_21_488_base/G6PdhUC_21_568_base))               
pHerry_G6PdhUC_21_bpl<-c(mean(G6PdhUC_21_bpl))
pHerry_G6PdhUC_21_blp<-c(mean(G6PdhUC_21_blp))
pHerry_G6PdhUC_21_btl<-c(mean(G6PdhUC_21_btl))
pHerry_G6PdhUC_21_btp<-c(mean(G6PdhUC_21_btp))


a22<-c(G6Pdh[,85])
b22<-c(G6Pdh[,86])
c22<-c(G6Pdh[,87])
d22<-c(G6Pdh[,88])
aa22<-c(a22-b22)
bb22<-c(c22-d22)
G6PdhUC_eyedisc_22<-c(aa22/bb22)

G6PdhUC_22_488_base<-c(aa22[51:60])
G6PdhUC_22_488_low<-c(aa22[111:120])
G6PdhUC_22_488_peak<-c(aa22[76:85])

G6PdhUC_22_568_base<-c(bb22[51:60])
G6PdhUC_22_568_low<-c(bb22[111:120])
G6PdhUC_22_568_peak<-c(bb22[76:85])

G6PdhUC_22_bpl<-c((G6PdhUC_22_488_base/G6PdhUC_22_568_base)/((G6PdhUC_22_488_peak/G6PdhUC_22_568_peak)/(G6PdhUC_22_488_low/G6PdhUC_22_568_low)))
G6PdhUC_22_blp<-c((G6PdhUC_22_488_base/G6PdhUC_22_568_base)/((G6PdhUC_22_488_low/G6PdhUC_22_568_low)/(G6PdhUC_22_488_peak/G6PdhUC_22_568_peak)))
G6PdhUC_22_btl<-c((G6PdhUC_22_488_base/G6PdhUC_22_568_base)/(G6PdhUC_22_488_low/G6PdhUC_22_568_low))
G6PdhUC_22_btp<-c((G6PdhUC_22_488_base/G6PdhUC_22_568_base)/(G6PdhUC_22_488_peak/G6PdhUC_22_568_peak))

pHerry_G6PdhUC_22_base<-c(mean(G6PdhUC_22_488_base/G6PdhUC_22_568_base))               
pHerry_G6PdhUC_22_bpl<-c(mean(G6PdhUC_22_bpl))
pHerry_G6PdhUC_22_blp<-c(mean(G6PdhUC_22_blp))
pHerry_G6PdhUC_22_btl<-c(mean(G6PdhUC_22_btl))
pHerry_G6PdhUC_22_btp<-c(mean(G6PdhUC_22_btp))


pHerry_G6PdhUC_time_course<-c(G6PdhUC_eyedisc_1,G6PdhUC_eyedisc_2,G6PdhUC_eyedisc_3,G6PdhUC_eyedisc_4,G6PdhUC_eyedisc_5,G6PdhUC_eyedisc_6,G6PdhUC_eyedisc_7,G6PdhUC_eyedisc_8,G6PdhUC_eyedisc_9,G6PdhUC_eyedisc_10,G6PdhUC_eyedisc_11,G6PdhUC_eyedisc_15,G6PdhUC_eyedisc_16,G6PdhUC_eyedisc_17,G6PdhUC_eyedisc_18,G6PdhUC_eyedisc_20,G6PdhUC_eyedisc_21,G6PdhUC_eyedisc_21,G6PdhUC_eyedisc_22)
matpHerry_G6PdhUC_time_course<-matrix(pHerry_G6PdhUC_time_course,nrow=120,ncol=19)
mean_pHerry_G6PdhUC_time_course<-c(rowMeans(matpHerry_G6PdhUC_time_course))

pHerry_G6PdhUC_bpl<-c(pHerry_G6PdhUC_1_bpl,pHerry_G6PdhUC_2_bpl,pHerry_G6PdhUC_3_bpl,pHerry_G6PdhUC_4_bpl,pHerry_G6PdhUC_5_bpl,pHerry_G6PdhUC_6_bpl,pHerry_G6PdhUC_7_bpl,pHerry_G6PdhUC_8_bpl,pHerry_G6PdhUC_9_bpl,pHerry_G6PdhUC_10_bpl,pHerry_G6PdhUC_11_bpl,pHerry_G6PdhUC_15_bpl,pHerry_G6PdhUC_16_bpl,pHerry_G6PdhUC_17_bpl,pHerry_G6PdhUC_18_bpl,pHerry_G6PdhUC_19_bpl,pHerry_G6PdhUC_20_bpl,pHerry_G6PdhUC_21_bpl,pHerry_G6PdhUC_22_bpl)
pHerry_G6PdhUC_blp<-c(pHerry_G6PdhUC_1_blp,pHerry_G6PdhUC_2_blp,pHerry_G6PdhUC_3_blp,pHerry_G6PdhUC_4_blp,pHerry_G6PdhUC_5_blp,pHerry_G6PdhUC_6_blp,pHerry_G6PdhUC_7_blp,pHerry_G6PdhUC_8_blp,pHerry_G6PdhUC_9_blp,pHerry_G6PdhUC_10_blp,pHerry_G6PdhUC_11_blp,pHerry_G6PdhUC_15_blp,pHerry_G6PdhUC_16_blp,pHerry_G6PdhUC_17_blp,pHerry_G6PdhUC_18_blp,pHerry_G6PdhUC_19_blp,pHerry_G6PdhUC_20_blp,pHerry_G6PdhUC_21_blp,pHerry_G6PdhUC_22_blp)
pHerry_G6PdhUC_btp<-c(pHerry_G6PdhUC_1_btp,pHerry_G6PdhUC_2_btp,pHerry_G6PdhUC_3_btp,pHerry_G6PdhUC_4_btp,pHerry_G6PdhUC_5_btp,pHerry_G6PdhUC_6_btp,pHerry_G6PdhUC_7_btp,pHerry_G6PdhUC_8_btp,pHerry_G6PdhUC_9_btp,pHerry_G6PdhUC_10_btp,pHerry_G6PdhUC_11_btp,pHerry_G6PdhUC_15_btp,pHerry_G6PdhUC_16_btp,pHerry_G6PdhUC_17_btp,pHerry_G6PdhUC_18_btp,pHerry_G6PdhUC_19_btp,pHerry_G6PdhUC_19_btp,pHerry_G6PdhUC_20_btp,pHerry_G6PdhUC_21_btp,pHerry_G6PdhUC_22_btp)
pHerry_G6PdhUC_btl<-c(pHerry_G6PdhUC_1_btl,pHerry_G6PdhUC_2_btl,pHerry_G6PdhUC_3_btl,pHerry_G6PdhUC_4_btl,pHerry_G6PdhUC_5_btl,pHerry_G6PdhUC_6_btl,pHerry_G6PdhUC_7_btl,pHerry_G6PdhUC_8_btl,pHerry_G6PdhUC_9_btl,pHerry_G6PdhUC_10_btl,pHerry_G6PdhUC_11_btl,pHerry_G6PdhUC_15_btl,pHerry_G6PdhUC_16_btl,pHerry_G6PdhUC_17_btl,pHerry_G6PdhUC_18_btl,pHerry_G6PdhUC_19_btl,pHerry_G6PdhUC_20_btl,pHerry_G6PdhUC_21_btl,pHerry_G6PdhUC_22_btl)
pHerry_G6PdhUC_base<-c(pHerry_G6PdhUC_1_base,pHerry_G6PdhUC_2_base,pHerry_G6PdhUC_3_base,pHerry_G6PdhUC_4_base,pHerry_G6PdhUC_5_base,pHerry_G6PdhUC_6_base,pHerry_G6PdhUC_7_base,pHerry_G6PdhUC_8_base,pHerry_G6PdhUC_9_base,pHerry_G6PdhUC_10_base,pHerry_G6PdhUC_11_base,pHerry_G6PdhUC_15_base,pHerry_G6PdhUC_16_base,pHerry_G6PdhUC_17_base,pHerry_G6PdhUC_18_base,pHerry_G6PdhUC_19_base,pHerry_G6PdhUC_20_base,pHerry_G6PdhUC_21_base,pHerry_G6PdhUC_22_base)
