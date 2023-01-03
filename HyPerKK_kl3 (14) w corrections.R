a1<-c(kl3[,1])
b1<-c(kl3[,2])
c1<-c(kl3[,3])
d1<-c(kl3[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
kl3C_eyedisc_1<-c(bb1/aa1)

slope_kl3C_1_568<-c(bb1[60]-bb1[59],
                    bb1[59]-bb1[58],
                    bb1[58]-bb1[57],
                    bb1[57]-bb1[56],
                    bb1[56]-bb1[55],
                    bb1[55]-bb1[54],
                    bb1[54]-bb1[53],
                    bb1[53]-bb1[52],
                    bb1[52]-bb1[51],
                    bb1[51]-bb1[50])
S_kl3C_1_568<-c(mean(slope_kl3C_1_568))
n_kl3C_1_568_base<-c(bb1[60]-(60*S_kl3C_1_568))
kl3C_1_568_base<-0
for(i in 51:60)
{kl3C_1_568_base<- S_kl3C_1_568*bb1[51:60]+n_kl3C_1_568_base}       # corrects all ten baseline values with the slope

n_kl3C_1_568_peak<-c(bb1[94]-(94*S_kl3C_1_568))
kl3C_1_568_peak<-0
for(i in 85:94)
{kl3C_1_568_peak<- S_kl3C_1_568*bb1[85:94]+n_kl3C_1_568_peak}       # corrects all ten low values with the slope

n_kl3C_1_568_low<-c(bb1[150]-(150*S_kl3C_1_568))
kl3C_1_568_low<-0
for(i in 141:150)
{kl3C_1_568_low<- S_kl3C_1_568*bb1[141:150]+n_kl3C_1_568_low}


slope_kl3C_1_488<-c(aa1[60]-aa1[59],
                    aa1[59]-aa1[58],
                    aa1[58]-aa1[57],
                    aa1[57]-aa1[56],
                    aa1[56]-aa1[55],
                    aa1[55]-aa1[54],
                    aa1[54]-aa1[53],
                    aa1[53]-aa1[52],
                    aa1[52]-aa1[51],
                    aa1[51]-aa1[50])
S_kl3C_1_488<-c(mean(slope_kl3C_1_488))
n_kl3C_1_488<-c(aa1[60]-(60*S_kl3C_1_488))
kl3C_1_488_base<-0
for(i in 51:60)
{kl3C_1_488_base<- S_kl3C_1_488*aa1[51:60]+n_kl3C_1_488}

kl3C_1_488_peak<-0
for(i in 85:94)
{kl3C_1_488_peak<- S_kl3C_1_488*aa1[85:94]+n_kl3C_1_488}

kl3C_1_488_low<-0
for(i in 141:150)
{kl3C_1_488_low<- S_kl3C_1_488*aa1[141:150]+n_kl3C_1_488}

kl3C_1_blp<-c((kl3C_1_568_base/kl3C_1_488_base)/((kl3C_1_568_low/kl3C_1_488_low)/(kl3C_1_568_peak/kl3C_1_488_peak)))
kl3C_1_bpl<-c((kl3C_1_568_base/kl3C_1_488_base)/((kl3C_1_568_peak/kl3C_1_488_peak)/(kl3C_1_568_low/kl3C_1_488_low)))
kl3C_1_btp<-c((kl3C_1_568_base/kl3C_1_488_base)/(kl3C_1_568_peak/kl3C_1_488_peak))
kl3C_1_btl<-c((kl3C_1_568_base/kl3C_1_488_base)/(kl3C_1_568_low/kl3C_1_488_low))

HyPer_kl3C_1_base<-c(mean(kl3C_1_568_base/kl3C_1_488_base)) 
HyPer_kl3C_1_blp<-c(mean(kl3C_1_blp))
HyPer_kl3C_1_bpl<-c(mean(kl3C_1_bpl))
HyPer_kl3C_1_btp<-c(mean(kl3C_1_btp))
HyPer_kl3C_1_btl<-c(mean(kl3C_1_btl))

a2<-c(kl3[,5])
b2<-c(kl3[,6])
c2<-c(kl3[,7])
d2<-c(kl3[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
kl3C_eyedisc_2<-c(bb2/aa2)


slope_kl3C_2_568<-c(bb2[60]-bb2[59],
                    bb2[59]-bb2[58],
                    bb2[58]-bb2[57],
                    bb2[57]-bb2[56],
                    bb2[56]-bb2[55],
                    bb2[55]-bb2[54],
                    bb2[54]-bb2[53],
                    bb2[53]-bb2[52],
                    bb2[52]-bb2[51],
                    bb2[51]-bb2[50])
S_kl3C_2_568<-c(mean(slope_kl3C_2_568))
n_kl3C_2_568_base<-c(bb2[60]-(60*S_kl3C_2_568))
kl3C_2_568_base<-0
for(i in 51:60)
{kl3C_2_568_base<- S_kl3C_2_568*bb2[51:60]+n_kl3C_2_568_base}       # corrects all ten baseline values with the slope

n_kl3C_2_568_peak<-c(bb2[94]-(94*S_kl3C_2_568))
kl3C_2_568_peak<-0
for(i in 85:94)
{kl3C_2_568_peak<- S_kl3C_2_568*bb2[85:94]+n_kl3C_2_568_peak}       # corrects all ten low values with the slope

n_kl3C_2_568_low<-c(bb2[150]-(150*S_kl3C_2_568))
kl3C_2_568_low<-0
for(i in 141:150)
{kl3C_2_568_low<- S_kl3C_2_568*bb2[141:150]+n_kl3C_2_568_low}


slope_kl3C_2_488<-c(aa2[60]-aa2[59],
                    aa2[59]-aa2[58],
                    aa2[58]-aa2[57],
                    aa2[57]-aa2[56],
                    aa2[56]-aa2[55],
                    aa2[55]-aa2[54],
                    aa2[54]-aa2[53],
                    aa2[53]-aa2[52],
                    aa2[52]-aa2[51],
                    aa2[51]-aa2[50])
S_kl3C_2_488<-c(mean(slope_kl3C_2_488))
n_kl3C_2_488<-c(aa2[60]-(60*S_kl3C_2_488))
kl3C_2_488_base<-0
for(i in 51:60)
{kl3C_2_488_base<- S_kl3C_2_488*aa2[51:60]+n_kl3C_2_488}

kl3C_2_488_peak<-0
for(i in 85:94)
{kl3C_2_488_peak<- S_kl3C_2_488*aa2[85:94]+n_kl3C_2_488}

kl3C_2_488_low<-0
for(i in 141:150)
{kl3C_2_488_low<- S_kl3C_2_488*aa2[141:150]+n_kl3C_2_488}

kl3C_2_blp<-c((kl3C_2_568_base/kl3C_2_488_base)/((kl3C_2_568_low/kl3C_2_488_low)/(kl3C_2_568_peak/kl3C_2_488_peak)))
kl3C_2_bpl<-c((kl3C_2_568_base/kl3C_2_488_base)/((kl3C_2_568_peak/kl3C_2_488_peak)/(kl3C_2_568_low/kl3C_2_488_low)))
kl3C_2_btp<-c((kl3C_2_568_base/kl3C_2_488_base)/(kl3C_2_568_peak/kl3C_2_488_peak))
kl3C_2_btl<-c((kl3C_2_568_base/kl3C_2_488_base)/(kl3C_2_568_low/kl3C_2_488_low))

HyPer_kl3C_2_base<-c(mean(kl3C_2_568_base/kl3C_2_488_base)) 
HyPer_kl3C_2_blp<-c(mean(kl3C_2_blp))
HyPer_kl3C_2_bpl<-c(mean(kl3C_2_bpl))
HyPer_kl3C_2_btp<-c(mean(kl3C_2_btp))
HyPer_kl3C_2_btl<-c(mean(kl3C_2_btl))

a3<-c(kl3[,9])
b3<-c(kl3[,10])
c3<-c(kl3[,11])
d3<-c(kl3[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
kl3C_eyedisc_3<-c(bb3/aa3)


slope_kl3C_3_568<-c(bb3[60]-bb3[59],
                    bb3[59]-bb3[58],
                    bb3[58]-bb3[57],
                    bb3[57]-bb3[56],
                    bb3[56]-bb3[55],
                    bb3[55]-bb3[54],
                    bb3[54]-bb3[53],
                    bb3[53]-bb3[52],
                    bb3[52]-bb3[51],
                    bb3[51]-bb3[50])
S_kl3C_3_568<-c(mean(slope_kl3C_3_568))
n_kl3C_3_568_base<-c(bb3[60]-(60*S_kl3C_3_568))
kl3C_3_568_base<-0
for(i in 51:60)
{kl3C_3_568_base<- S_kl3C_3_568*bb3[51:60]+n_kl3C_3_568_base}       # corrects all ten baseline values with the slope

n_kl3C_3_568_peak<-c(bb3[94]-(94*S_kl3C_3_568))
kl3C_3_568_peak<-0
for(i in 85:94)
{kl3C_3_568_peak<- S_kl3C_3_568*bb3[85:94]+n_kl3C_3_568_peak}       # corrects all ten low values with the slope

n_kl3C_3_568_low<-c(bb3[150]-(150*S_kl3C_3_568))
kl3C_3_568_low<-0
for(i in 141:150)
{kl3C_3_568_low<- S_kl3C_3_568*bb3[141:150]+n_kl3C_3_568_low}


slope_kl3C_3_488<-c(aa3[60]-aa3[59],
                    aa3[59]-aa3[58],
                    aa3[58]-aa3[57],
                    aa3[57]-aa3[56],
                    aa3[56]-aa3[55],
                    aa3[55]-aa3[54],
                    aa3[54]-aa3[53],
                    aa3[53]-aa3[52],
                    aa3[52]-aa3[51],
                    aa3[51]-aa3[50])
S_kl3C_3_488<-c(mean(slope_kl3C_3_488))
n_kl3C_3_488<-c(aa3[60]-(60*S_kl3C_3_488))
kl3C_3_488_base<-0
for(i in 51:60)
{kl3C_3_488_base<- S_kl3C_3_488*aa3[51:60]+n_kl3C_3_488}

kl3C_3_488_peak<-0
for(i in 85:94)
{kl3C_3_488_peak<- S_kl3C_3_488*aa3[85:94]+n_kl3C_3_488}

kl3C_3_488_low<-0
for(i in 141:150)
{kl3C_3_488_low<- S_kl3C_3_488*aa3[141:150]+n_kl3C_3_488}

kl3C_3_blp<-c((kl3C_3_568_base/kl3C_3_488_base)/((kl3C_3_568_low/kl3C_3_488_low)/(kl3C_3_568_peak/kl3C_3_488_peak)))
kl3C_3_bpl<-c((kl3C_3_568_base/kl3C_3_488_base)/((kl3C_3_568_peak/kl3C_3_488_peak)/(kl3C_3_568_low/kl3C_3_488_low)))
kl3C_3_btp<-c((kl3C_3_568_base/kl3C_3_488_base)/(kl3C_3_568_peak/kl3C_3_488_peak))
kl3C_3_btl<-c((kl3C_3_568_base/kl3C_3_488_base)/(kl3C_3_568_low/kl3C_3_488_low))

HyPer_kl3C_3_base<-c(mean(kl3C_3_568_base/kl3C_3_488_base)) 
HyPer_kl3C_3_blp<-c(mean(kl3C_3_blp))
HyPer_kl3C_3_bpl<-c(mean(kl3C_3_bpl))
HyPer_kl3C_3_btp<-c(mean(kl3C_3_btp))
HyPer_kl3C_3_btl<-c(mean(kl3C_3_btl))

a4<-c(kl3[,13])
b4<-c(kl3[,14])
c4<-c(kl3[,15])
d4<-c(kl3[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
kl3C_eyedisc_4<-c(bb4/aa4)


slope_kl3C_4_568<-c(bb4[60]-bb4[59],
                    bb4[59]-bb4[58],
                    bb4[58]-bb4[57],
                    bb4[57]-bb4[56],
                    bb4[56]-bb4[55],
                    bb4[55]-bb4[54],
                    bb4[54]-bb4[53],
                    bb4[53]-bb4[52],
                    bb4[52]-bb4[51],
                    bb4[51]-bb4[50])
S_kl3C_4_568<-c(mean(slope_kl3C_4_568))
n_kl3C_4_568_base<-c(bb4[60]-(60*S_kl3C_4_568))
kl3C_4_568_base<-0
for(i in 51:60)
{kl3C_4_568_base<- S_kl3C_4_568*bb4[51:60]+n_kl3C_4_568_base}       # corrects all ten baseline values with the slope

n_kl3C_4_568_peak<-c(bb4[94]-(94*S_kl3C_4_568))
kl3C_4_568_peak<-0
for(i in 85:94)
{kl3C_4_568_peak<- S_kl3C_4_568*bb4[85:94]+n_kl3C_4_568_peak}       # corrects all ten low values with the slope

n_kl3C_4_568_low<-c(bb4[150]-(150*S_kl3C_4_568))
kl3C_4_568_low<-0
for(i in 141:150)
{kl3C_4_568_low<- S_kl3C_4_568*bb4[141:150]+n_kl3C_4_568_low}


slope_kl3C_4_488<-c(aa4[60]-aa4[59],
                    aa4[59]-aa4[58],
                    aa4[58]-aa4[57],
                    aa4[57]-aa4[56],
                    aa4[56]-aa4[55],
                    aa4[55]-aa4[54],
                    aa4[54]-aa4[53],
                    aa4[53]-aa4[52],
                    aa4[52]-aa4[51],
                    aa4[51]-aa4[50])
S_kl3C_4_488<-c(mean(slope_kl3C_4_488))
n_kl3C_4_488<-c(aa4[60]-(60*S_kl3C_4_488))
kl3C_4_488_base<-0
for(i in 51:60)
{kl3C_4_488_base<- S_kl3C_4_488*aa4[51:60]+n_kl3C_4_488}

kl3C_4_488_peak<-0
for(i in 85:94)
{kl3C_4_488_peak<- S_kl3C_4_488*aa4[85:94]+n_kl3C_4_488}

kl3C_4_488_low<-0
for(i in 141:150)
{kl3C_4_488_low<- S_kl3C_4_488*aa4[141:150]+n_kl3C_4_488}

kl3C_4_blp<-c((kl3C_4_568_base/kl3C_4_488_base)/((kl3C_4_568_low/kl3C_4_488_low)/(kl3C_4_568_peak/kl3C_4_488_peak)))
kl3C_4_bpl<-c((kl3C_4_568_base/kl3C_4_488_base)/((kl3C_4_568_peak/kl3C_4_488_peak)/(kl3C_4_568_low/kl3C_4_488_low)))
kl3C_4_btp<-c((kl3C_4_568_base/kl3C_4_488_base)/(kl3C_4_568_peak/kl3C_4_488_peak))
kl3C_4_btl<-c((kl3C_4_568_base/kl3C_4_488_base)/(kl3C_4_568_low/kl3C_4_488_low))

HyPer_kl3C_4_base<-c(mean(kl3C_4_568_base/kl3C_4_488_base)) 
HyPer_kl3C_4_blp<-c(mean(kl3C_4_blp))
HyPer_kl3C_4_bpl<-c(mean(kl3C_4_bpl))
HyPer_kl3C_4_btp<-c(mean(kl3C_4_btp))
HyPer_kl3C_4_btl<-c(mean(kl3C_4_btl))

a5<-c(kl3[,17])
b5<-c(kl3[,18])
c5<-c(kl3[,19])
d5<-c(kl3[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
kl3C_eyedisc_5<-c(bb5/aa5)


slope_kl3C_5_568<-c(bb5[60]-bb5[59],
                    bb5[59]-bb5[58],
                    bb5[58]-bb5[57],
                    bb5[57]-bb5[56],
                    bb5[56]-bb5[55],
                    bb5[55]-bb5[54],
                    bb5[54]-bb5[53],
                    bb5[53]-bb5[52],
                    bb5[52]-bb5[51],
                    bb5[51]-bb5[50])
S_kl3C_5_568<-c(mean(slope_kl3C_5_568))
n_kl3C_5_568_base<-c(bb5[60]-(60*S_kl3C_5_568))
kl3C_5_568_base<-0
for(i in 51:60)
{kl3C_5_568_base<- S_kl3C_5_568*bb5[51:60]+n_kl3C_5_568_base}       # corrects all ten baseline values with the slope

n_kl3C_5_568_peak<-c(bb5[94]-(94*S_kl3C_5_568))
kl3C_5_568_peak<-0
for(i in 85:94)
{kl3C_5_568_peak<- S_kl3C_5_568*bb5[85:94]+n_kl3C_5_568_peak}       # corrects all ten low values with the slope

n_kl3C_5_568_low<-c(bb5[150]-(150*S_kl3C_5_568))
kl3C_5_568_low<-0
for(i in 141:150)
{kl3C_5_568_low<- S_kl3C_5_568*bb5[141:150]+n_kl3C_5_568_low}


slope_kl3C_5_488<-c(aa5[60]-aa5[59],
                    aa5[59]-aa5[58],
                    aa5[58]-aa5[57],
                    aa5[57]-aa5[56],
                    aa5[56]-aa5[55],
                    aa5[55]-aa5[54],
                    aa5[54]-aa5[53],
                    aa5[53]-aa5[52],
                    aa5[52]-aa5[51],
                    aa5[51]-aa5[50])
S_kl3C_5_488<-c(mean(slope_kl3C_5_488))
n_kl3C_5_488<-c(aa5[60]-(60*S_kl3C_5_488))
kl3C_5_488_base<-0
for(i in 51:60)
{kl3C_5_488_base<- S_kl3C_5_488*aa5[51:60]+n_kl3C_5_488}

kl3C_5_488_peak<-0
for(i in 85:94)
{kl3C_5_488_peak<- S_kl3C_5_488*aa5[85:94]+n_kl3C_5_488}

kl3C_5_488_low<-0
for(i in 141:150)
{kl3C_5_488_low<- S_kl3C_5_488*aa5[141:150]+n_kl3C_5_488}

kl3C_5_blp<-c((kl3C_5_568_base/kl3C_5_488_base)/((kl3C_5_568_low/kl3C_5_488_low)/(kl3C_5_568_peak/kl3C_5_488_peak)))
kl3C_5_bpl<-c((kl3C_5_568_base/kl3C_5_488_base)/((kl3C_5_568_peak/kl3C_5_488_peak)/(kl3C_5_568_low/kl3C_5_488_low)))
kl3C_5_btp<-c((kl3C_5_568_base/kl3C_5_488_base)/(kl3C_5_568_peak/kl3C_5_488_peak))
kl3C_5_btl<-c((kl3C_5_568_base/kl3C_5_488_base)/(kl3C_5_568_low/kl3C_5_488_low))

HyPer_kl3C_5_base<-c(mean(kl3C_5_568_base/kl3C_5_488_base)) 
HyPer_kl3C_5_blp<-c(mean(kl3C_5_blp))
HyPer_kl3C_5_bpl<-c(mean(kl3C_5_bpl))
HyPer_kl3C_5_btp<-c(mean(kl3C_5_btp))
HyPer_kl3C_5_btl<-c(mean(kl3C_5_btl))

a6<-c(kl3[,21])
b6<-c(kl3[,22])
c6<-c(kl3[,23])
d6<-c(kl3[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
kl3C_eyedisc_6<-c(bb6/aa6)


slope_kl3C_6_568<-c(bb6[60]-bb6[59],
                    bb6[59]-bb6[58],
                    bb6[58]-bb6[57],
                    bb6[57]-bb6[56],
                    bb6[56]-bb6[55],
                    bb6[55]-bb6[54],
                    bb6[54]-bb6[53],
                    bb6[53]-bb6[52],
                    bb6[52]-bb6[51],
                    bb6[51]-bb6[50])
S_kl3C_6_568<-c(mean(slope_kl3C_6_568))
n_kl3C_6_568_base<-c(bb6[60]-(60*S_kl3C_6_568))
kl3C_6_568_base<-0
for(i in 51:60)
{kl3C_6_568_base<- S_kl3C_6_568*bb6[51:60]+n_kl3C_6_568_base}       # corrects all ten baseline values with the slope

n_kl3C_6_568_peak<-c(bb6[94]-(94*S_kl3C_6_568))
kl3C_6_568_peak<-0
for(i in 85:94)
{kl3C_6_568_peak<- S_kl3C_6_568*bb6[85:94]+n_kl3C_6_568_peak}       # corrects all ten low values with the slope

n_kl3C_6_568_low<-c(bb6[150]-(150*S_kl3C_6_568))
kl3C_6_568_low<-0
for(i in 141:150)
{kl3C_6_568_low<- S_kl3C_6_568*bb6[141:150]+n_kl3C_6_568_low}


slope_kl3C_6_488<-c(aa6[60]-aa6[59],
                    aa6[59]-aa6[58],
                    aa6[58]-aa6[57],
                    aa6[57]-aa6[56],
                    aa6[56]-aa6[55],
                    aa6[55]-aa6[54],
                    aa6[54]-aa6[53],
                    aa6[53]-aa6[52],
                    aa6[52]-aa6[51],
                    aa6[51]-aa6[50])
S_kl3C_6_488<-c(mean(slope_kl3C_6_488))
n_kl3C_6_488<-c(aa6[60]-(60*S_kl3C_6_488))
kl3C_6_488_base<-0
for(i in 51:60)
{kl3C_6_488_base<- S_kl3C_6_488*aa6[51:60]+n_kl3C_6_488}

kl3C_6_488_peak<-0
for(i in 85:94)
{kl3C_6_488_peak<- S_kl3C_6_488*aa6[85:94]+n_kl3C_6_488}

kl3C_6_488_low<-0
for(i in 141:150)
{kl3C_6_488_low<- S_kl3C_6_488*aa6[141:150]+n_kl3C_6_488}

kl3C_6_blp<-c((kl3C_6_568_base/kl3C_6_488_base)/((kl3C_6_568_low/kl3C_6_488_low)/(kl3C_6_568_peak/kl3C_6_488_peak)))
kl3C_6_bpl<-c((kl3C_6_568_base/kl3C_6_488_base)/((kl3C_6_568_peak/kl3C_6_488_peak)/(kl3C_6_568_low/kl3C_6_488_low)))
kl3C_6_btp<-c((kl3C_6_568_base/kl3C_6_488_base)/(kl3C_6_568_peak/kl3C_6_488_peak))
kl3C_6_btl<-c((kl3C_6_568_base/kl3C_6_488_base)/(kl3C_6_568_low/kl3C_6_488_low))

HyPer_kl3C_6_base<-c(mean(kl3C_6_568_base/kl3C_6_488_base)) 
HyPer_kl3C_6_blp<-c(mean(kl3C_6_blp))
HyPer_kl3C_6_bpl<-c(mean(kl3C_6_bpl))
HyPer_kl3C_6_btp<-c(mean(kl3C_6_btp))
HyPer_kl3C_6_btl<-c(mean(kl3C_6_btl))

a7<-c(kl3[,25])
b7<-c(kl3[,26])
c7<-c(kl3[,27])
d7<-c(kl3[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
kl3C_eyedisc_7<-c(bb7/aa7)


slope_kl3C_7_568<-c(bb7[60]-bb7[59],
                    bb7[59]-bb7[58],
                    bb7[58]-bb7[57],
                    bb7[57]-bb7[56],
                    bb7[56]-bb7[55],
                    bb7[55]-bb7[54],
                    bb7[54]-bb7[53],
                    bb7[53]-bb7[52],
                    bb7[52]-bb7[51],
                    bb7[51]-bb7[50])
S_kl3C_7_568<-c(mean(slope_kl3C_7_568))
n_kl3C_7_568_base<-c(bb7[60]-(60*S_kl3C_7_568))
kl3C_7_568_base<-0
for(i in 51:60)
{kl3C_7_568_base<- S_kl3C_7_568*bb7[51:60]+n_kl3C_7_568_base}       # corrects all ten baseline values with the slope

n_kl3C_7_568_peak<-c(bb7[94]-(94*S_kl3C_7_568))
kl3C_7_568_peak<-0
for(i in 85:94)
{kl3C_7_568_peak<- S_kl3C_7_568*bb7[85:94]+n_kl3C_7_568_peak}       # corrects all ten low values with the slope

n_kl3C_7_568_low<-c(bb7[150]-(150*S_kl3C_7_568))
kl3C_7_568_low<-0
for(i in 141:150)
{kl3C_7_568_low<- S_kl3C_7_568*bb7[141:150]+n_kl3C_7_568_low}


slope_kl3C_7_488<-c(aa7[60]-aa7[59],
                    aa7[59]-aa7[58],
                    aa7[58]-aa7[57],
                    aa7[57]-aa7[56],
                    aa7[56]-aa7[55],
                    aa7[55]-aa7[54],
                    aa7[54]-aa7[53],
                    aa7[53]-aa7[52],
                    aa7[52]-aa7[51],
                    aa7[51]-aa7[50])
S_kl3C_7_488<-c(mean(slope_kl3C_7_488))
n_kl3C_7_488<-c(aa7[60]-(60*S_kl3C_7_488))
kl3C_7_488_base<-0
for(i in 51:60)
{kl3C_7_488_base<- S_kl3C_7_488*aa7[51:60]+n_kl3C_7_488}

kl3C_7_488_peak<-0
for(i in 85:94)
{kl3C_7_488_peak<- S_kl3C_7_488*aa7[85:94]+n_kl3C_7_488}

kl3C_7_488_low<-0
for(i in 141:150)
{kl3C_7_488_low<- S_kl3C_7_488*aa7[141:150]+n_kl3C_7_488}

kl3C_7_blp<-c((kl3C_7_568_base/kl3C_7_488_base)/((kl3C_7_568_low/kl3C_7_488_low)/(kl3C_7_568_peak/kl3C_7_488_peak)))
kl3C_7_bpl<-c((kl3C_7_568_base/kl3C_7_488_base)/((kl3C_7_568_peak/kl3C_7_488_peak)/(kl3C_7_568_low/kl3C_7_488_low)))
kl3C_7_btp<-c((kl3C_7_568_base/kl3C_7_488_base)/(kl3C_7_568_peak/kl3C_7_488_peak))
kl3C_7_btl<-c((kl3C_7_568_base/kl3C_7_488_base)/(kl3C_7_568_low/kl3C_7_488_low))

HyPer_kl3C_7_base<-c(mean(kl3C_7_568_base/kl3C_7_488_base)) 
HyPer_kl3C_7_blp<-c(mean(kl3C_7_blp))
HyPer_kl3C_7_bpl<-c(mean(kl3C_7_bpl))
HyPer_kl3C_7_btp<-c(mean(kl3C_7_btp))
HyPer_kl3C_7_btl<-c(mean(kl3C_7_btl))




a9<-c(kl3[,33])
b9<-c(kl3[,34])
c9<-c(kl3[,35])
d9<-c(kl3[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
kl3C_eyedisc_9<-c(bb9/aa9)


slope_kl3C_9_568<-c(bb9[60]-bb9[59],
                    bb9[59]-bb9[58],
                    bb9[58]-bb9[57],
                    bb9[57]-bb9[56],
                    bb9[56]-bb9[55],
                    bb9[55]-bb9[54],
                    bb9[54]-bb9[53],
                    bb9[53]-bb9[52],
                    bb9[52]-bb9[51],
                    bb9[51]-bb9[50])
S_kl3C_9_568<-c(mean(slope_kl3C_9_568))
n_kl3C_9_568_base<-c(bb9[60]-(60*S_kl3C_9_568))
kl3C_9_568_base<-0
for(i in 51:60)
{kl3C_9_568_base<- S_kl3C_9_568*bb9[51:60]+n_kl3C_9_568_base}       # corrects all ten baseline values with the slope

n_kl3C_9_568_peak<-c(bb9[94]-(94*S_kl3C_9_568))
kl3C_9_568_peak<-0
for(i in 85:94)
{kl3C_9_568_peak<- S_kl3C_9_568*bb9[85:94]+n_kl3C_9_568_peak}       # corrects all ten low values with the slope

n_kl3C_9_568_low<-c(bb9[150]-(150*S_kl3C_9_568))
kl3C_9_568_low<-0
for(i in 141:150)
{kl3C_9_568_low<- S_kl3C_9_568*bb9[141:150]+n_kl3C_9_568_low}


slope_kl3C_9_488<-c(aa9[60]-aa9[59],
                    aa9[59]-aa9[58],
                    aa9[58]-aa9[57],
                    aa9[57]-aa9[56],
                    aa9[56]-aa9[55],
                    aa9[55]-aa9[54],
                    aa9[54]-aa9[53],
                    aa9[53]-aa9[52],
                    aa9[52]-aa9[51],
                    aa9[51]-aa9[50])
S_kl3C_9_488<-c(mean(slope_kl3C_9_488))
n_kl3C_9_488<-c(aa9[60]-(60*S_kl3C_9_488))
kl3C_9_488_base<-0
for(i in 51:60)
{kl3C_9_488_base<- S_kl3C_9_488*aa9[51:60]+n_kl3C_9_488}

kl3C_9_488_peak<-0
for(i in 85:94)
{kl3C_9_488_peak<- S_kl3C_9_488*aa9[85:94]+n_kl3C_9_488}

kl3C_9_488_low<-0
for(i in 141:150)
{kl3C_9_488_low<- S_kl3C_9_488*aa9[141:150]+n_kl3C_9_488}

kl3C_9_blp<-c((kl3C_9_568_base/kl3C_9_488_base)/((kl3C_9_568_low/kl3C_9_488_low)/(kl3C_9_568_peak/kl3C_9_488_peak)))
kl3C_9_bpl<-c((kl3C_9_568_base/kl3C_9_488_base)/((kl3C_9_568_peak/kl3C_9_488_peak)/(kl3C_9_568_low/kl3C_9_488_low)))
kl3C_9_btp<-c((kl3C_9_568_base/kl3C_9_488_base)/(kl3C_9_568_peak/kl3C_9_488_peak))
kl3C_9_btl<-c((kl3C_9_568_base/kl3C_9_488_base)/(kl3C_9_568_low/kl3C_9_488_low))

HyPer_kl3C_9_base<-c(mean(kl3C_9_568_base/kl3C_9_488_base)) 
HyPer_kl3C_9_blp<-c(mean(kl3C_9_blp))
HyPer_kl3C_9_bpl<-c(mean(kl3C_9_bpl))
HyPer_kl3C_9_btp<-c(mean(kl3C_9_btp))
HyPer_kl3C_9_btl<-c(mean(kl3C_9_btl))

a10<-c(kl3[,37])
b10<-c(kl3[,38])
c10<-c(kl3[,39])
d10<-c(kl3[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
kl3C_eyedisc_10<-c(bb10/aa10)


slope_kl3C_10_568<-c(bb10[60]-bb10[59],
                     bb10[59]-bb10[58],
                     bb10[58]-bb10[57],
                     bb10[57]-bb10[56],
                     bb10[56]-bb10[55],
                     bb10[55]-bb10[54],
                     bb10[54]-bb10[53],
                     bb10[53]-bb10[52],
                     bb10[52]-bb10[51],
                     bb10[51]-bb10[50])
S_kl3C_10_568<-c(mean(slope_kl3C_10_568))
n_kl3C_10_568_base<-c(bb10[60]-(60*S_kl3C_10_568))
kl3C_10_568_base<-0
for(i in 51:60)
{kl3C_10_568_base<- S_kl3C_10_568*bb10[51:60]+n_kl3C_10_568_base}       # corrects all ten baseline values with the slope

n_kl3C_10_568_peak<-c(bb10[94]-(94*S_kl3C_10_568))
kl3C_10_568_peak<-0
for(i in 85:94)
{kl3C_10_568_peak<- S_kl3C_10_568*bb10[85:94]+n_kl3C_10_568_peak}       # corrects all ten low values with the slope

n_kl3C_10_568_low<-c(bb10[150]-(150*S_kl3C_10_568))
kl3C_10_568_low<-0
for(i in 141:150)
{kl3C_10_568_low<- S_kl3C_10_568*bb10[141:150]+n_kl3C_10_568_low}


slope_kl3C_10_488<-c(aa10[60]-aa10[59],
                     aa10[59]-aa10[58],
                     aa10[58]-aa10[57],
                     aa10[57]-aa10[56],
                     aa10[56]-aa10[55],
                     aa10[55]-aa10[54],
                     aa10[54]-aa10[53],
                     aa10[53]-aa10[52],
                     aa10[52]-aa10[51],
                     aa10[51]-aa10[50])
S_kl3C_10_488<-c(mean(slope_kl3C_10_488))
n_kl3C_10_488<-c(aa10[60]-(60*S_kl3C_10_488))
kl3C_10_488_base<-0
for(i in 51:60)
{kl3C_10_488_base<- S_kl3C_10_488*aa10[51:60]+n_kl3C_10_488}

kl3C_10_488_peak<-0
for(i in 85:94)
{kl3C_10_488_peak<- S_kl3C_10_488*aa10[85:94]+n_kl3C_10_488}

kl3C_10_488_low<-0
for(i in 141:150)
{kl3C_10_488_low<- S_kl3C_10_488*aa10[141:150]+n_kl3C_10_488}

kl3C_10_blp<-c((kl3C_10_568_base/kl3C_10_488_base)/((kl3C_10_568_low/kl3C_10_488_low)/(kl3C_10_568_peak/kl3C_10_488_peak)))
kl3C_10_bpl<-c((kl3C_10_568_base/kl3C_10_488_base)/((kl3C_10_568_peak/kl3C_10_488_peak)/(kl3C_10_568_low/kl3C_10_488_low)))
kl3C_10_btp<-c((kl3C_10_568_base/kl3C_10_488_base)/(kl3C_10_568_peak/kl3C_10_488_peak))
kl3C_10_btl<-c((kl3C_10_568_base/kl3C_10_488_base)/(kl3C_10_568_low/kl3C_10_488_low))

HyPer_kl3C_10_base<-c(mean(kl3C_10_568_base/kl3C_10_488_base)) 
HyPer_kl3C_10_blp<-c(mean(kl3C_10_blp))
HyPer_kl3C_10_bpl<-c(mean(kl3C_10_bpl))
HyPer_kl3C_10_btp<-c(mean(kl3C_10_btp))
HyPer_kl3C_10_btl<-c(mean(kl3C_10_btl))

a11<-c(kl3[,41])
b11<-c(kl3[,42])
c11<-c(kl3[,43])
d11<-c(kl3[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
kl3C_eyedisc_11<-c(bb11/aa11)


slope_kl3C_11_568<-c(bb11[60]-bb11[59],
                     bb11[59]-bb11[58],
                     bb11[58]-bb11[57],
                     bb11[57]-bb11[56],
                     bb11[56]-bb11[55],
                     bb11[55]-bb11[54],
                     bb11[54]-bb11[53],
                     bb11[53]-bb11[52],
                     bb11[52]-bb11[51],
                     bb11[51]-bb11[50])
S_kl3C_11_568<-c(mean(slope_kl3C_11_568))
n_kl3C_11_568_base<-c(bb11[60]-(60*S_kl3C_11_568))
kl3C_11_568_base<-0
for(i in 51:60)
{kl3C_11_568_base<- S_kl3C_11_568*bb11[51:60]+n_kl3C_11_568_base}       # corrects all ten baseline values with the slope

n_kl3C_11_568_peak<-c(bb11[94]-(94*S_kl3C_11_568))
kl3C_11_568_peak<-0
for(i in 85:94)
{kl3C_11_568_peak<- S_kl3C_11_568*bb11[85:94]+n_kl3C_11_568_peak}       # corrects all ten low values with the slope

n_kl3C_11_568_low<-c(bb11[150]-(150*S_kl3C_11_568))
kl3C_11_568_low<-0
for(i in 141:150)
{kl3C_11_568_low<- S_kl3C_11_568*bb11[141:150]+n_kl3C_11_568_low}


slope_kl3C_11_488<-c(aa11[60]-aa11[59],
                     aa11[59]-aa11[58],
                     aa11[58]-aa11[57],
                     aa11[57]-aa11[56],
                     aa11[56]-aa11[55],
                     aa11[55]-aa11[54],
                     aa11[54]-aa11[53],
                     aa11[53]-aa11[52],
                     aa11[52]-aa11[51],
                     aa11[51]-aa11[50])
S_kl3C_11_488<-c(mean(slope_kl3C_11_488))
n_kl3C_11_488<-c(aa11[60]-(60*S_kl3C_11_488))
kl3C_11_488_base<-0
for(i in 51:60)
{kl3C_11_488_base<- S_kl3C_11_488*aa11[51:60]+n_kl3C_11_488}

kl3C_11_488_peak<-0
for(i in 85:94)
{kl3C_11_488_peak<- S_kl3C_11_488*aa11[85:94]+n_kl3C_11_488}

kl3C_11_488_low<-0
for(i in 141:150)
{kl3C_11_488_low<- S_kl3C_11_488*aa1[141:150]+n_kl3C_11_488}

kl3C_11_blp<-c((kl3C_11_568_base/kl3C_11_488_base)/((kl3C_11_568_low/kl3C_11_488_low)/(kl3C_11_568_peak/kl3C_11_488_peak)))
kl3C_11_bpl<-c((kl3C_11_568_base/kl3C_11_488_base)/((kl3C_11_568_peak/kl3C_11_488_peak)/(kl3C_11_568_low/kl3C_11_488_low)))
kl3C_11_btp<-c((kl3C_11_568_base/kl3C_11_488_base)/(kl3C_11_568_peak/kl3C_11_488_peak))
kl3C_11_btl<-c((kl3C_11_568_base/kl3C_11_488_base)/(kl3C_11_568_low/kl3C_11_488_low))

HyPer_kl3C_11_base<-c(mean(kl3C_11_568_base/kl3C_11_488_base)) 
HyPer_kl3C_11_blp<-c(mean(kl3C_11_blp))
HyPer_kl3C_11_bpl<-c(mean(kl3C_11_bpl))
HyPer_kl3C_11_btp<-c(mean(kl3C_11_btp))
HyPer_kl3C_11_btl<-c(mean(kl3C_11_btl))

a12<-c(kl3[,45])
b12<-c(kl3[,46])
c12<-c(kl3[,47])
d12<-c(kl3[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
kl3C_eyedisc_12<-c(bb12/aa12)

slope_kl3C_12_568<-c(bb12[60]-bb12[59],
                     bb12[59]-bb12[58],
                     bb12[58]-bb12[57],
                     bb12[57]-bb12[56],
                     bb12[56]-bb12[55],
                     bb12[55]-bb12[54],
                     bb12[54]-bb12[53],
                     bb12[53]-bb12[52],
                     bb12[52]-bb12[51],
                     bb12[51]-bb12[50])
S_kl3C_12_568<-c(mean(slope_kl3C_12_568))
n_kl3C_12_568_base<-c(bb12[60]-(60*S_kl3C_12_568))
kl3C_12_568_base<-0
for(i in 51:60)
{kl3C_12_568_base<- S_kl3C_12_568*bb12[51:60]+n_kl3C_12_568_base}       # corrects all ten baseline values with the slope

n_kl3C_12_568_peak<-c(bb12[94]-(94*S_kl3C_12_568))
kl3C_12_568_peak<-0
for(i in 85:94)
{kl3C_12_568_peak<- S_kl3C_12_568*bb12[85:94]+n_kl3C_12_568_peak}       # corrects all ten low values with the slope

n_kl3C_12_568_low<-c(bb12[150]-(150*S_kl3C_12_568))
kl3C_12_568_low<-0
for(i in 141:150)
{kl3C_12_568_low<- S_kl3C_12_568*bb12[141:150]+n_kl3C_12_568_low}


slope_kl3C_12_488<-c(aa12[60]-aa12[59],
                     aa12[59]-aa12[58],
                     aa12[58]-aa12[57],
                     aa12[57]-aa12[56],
                     aa12[56]-aa12[55],
                     aa12[55]-aa12[54],
                     aa12[54]-aa12[53],
                     aa12[53]-aa12[52],
                     aa12[52]-aa12[51],
                     aa12[51]-aa12[50])
S_kl3C_12_488<-c(mean(slope_kl3C_12_488))
n_kl3C_12_488<-c(aa12[60]-(60*S_kl3C_12_488))
kl3C_12_488_base<-0
for(i in 51:60)
{kl3C_12_488_base<- S_kl3C_12_488*aa12[51:60]+n_kl3C_12_488}

kl3C_12_488_peak<-0
for(i in 85:94)
{kl3C_12_488_peak<- S_kl3C_12_488*aa12[85:94]+n_kl3C_12_488}

kl3C_12_488_low<-0
for(i in 141:150)
{kl3C_12_488_low<- S_kl3C_12_488*aa12[141:150]+n_kl3C_12_488}

kl3C_12_blp<-c((kl3C_12_568_base/kl3C_12_488_base)/((kl3C_12_568_low/kl3C_12_488_low)/(kl3C_12_568_peak/kl3C_12_488_peak)))
kl3C_12_bpl<-c((kl3C_12_568_base/kl3C_12_488_base)/((kl3C_12_568_peak/kl3C_12_488_peak)/(kl3C_12_568_low/kl3C_12_488_low)))
kl3C_12_btp<-c((kl3C_12_568_base/kl3C_12_488_base)/(kl3C_12_568_peak/kl3C_12_488_peak))
kl3C_12_btl<-c((kl3C_12_568_base/kl3C_12_488_base)/(kl3C_12_568_low/kl3C_12_488_low))

HyPer_kl3C_12_base<-c(mean(kl3C_12_568_base/kl3C_12_488_base)) 
HyPer_kl3C_12_blp<-c(mean(kl3C_12_blp))
HyPer_kl3C_12_bpl<-c(mean(kl3C_12_bpl))
HyPer_kl3C_12_btp<-c(mean(kl3C_12_btp))
HyPer_kl3C_12_btl<-c(mean(kl3C_12_btl))


a13<-c(kl3[,49])
b13<-c(kl3[,50])
c13<-c(kl3[,51])
d13<-c(kl3[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
kl3C_eyedisc_13<-c(bb13/aa13)

slope_kl3C_13_568<-c(bb13[60]-bb13[59],
                     bb13[59]-bb13[58],
                     bb13[58]-bb13[57],
                     bb13[57]-bb13[56],
                     bb13[56]-bb13[55],
                     bb13[55]-bb13[54],
                     bb13[54]-bb13[53],
                     bb13[53]-bb13[52],
                     bb13[52]-bb13[51],
                     bb13[51]-bb13[50])
S_kl3C_13_568<-c(mean(slope_kl3C_13_568))
n_kl3C_13_568_base<-c(bb13[60]-(60*S_kl3C_13_568))
kl3C_13_568_base<-0
for(i in 51:60)
{kl3C_13_568_base<- S_kl3C_13_568*bb13[51:60]+n_kl3C_13_568_base}       # corrects all ten baseline values with the slope

n_kl3C_13_568_peak<-c(bb13[94]-(94*S_kl3C_13_568))
kl3C_13_568_peak<-0
for(i in 85:94)
{kl3C_13_568_peak<- S_kl3C_13_568*bb13[85:94]+n_kl3C_13_568_peak}       # corrects all ten low values with the slope

n_kl3C_13_568_low<-c(bb13[150]-(150*S_kl3C_13_568))
kl3C_13_568_low<-0
for(i in 141:150)
{kl3C_13_568_low<- S_kl3C_13_568*bb13[141:150]+n_kl3C_13_568_low}


slope_kl3C_13_488<-c(aa13[60]-aa13[59],
                     aa13[59]-aa13[58],
                     aa13[58]-aa13[57],
                     aa13[57]-aa13[56],
                     aa13[56]-aa13[55],
                     aa13[55]-aa13[54],
                     aa13[54]-aa13[53],
                     aa13[53]-aa13[52],
                     aa13[52]-aa13[51],
                     aa13[51]-aa13[50])
S_kl3C_13_488<-c(mean(slope_kl3C_13_488))
n_kl3C_13_488<-c(aa13[60]-(60*S_kl3C_13_488))
kl3C_13_488_base<-0
for(i in 51:60)
{kl3C_13_488_base<- S_kl3C_13_488*aa13[51:60]+n_kl3C_13_488}

kl3C_13_488_peak<-0
for(i in 85:94)
{kl3C_13_488_peak<- S_kl3C_13_488*aa13[85:94]+n_kl3C_13_488}

kl3C_13_488_low<-0
for(i in 141:150)
{kl3C_13_488_low<- S_kl3C_13_488*aa13[141:150]+n_kl3C_13_488}

kl3C_13_blp<-c((kl3C_13_568_base/kl3C_13_488_base)/((kl3C_13_568_low/kl3C_13_488_low)/(kl3C_13_568_peak/kl3C_13_488_peak)))
kl3C_13_bpl<-c((kl3C_13_568_base/kl3C_13_488_base)/((kl3C_13_568_peak/kl3C_13_488_peak)/(kl3C_13_568_low/kl3C_13_488_low)))
kl3C_13_btp<-c((kl3C_13_568_base/kl3C_13_488_base)/(kl3C_13_568_peak/kl3C_13_488_peak))
kl3C_13_btl<-c((kl3C_13_568_base/kl3C_13_488_base)/(kl3C_13_568_low/kl3C_13_488_low))

HyPer_kl3C_13_base<-c(mean(kl3C_13_568_base/kl3C_13_488_base)) 
HyPer_kl3C_13_blp<-c(mean(kl3C_13_blp))
HyPer_kl3C_13_bpl<-c(mean(kl3C_13_bpl))
HyPer_kl3C_13_btp<-c(mean(kl3C_13_btp))
HyPer_kl3C_13_btl<-c(mean(kl3C_13_btl))

a14<-c(kl3[,53])
b14<-c(kl3[,54])
c14<-c(kl3[,55])
d14<-c(kl3[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
kl3C_eyedisc_14<-c(bb14/aa14)

slope_kl3C_14_568<-c(bb14[60]-bb14[59],
                     bb14[59]-bb14[58],
                     bb14[58]-bb14[57],
                     bb14[57]-bb14[56],
                     bb14[56]-bb14[55],
                     bb14[55]-bb14[54],
                     bb14[54]-bb14[53],
                     bb14[53]-bb14[52],
                     bb14[52]-bb14[51],
                     bb14[51]-bb14[50])
S_kl3C_14_568<-c(mean(slope_kl3C_14_568))
n_kl3C_14_568_base<-c(bb14[60]-(60*S_kl3C_14_568))
kl3C_14_568_base<-0
for(i in 51:60)
{kl3C_14_568_base<- S_kl3C_14_568*bb14[51:60]+n_kl3C_14_568_base}       # corrects all ten baseline values with the slope

n_kl3C_14_568_peak<-c(bb14[94]-(94*S_kl3C_14_568))
kl3C_14_568_peak<-0
for(i in 85:94)
{kl3C_14_568_peak<- S_kl3C_14_568*bb14[85:94]+n_kl3C_14_568_peak}       # corrects all ten low values with the slope

n_kl3C_14_568_low<-c(bb14[150]-(150*S_kl3C_14_568))
kl3C_14_568_low<-0
for(i in 141:150)
{kl3C_14_568_low<- S_kl3C_14_568*bb14[141:150]+n_kl3C_14_568_low}


slope_kl3C_14_488<-c(aa14[60]-aa14[59],
                     aa14[59]-aa14[58],
                     aa14[58]-aa14[57],
                     aa14[57]-aa14[56],
                     aa14[56]-aa14[55],
                     aa14[55]-aa14[54],
                     aa14[54]-aa14[53],
                     aa14[53]-aa14[52],
                     aa14[52]-aa14[51],
                     aa14[51]-aa14[50])
S_kl3C_14_488<-c(mean(slope_kl3C_14_488))
n_kl3C_14_488<-c(aa14[60]-(60*S_kl3C_14_488))
kl3C_14_488_base<-0
for(i in 51:60)
{kl3C_14_488_base<- S_kl3C_14_488*aa14[51:60]+n_kl3C_14_488}

kl3C_14_488_peak<-0
for(i in 85:94)
{kl3C_14_488_peak<- S_kl3C_14_488*aa14[85:94]+n_kl3C_14_488}

kl3C_14_488_low<-0
for(i in 141:150)
{kl3C_14_488_low<- S_kl3C_14_488*aa14[141:150]+n_kl3C_14_488}

kl3C_14_blp<-c((kl3C_14_568_base/kl3C_14_488_base)/((kl3C_14_568_low/kl3C_14_488_low)/(kl3C_14_568_peak/kl3C_14_488_peak)))
kl3C_14_bpl<-c((kl3C_14_568_base/kl3C_14_488_base)/((kl3C_14_568_peak/kl3C_14_488_peak)/(kl3C_14_568_low/kl3C_14_488_low)))
kl3C_14_btp<-c((kl3C_14_568_base/kl3C_14_488_base)/(kl3C_14_568_peak/kl3C_14_488_peak))
kl3C_14_btl<-c((kl3C_14_568_base/kl3C_14_488_base)/(kl3C_14_568_low/kl3C_14_488_low))

HyPer_kl3C_14_base<-c(mean(kl3C_14_568_base/kl3C_14_488_base)) 
HyPer_kl3C_14_blp<-c(mean(kl3C_14_blp))
HyPer_kl3C_14_bpl<-c(mean(kl3C_14_bpl))
HyPer_kl3C_14_btp<-c(mean(kl3C_14_btp))
HyPer_kl3C_14_btl<-c(mean(kl3C_14_btl))

a15<-c(kl3[,57])
b15<-c(kl3[,58])
c15<-c(kl3[,59])
d15<-c(kl3[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
kl3C_eyedisc_15<-c(bb15/aa15)

slope_kl3C_15_568<-c(bb15[60]-bb15[59],
                     bb15[59]-bb15[58],
                     bb15[58]-bb15[57],
                     bb15[57]-bb15[56],
                     bb15[56]-bb15[55],
                     bb15[55]-bb15[54],
                     bb15[54]-bb15[53],
                     bb15[53]-bb15[52],
                     bb15[52]-bb15[51],
                     bb15[51]-bb15[50])
S_kl3C_15_568<-c(mean(slope_kl3C_15_568))
n_kl3C_15_568_base<-c(bb15[60]-(60*S_kl3C_15_568))
kl3C_15_568_base<-0
for(i in 51:60)
{kl3C_15_568_base<- S_kl3C_15_568*bb15[51:60]+n_kl3C_15_568_base}       # corrects all ten baseline values with the slope

n_kl3C_15_568_peak<-c(bb15[94]-(94*S_kl3C_15_568))
kl3C_15_568_peak<-0
for(i in 85:94)
{kl3C_15_568_peak<- S_kl3C_15_568*bb15[85:94]+n_kl3C_15_568_peak}       # corrects all ten low values with the slope

n_kl3C_15_568_low<-c(bb15[150]-(150*S_kl3C_15_568))
kl3C_15_568_low<-0
for(i in 141:150)
{kl3C_15_568_low<- S_kl3C_15_568*bb15[141:150]+n_kl3C_15_568_low}


slope_kl3C_15_488<-c(aa15[60]-aa15[59],
                     aa15[59]-aa15[58],
                     aa15[58]-aa15[57],
                     aa15[57]-aa15[56],
                     aa15[56]-aa15[55],
                     aa15[55]-aa15[54],
                     aa15[54]-aa15[53],
                     aa15[53]-aa15[52],
                     aa15[52]-aa15[51],
                     aa15[51]-aa15[50])
S_kl3C_15_488<-c(mean(slope_kl3C_15_488))
n_kl3C_15_488<-c(aa15[60]-(60*S_kl3C_15_488))
kl3C_15_488_base<-0
for(i in 51:60)
{kl3C_15_488_base<- S_kl3C_15_488*aa15[51:60]+n_kl3C_15_488}

kl3C_15_488_peak<-0
for(i in 85:94)
{kl3C_15_488_peak<- S_kl3C_15_488*aa15[85:94]+n_kl3C_15_488}

kl3C_15_488_low<-0
for(i in 141:150)
{kl3C_15_488_low<- S_kl3C_15_488*aa15[141:150]+n_kl3C_15_488}

kl3C_15_blp<-c((kl3C_15_568_base/kl3C_15_488_base)/((kl3C_15_568_low/kl3C_15_488_low)/(kl3C_15_568_peak/kl3C_15_488_peak)))
kl3C_15_bpl<-c((kl3C_15_568_base/kl3C_15_488_base)/((kl3C_15_568_peak/kl3C_15_488_peak)/(kl3C_15_568_low/kl3C_15_488_low)))
kl3C_15_btp<-c((kl3C_15_568_base/kl3C_15_488_base)/(kl3C_15_568_peak/kl3C_15_488_peak))
kl3C_15_btl<-c((kl3C_15_568_base/kl3C_15_488_base)/(kl3C_15_568_low/kl3C_15_488_low))

HyPer_kl3C_15_base<-c(mean(kl3C_15_568_base/kl3C_15_488_base)) 
HyPer_kl3C_15_blp<-c(mean(kl3C_15_blp))
HyPer_kl3C_15_bpl<-c(mean(kl3C_15_bpl))
HyPer_kl3C_15_btp<-c(mean(kl3C_15_btp))
HyPer_kl3C_15_btl<-c(mean(kl3C_15_btl))

HyPer_kl3C_time_course<-c(kl3C_eyedisc_1,kl3C_eyedisc_2,kl3C_eyedisc_3,kl3C_eyedisc_4,kl3C_eyedisc_5,kl3C_eyedisc_6,kl3C_eyedisc_7,kl3C_eyedisc_9,kl3C_eyedisc_10,kl3C_eyedisc_11,kl3C_eyedisc_12,kl3C_eyedisc_13,kl3C_eyedisc_14,kl3C_eyedisc_15)
matHyPer_kl3C_time_course<-matrix(HyPer_kl3C_time_course,nrow=150,ncol=14)
mean_HyPer_kl3C_time_course<-c(rowMeans(matHyPer_kl3C_time_course))

HyPer_kl3C_base<-c(HyPer_kl3C_1_base,HyPer_kl3C_2_base,HyPer_kl3C_3_base,HyPer_kl3C_4_base,HyPer_kl3C_5_base,HyPer_kl3C_6_base,HyPer_kl3C_7_base,HyPer_kl3C_9_base,HyPer_kl3C_10_base,HyPer_kl3C_11_base,HyPer_kl3C_12_base,HyPer_kl3C_13_base,HyPer_kl3C_14_base,HyPer_kl3C_15_base)



