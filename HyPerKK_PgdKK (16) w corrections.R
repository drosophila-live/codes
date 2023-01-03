a1<-c(Pgd[,1])
b1<-c(Pgd[,2])
c1<-c(Pgd[,3])
d1<-c(Pgd[,4])
aa1<-c(a1-b1)
bb1<-c(c1-d1)
PgdC_eyedisc_1<-c(bb1/aa1)

slope_PgdC_1_568<-c(bb1[60]-bb1[59],
                    bb1[59]-bb1[58],
                    bb1[58]-bb1[57],
                    bb1[57]-bb1[56],
                    bb1[56]-bb1[55],
                    bb1[55]-bb1[54],
                    bb1[54]-bb1[53],
                    bb1[53]-bb1[52],
                    bb1[52]-bb1[51],
                    bb1[51]-bb1[50])
S_PgdC_1_568<-c(mean(slope_PgdC_1_568))
n_PgdC_1_568_base<-c(bb1[60]-(60*S_PgdC_1_568))
PgdC_1_568_base<-0
for(i in 51:60)
{PgdC_1_568_base<- S_PgdC_1_568*bb1[51:60]+n_PgdC_1_568_base}       # corrects all ten baseline values with the slope

n_PgdC_1_568_peak<-c(bb1[94]-(94*S_PgdC_1_568))
PgdC_1_568_peak<-0
for(i in 85:94)
{PgdC_1_568_peak<- S_PgdC_1_568*bb1[85:94]+n_PgdC_1_568_peak}       # corrects all ten low values with the slope

n_PgdC_1_568_low<-c(bb1[150]-(150*S_PgdC_1_568))
PgdC_1_568_low<-0
for(i in 141:150)
{PgdC_1_568_low<- S_PgdC_1_568*bb1[141:150]+n_PgdC_1_568_low}


slope_PgdC_1_488<-c(aa1[60]-aa1[59],
                    aa1[59]-aa1[58],
                    aa1[58]-aa1[57],
                    aa1[57]-aa1[56],
                    aa1[56]-aa1[55],
                    aa1[55]-aa1[54],
                    aa1[54]-aa1[53],
                    aa1[53]-aa1[52],
                    aa1[52]-aa1[51],
                    aa1[51]-aa1[50])
S_PgdC_1_488<-c(mean(slope_PgdC_1_488))
n_PgdC_1_488<-c(aa1[60]-(60*S_PgdC_1_488))
PgdC_1_488_base<-0
for(i in 51:60)
{PgdC_1_488_base<- S_PgdC_1_488*aa1[51:60]+n_PgdC_1_488}

PgdC_1_488_peak<-0
for(i in 85:94)
{PgdC_1_488_peak<- S_PgdC_1_488*aa1[85:94]+n_PgdC_1_488}

PgdC_1_488_low<-0
for(i in 141:150)
{PgdC_1_488_low<- S_PgdC_1_488*aa1[141:150]+n_PgdC_1_488}

PgdC_1_blp<-c((PgdC_1_568_base/PgdC_1_488_base)/((PgdC_1_568_low/PgdC_1_488_low)/(PgdC_1_568_peak/PgdC_1_488_peak)))
PgdC_1_bpl<-c((PgdC_1_568_base/PgdC_1_488_base)/((PgdC_1_568_peak/PgdC_1_488_peak)/(PgdC_1_568_low/PgdC_1_488_low)))
PgdC_1_btp<-c((PgdC_1_568_base/PgdC_1_488_base)/(PgdC_1_568_peak/PgdC_1_488_peak))
PgdC_1_btl<-c((PgdC_1_568_base/PgdC_1_488_base)/(PgdC_1_568_low/PgdC_1_488_low))

HyPer_PgdC_1_base<-c(mean(PgdC_1_568_base/PgdC_1_488_base)) 
HyPer_PgdC_1_blp<-c(mean(PgdC_1_blp))
HyPer_PgdC_1_bpl<-c(mean(PgdC_1_bpl))
HyPer_PgdC_1_btp<-c(mean(PgdC_1_btp))
HyPer_PgdC_1_btl<-c(mean(PgdC_1_btl))

a2<-c(Pgd[,5])
b2<-c(Pgd[,6])
c2<-c(Pgd[,7])
d2<-c(Pgd[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
PgdC_eyedisc_2<-c(bb2/aa2)


slope_PgdC_2_568<-c(bb2[60]-bb2[59],
                    bb2[59]-bb2[58],
                    bb2[58]-bb2[57],
                    bb2[57]-bb2[56],
                    bb2[56]-bb2[55],
                    bb2[55]-bb2[54],
                    bb2[54]-bb2[53],
                    bb2[53]-bb2[52],
                    bb2[52]-bb2[51],
                    bb2[51]-bb2[50])
S_PgdC_2_568<-c(mean(slope_PgdC_2_568))
n_PgdC_2_568_base<-c(bb2[60]-(60*S_PgdC_2_568))
PgdC_2_568_base<-0
for(i in 51:60)
{PgdC_2_568_base<- S_PgdC_2_568*bb2[51:60]+n_PgdC_2_568_base}       # corrects all ten baseline values with the slope

n_PgdC_2_568_peak<-c(bb2[94]-(94*S_PgdC_2_568))
PgdC_2_568_peak<-0
for(i in 85:94)
{PgdC_2_568_peak<- S_PgdC_2_568*bb2[85:94]+n_PgdC_2_568_peak}       # corrects all ten low values with the slope

n_PgdC_2_568_low<-c(bb2[150]-(150*S_PgdC_2_568))
PgdC_2_568_low<-0
for(i in 141:150)
{PgdC_2_568_low<- S_PgdC_2_568*bb2[141:150]+n_PgdC_2_568_low}


slope_PgdC_2_488<-c(aa2[60]-aa2[59],
                    aa2[59]-aa2[58],
                    aa2[58]-aa2[57],
                    aa2[57]-aa2[56],
                    aa2[56]-aa2[55],
                    aa2[55]-aa2[54],
                    aa2[54]-aa2[53],
                    aa2[53]-aa2[52],
                    aa2[52]-aa2[51],
                    aa2[51]-aa2[50])
S_PgdC_2_488<-c(mean(slope_PgdC_2_488))
n_PgdC_2_488<-c(aa2[60]-(60*S_PgdC_2_488))
PgdC_2_488_base<-0
for(i in 51:60)
{PgdC_2_488_base<- S_PgdC_2_488*aa2[51:60]+n_PgdC_2_488}

PgdC_2_488_peak<-0
for(i in 85:94)
{PgdC_2_488_peak<- S_PgdC_2_488*aa2[85:94]+n_PgdC_2_488}

PgdC_2_488_low<-0
for(i in 141:150)
{PgdC_2_488_low<- S_PgdC_2_488*aa2[141:150]+n_PgdC_2_488}

PgdC_2_blp<-c((PgdC_2_568_base/PgdC_2_488_base)/((PgdC_2_568_low/PgdC_2_488_low)/(PgdC_2_568_peak/PgdC_2_488_peak)))
PgdC_2_bpl<-c((PgdC_2_568_base/PgdC_2_488_base)/((PgdC_2_568_peak/PgdC_2_488_peak)/(PgdC_2_568_low/PgdC_2_488_low)))
PgdC_2_btp<-c((PgdC_2_568_base/PgdC_2_488_base)/(PgdC_2_568_peak/PgdC_2_488_peak))
PgdC_2_btl<-c((PgdC_2_568_base/PgdC_2_488_base)/(PgdC_2_568_low/PgdC_2_488_low))

HyPer_PgdC_2_base<-c(mean(PgdC_2_568_base/PgdC_2_488_base)) 
HyPer_PgdC_2_blp<-c(mean(PgdC_2_blp))
HyPer_PgdC_2_bpl<-c(mean(PgdC_2_bpl))
HyPer_PgdC_2_btp<-c(mean(PgdC_2_btp))
HyPer_PgdC_2_btl<-c(mean(PgdC_2_btl))

a3<-c(Pgd[,9])
b3<-c(Pgd[,10])
c3<-c(Pgd[,11])
d3<-c(Pgd[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
PgdC_eyedisc_3<-c(bb3/aa3)


slope_PgdC_3_568<-c(bb3[60]-bb3[59],
                    bb3[59]-bb3[58],
                    bb3[58]-bb3[57],
                    bb3[57]-bb3[56],
                    bb3[56]-bb3[55],
                    bb3[55]-bb3[54],
                    bb3[54]-bb3[53],
                    bb3[53]-bb3[52],
                    bb3[52]-bb3[51],
                    bb3[51]-bb3[50])
S_PgdC_3_568<-c(mean(slope_PgdC_3_568))
n_PgdC_3_568_base<-c(bb3[60]-(60*S_PgdC_3_568))
PgdC_3_568_base<-0
for(i in 51:60)
{PgdC_3_568_base<- S_PgdC_3_568*bb3[51:60]+n_PgdC_3_568_base}       # corrects all ten baseline values with the slope

n_PgdC_3_568_peak<-c(bb3[94]-(94*S_PgdC_3_568))
PgdC_3_568_peak<-0
for(i in 85:94)
{PgdC_3_568_peak<- S_PgdC_3_568*bb3[85:94]+n_PgdC_3_568_peak}       # corrects all ten low values with the slope

n_PgdC_3_568_low<-c(bb3[150]-(150*S_PgdC_3_568))
PgdC_3_568_low<-0
for(i in 141:150)
{PgdC_3_568_low<- S_PgdC_3_568*bb3[141:150]+n_PgdC_3_568_low}


slope_PgdC_3_488<-c(aa3[60]-aa3[59],
                    aa3[59]-aa3[58],
                    aa3[58]-aa3[57],
                    aa3[57]-aa3[56],
                    aa3[56]-aa3[55],
                    aa3[55]-aa3[54],
                    aa3[54]-aa3[53],
                    aa3[53]-aa3[52],
                    aa3[52]-aa3[51],
                    aa3[51]-aa3[50])
S_PgdC_3_488<-c(mean(slope_PgdC_3_488))
n_PgdC_3_488<-c(aa3[60]-(60*S_PgdC_3_488))
PgdC_3_488_base<-0
for(i in 51:60)
{PgdC_3_488_base<- S_PgdC_3_488*aa3[51:60]+n_PgdC_3_488}

PgdC_3_488_peak<-0
for(i in 85:94)
{PgdC_3_488_peak<- S_PgdC_3_488*aa3[85:94]+n_PgdC_3_488}

PgdC_3_488_low<-0
for(i in 141:150)
{PgdC_3_488_low<- S_PgdC_3_488*aa3[141:150]+n_PgdC_3_488}

PgdC_3_blp<-c((PgdC_3_568_base/PgdC_3_488_base)/((PgdC_3_568_low/PgdC_3_488_low)/(PgdC_3_568_peak/PgdC_3_488_peak)))
PgdC_3_bpl<-c((PgdC_3_568_base/PgdC_3_488_base)/((PgdC_3_568_peak/PgdC_3_488_peak)/(PgdC_3_568_low/PgdC_3_488_low)))
PgdC_3_btp<-c((PgdC_3_568_base/PgdC_3_488_base)/(PgdC_3_568_peak/PgdC_3_488_peak))
PgdC_3_btl<-c((PgdC_3_568_base/PgdC_3_488_base)/(PgdC_3_568_low/PgdC_3_488_low))

HyPer_PgdC_3_base<-c(mean(PgdC_3_568_base/PgdC_3_488_base)) 
HyPer_PgdC_3_blp<-c(mean(PgdC_3_blp))
HyPer_PgdC_3_bpl<-c(mean(PgdC_3_bpl))
HyPer_PgdC_3_btp<-c(mean(PgdC_3_btp))
HyPer_PgdC_3_btl<-c(mean(PgdC_3_btl))

a4<-c(Pgd[,13])
b4<-c(Pgd[,14])
c4<-c(Pgd[,15])
d4<-c(Pgd[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
PgdC_eyedisc_4<-c(bb4/aa4)


slope_PgdC_4_568<-c(bb4[60]-bb4[59],
                    bb4[59]-bb4[58],
                    bb4[58]-bb4[57],
                    bb4[57]-bb4[56],
                    bb4[56]-bb4[55],
                    bb4[55]-bb4[54],
                    bb4[54]-bb4[53],
                    bb4[53]-bb4[52],
                    bb4[52]-bb4[51],
                    bb4[51]-bb4[50])
S_PgdC_4_568<-c(mean(slope_PgdC_4_568))
n_PgdC_4_568_base<-c(bb4[60]-(60*S_PgdC_4_568))
PgdC_4_568_base<-0
for(i in 51:60)
{PgdC_4_568_base<- S_PgdC_4_568*bb4[51:60]+n_PgdC_4_568_base}       # corrects all ten baseline values with the slope

n_PgdC_4_568_peak<-c(bb4[94]-(94*S_PgdC_4_568))
PgdC_4_568_peak<-0
for(i in 85:94)
{PgdC_4_568_peak<- S_PgdC_4_568*bb4[85:94]+n_PgdC_4_568_peak}       # corrects all ten low values with the slope

n_PgdC_4_568_low<-c(bb4[150]-(150*S_PgdC_4_568))
PgdC_4_568_low<-0
for(i in 141:150)
{PgdC_4_568_low<- S_PgdC_4_568*bb4[141:150]+n_PgdC_4_568_low}


slope_PgdC_4_488<-c(aa4[60]-aa4[59],
                    aa4[59]-aa4[58],
                    aa4[58]-aa4[57],
                    aa4[57]-aa4[56],
                    aa4[56]-aa4[55],
                    aa4[55]-aa4[54],
                    aa4[54]-aa4[53],
                    aa4[53]-aa4[52],
                    aa4[52]-aa4[51],
                    aa4[51]-aa4[50])
S_PgdC_4_488<-c(mean(slope_PgdC_4_488))
n_PgdC_4_488<-c(aa4[60]-(60*S_PgdC_4_488))
PgdC_4_488_base<-0
for(i in 51:60)
{PgdC_4_488_base<- S_PgdC_4_488*aa4[51:60]+n_PgdC_4_488}

PgdC_4_488_peak<-0
for(i in 85:94)
{PgdC_4_488_peak<- S_PgdC_4_488*aa4[85:94]+n_PgdC_4_488}

PgdC_4_488_low<-0
for(i in 141:150)
{PgdC_4_488_low<- S_PgdC_4_488*aa4[141:150]+n_PgdC_4_488}

PgdC_4_blp<-c((PgdC_4_568_base/PgdC_4_488_base)/((PgdC_4_568_low/PgdC_4_488_low)/(PgdC_4_568_peak/PgdC_4_488_peak)))
PgdC_4_bpl<-c((PgdC_4_568_base/PgdC_4_488_base)/((PgdC_4_568_peak/PgdC_4_488_peak)/(PgdC_4_568_low/PgdC_4_488_low)))
PgdC_4_btp<-c((PgdC_4_568_base/PgdC_4_488_base)/(PgdC_4_568_peak/PgdC_4_488_peak))
PgdC_4_btl<-c((PgdC_4_568_base/PgdC_4_488_base)/(PgdC_4_568_low/PgdC_4_488_low))

HyPer_PgdC_4_base<-c(mean(PgdC_4_568_base/PgdC_4_488_base)) 
HyPer_PgdC_4_blp<-c(mean(PgdC_4_blp))
HyPer_PgdC_4_bpl<-c(mean(PgdC_4_bpl))
HyPer_PgdC_4_btp<-c(mean(PgdC_4_btp))
HyPer_PgdC_4_btl<-c(mean(PgdC_4_btl))

a5<-c(Pgd[,17])
b5<-c(Pgd[,18])
c5<-c(Pgd[,19])
d5<-c(Pgd[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
PgdC_eyedisc_5<-c(bb5/aa5)


slope_PgdC_5_568<-c(bb5[60]-bb5[59],
                    bb5[59]-bb5[58],
                    bb5[58]-bb5[57],
                    bb5[57]-bb5[56],
                    bb5[56]-bb5[55],
                    bb5[55]-bb5[54],
                    bb5[54]-bb5[53],
                    bb5[53]-bb5[52],
                    bb5[52]-bb5[51],
                    bb5[51]-bb5[50])
S_PgdC_5_568<-c(mean(slope_PgdC_5_568))
n_PgdC_5_568_base<-c(bb5[60]-(60*S_PgdC_5_568))
PgdC_5_568_base<-0
for(i in 51:60)
{PgdC_5_568_base<- S_PgdC_5_568*bb5[51:60]+n_PgdC_5_568_base}       # corrects all ten baseline values with the slope

n_PgdC_5_568_peak<-c(bb5[94]-(94*S_PgdC_5_568))
PgdC_5_568_peak<-0
for(i in 85:94)
{PgdC_5_568_peak<- S_PgdC_5_568*bb5[85:94]+n_PgdC_5_568_peak}       # corrects all ten low values with the slope

n_PgdC_5_568_low<-c(bb5[150]-(150*S_PgdC_5_568))
PgdC_5_568_low<-0
for(i in 141:150)
{PgdC_5_568_low<- S_PgdC_5_568*bb5[141:150]+n_PgdC_5_568_low}


slope_PgdC_5_488<-c(aa5[60]-aa5[59],
                    aa5[59]-aa5[58],
                    aa5[58]-aa5[57],
                    aa5[57]-aa5[56],
                    aa5[56]-aa5[55],
                    aa5[55]-aa5[54],
                    aa5[54]-aa5[53],
                    aa5[53]-aa5[52],
                    aa5[52]-aa5[51],
                    aa5[51]-aa5[50])
S_PgdC_5_488<-c(mean(slope_PgdC_5_488))
n_PgdC_5_488<-c(aa5[60]-(60*S_PgdC_5_488))
PgdC_5_488_base<-0
for(i in 51:60)
{PgdC_5_488_base<- S_PgdC_5_488*aa5[51:60]+n_PgdC_5_488}

PgdC_5_488_peak<-0
for(i in 85:94)
{PgdC_5_488_peak<- S_PgdC_5_488*aa5[85:94]+n_PgdC_5_488}

PgdC_5_488_low<-0
for(i in 141:150)
{PgdC_5_488_low<- S_PgdC_5_488*aa5[141:150]+n_PgdC_5_488}

PgdC_5_blp<-c((PgdC_5_568_base/PgdC_5_488_base)/((PgdC_5_568_low/PgdC_5_488_low)/(PgdC_5_568_peak/PgdC_5_488_peak)))
PgdC_5_bpl<-c((PgdC_5_568_base/PgdC_5_488_base)/((PgdC_5_568_peak/PgdC_5_488_peak)/(PgdC_5_568_low/PgdC_5_488_low)))
PgdC_5_btp<-c((PgdC_5_568_base/PgdC_5_488_base)/(PgdC_5_568_peak/PgdC_5_488_peak))
PgdC_5_btl<-c((PgdC_5_568_base/PgdC_5_488_base)/(PgdC_5_568_low/PgdC_5_488_low))

HyPer_PgdC_5_base<-c(mean(PgdC_5_568_base/PgdC_5_488_base)) 
HyPer_PgdC_5_blp<-c(mean(PgdC_5_blp))
HyPer_PgdC_5_bpl<-c(mean(PgdC_5_bpl))
HyPer_PgdC_5_btp<-c(mean(PgdC_5_btp))
HyPer_PgdC_5_btl<-c(mean(PgdC_5_btl))

a6<-c(Pgd[,21])
b6<-c(Pgd[,22])
c6<-c(Pgd[,23])
d6<-c(Pgd[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
PgdC_eyedisc_6<-c(bb6/aa6)


slope_PgdC_6_568<-c(bb6[60]-bb6[59],
                    bb6[59]-bb6[58],
                    bb6[58]-bb6[57],
                    bb6[57]-bb6[56],
                    bb6[56]-bb6[55],
                    bb6[55]-bb6[54],
                    bb6[54]-bb6[53],
                    bb6[53]-bb6[52],
                    bb6[52]-bb6[51],
                    bb6[51]-bb6[50])
S_PgdC_6_568<-c(mean(slope_PgdC_6_568))
n_PgdC_6_568_base<-c(bb6[60]-(60*S_PgdC_6_568))
PgdC_6_568_base<-0
for(i in 51:60)
{PgdC_6_568_base<- S_PgdC_6_568*bb6[51:60]+n_PgdC_6_568_base}       # corrects all ten baseline values with the slope

n_PgdC_6_568_peak<-c(bb6[94]-(94*S_PgdC_6_568))
PgdC_6_568_peak<-0
for(i in 85:94)
{PgdC_6_568_peak<- S_PgdC_6_568*bb6[85:94]+n_PgdC_6_568_peak}       # corrects all ten low values with the slope

n_PgdC_6_568_low<-c(bb6[150]-(150*S_PgdC_6_568))
PgdC_6_568_low<-0
for(i in 141:150)
{PgdC_6_568_low<- S_PgdC_6_568*bb6[141:150]+n_PgdC_6_568_low}


slope_PgdC_6_488<-c(aa6[60]-aa6[59],
                    aa6[59]-aa6[58],
                    aa6[58]-aa6[57],
                    aa6[57]-aa6[56],
                    aa6[56]-aa6[55],
                    aa6[55]-aa6[54],
                    aa6[54]-aa6[53],
                    aa6[53]-aa6[52],
                    aa6[52]-aa6[51],
                    aa6[51]-aa6[50])
S_PgdC_6_488<-c(mean(slope_PgdC_6_488))
n_PgdC_6_488<-c(aa6[60]-(60*S_PgdC_6_488))
PgdC_6_488_base<-0
for(i in 51:60)
{PgdC_6_488_base<- S_PgdC_6_488*aa6[51:60]+n_PgdC_6_488}

PgdC_6_488_peak<-0
for(i in 85:94)
{PgdC_6_488_peak<- S_PgdC_6_488*aa6[85:94]+n_PgdC_6_488}

PgdC_6_488_low<-0
for(i in 141:150)
{PgdC_6_488_low<- S_PgdC_6_488*aa6[141:150]+n_PgdC_6_488}

PgdC_6_blp<-c((PgdC_6_568_base/PgdC_6_488_base)/((PgdC_6_568_low/PgdC_6_488_low)/(PgdC_6_568_peak/PgdC_6_488_peak)))
PgdC_6_bpl<-c((PgdC_6_568_base/PgdC_6_488_base)/((PgdC_6_568_peak/PgdC_6_488_peak)/(PgdC_6_568_low/PgdC_6_488_low)))
PgdC_6_btp<-c((PgdC_6_568_base/PgdC_6_488_base)/(PgdC_6_568_peak/PgdC_6_488_peak))
PgdC_6_btl<-c((PgdC_6_568_base/PgdC_6_488_base)/(PgdC_6_568_low/PgdC_6_488_low))

HyPer_PgdC_6_base<-c(mean(PgdC_6_568_base/PgdC_6_488_base)) 
HyPer_PgdC_6_blp<-c(mean(PgdC_6_blp))
HyPer_PgdC_6_bpl<-c(mean(PgdC_6_bpl))
HyPer_PgdC_6_btp<-c(mean(PgdC_6_btp))
HyPer_PgdC_6_btl<-c(mean(PgdC_6_btl))

a7<-c(Pgd[,25])
b7<-c(Pgd[,26])
c7<-c(Pgd[,27])
d7<-c(Pgd[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
PgdC_eyedisc_7<-c(bb7/aa7)


slope_PgdC_7_568<-c(bb7[60]-bb7[59],
                    bb7[59]-bb7[58],
                    bb7[58]-bb7[57],
                    bb7[57]-bb7[56],
                    bb7[56]-bb7[55],
                    bb7[55]-bb7[54],
                    bb7[54]-bb7[53],
                    bb7[53]-bb7[52],
                    bb7[52]-bb7[51],
                    bb7[51]-bb7[50])
S_PgdC_7_568<-c(mean(slope_PgdC_7_568))
n_PgdC_7_568_base<-c(bb7[60]-(60*S_PgdC_7_568))
PgdC_7_568_base<-0
for(i in 51:60)
{PgdC_7_568_base<- S_PgdC_7_568*bb7[51:60]+n_PgdC_7_568_base}       # corrects all ten baseline values with the slope

n_PgdC_7_568_peak<-c(bb7[94]-(94*S_PgdC_7_568))
PgdC_7_568_peak<-0
for(i in 85:94)
{PgdC_7_568_peak<- S_PgdC_7_568*bb7[85:94]+n_PgdC_7_568_peak}       # corrects all ten low values with the slope

n_PgdC_7_568_low<-c(bb7[150]-(150*S_PgdC_7_568))
PgdC_7_568_low<-0
for(i in 141:150)
{PgdC_7_568_low<- S_PgdC_7_568*bb7[141:150]+n_PgdC_7_568_low}


slope_PgdC_7_488<-c(aa7[60]-aa7[59],
                    aa7[59]-aa7[58],
                    aa7[58]-aa7[57],
                    aa7[57]-aa7[56],
                    aa7[56]-aa7[55],
                    aa7[55]-aa7[54],
                    aa7[54]-aa7[53],
                    aa7[53]-aa7[52],
                    aa7[52]-aa7[51],
                    aa7[51]-aa7[50])
S_PgdC_7_488<-c(mean(slope_PgdC_7_488))
n_PgdC_7_488<-c(aa7[60]-(60*S_PgdC_7_488))
PgdC_7_488_base<-0
for(i in 51:60)
{PgdC_7_488_base<- S_PgdC_7_488*aa7[51:60]+n_PgdC_7_488}

PgdC_7_488_peak<-0
for(i in 85:94)
{PgdC_7_488_peak<- S_PgdC_7_488*aa7[85:94]+n_PgdC_7_488}

PgdC_7_488_low<-0
for(i in 141:150)
{PgdC_7_488_low<- S_PgdC_7_488*aa7[141:150]+n_PgdC_7_488}

PgdC_7_blp<-c((PgdC_7_568_base/PgdC_7_488_base)/((PgdC_7_568_low/PgdC_7_488_low)/(PgdC_7_568_peak/PgdC_7_488_peak)))
PgdC_7_bpl<-c((PgdC_7_568_base/PgdC_7_488_base)/((PgdC_7_568_peak/PgdC_7_488_peak)/(PgdC_7_568_low/PgdC_7_488_low)))
PgdC_7_btp<-c((PgdC_7_568_base/PgdC_7_488_base)/(PgdC_7_568_peak/PgdC_7_488_peak))
PgdC_7_btl<-c((PgdC_7_568_base/PgdC_7_488_base)/(PgdC_7_568_low/PgdC_7_488_low))

HyPer_PgdC_7_base<-c(mean(PgdC_7_568_base/PgdC_7_488_base)) 
HyPer_PgdC_7_blp<-c(mean(PgdC_7_blp))
HyPer_PgdC_7_bpl<-c(mean(PgdC_7_bpl))
HyPer_PgdC_7_btp<-c(mean(PgdC_7_btp))
HyPer_PgdC_7_btl<-c(mean(PgdC_7_btl))


a12<-c(Pgd[,45])
b12<-c(Pgd[,46])
c12<-c(Pgd[,47])
d12<-c(Pgd[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
PgdC_eyedisc_12<-c(bb12/aa12)

slope_PgdC_12_568<-c(bb12[60]-bb12[59],
                     bb12[59]-bb12[58],
                     bb12[58]-bb12[57],
                     bb12[57]-bb12[56],
                     bb12[56]-bb12[55],
                     bb12[55]-bb12[54],
                     bb12[54]-bb12[53],
                     bb12[53]-bb12[52],
                     bb12[52]-bb12[51],
                     bb12[51]-bb12[50])
S_PgdC_12_568<-c(mean(slope_PgdC_12_568))
n_PgdC_12_568_base<-c(bb12[60]-(60*S_PgdC_12_568))
PgdC_12_568_base<-0
for(i in 51:60)
{PgdC_12_568_base<- S_PgdC_12_568*bb12[51:60]+n_PgdC_12_568_base}       # corrects all ten baseline values with the slope

n_PgdC_12_568_peak<-c(bb12[94]-(94*S_PgdC_12_568))
PgdC_12_568_peak<-0
for(i in 85:94)
{PgdC_12_568_peak<- S_PgdC_12_568*bb12[85:94]+n_PgdC_12_568_peak}       # corrects all ten low values with the slope

n_PgdC_12_568_low<-c(bb12[150]-(150*S_PgdC_12_568))
PgdC_12_568_low<-0
for(i in 141:150)
{PgdC_12_568_low<- S_PgdC_12_568*bb12[141:150]+n_PgdC_12_568_low}


slope_PgdC_12_488<-c(aa12[60]-aa12[59],
                     aa12[59]-aa12[58],
                     aa12[58]-aa12[57],
                     aa12[57]-aa12[56],
                     aa12[56]-aa12[55],
                     aa12[55]-aa12[54],
                     aa12[54]-aa12[53],
                     aa12[53]-aa12[52],
                     aa12[52]-aa12[51],
                     aa12[51]-aa12[50])
S_PgdC_12_488<-c(mean(slope_PgdC_12_488))
n_PgdC_12_488<-c(aa12[60]-(60*S_PgdC_12_488))
PgdC_12_488_base<-0
for(i in 51:60)
{PgdC_12_488_base<- S_PgdC_12_488*aa12[51:60]+n_PgdC_12_488}

PgdC_12_488_peak<-0
for(i in 85:94)
{PgdC_12_488_peak<- S_PgdC_12_488*aa12[85:94]+n_PgdC_12_488}

PgdC_12_488_low<-0
for(i in 141:150)
{PgdC_12_488_low<- S_PgdC_12_488*aa12[141:150]+n_PgdC_12_488}

PgdC_12_blp<-c((PgdC_12_568_base/PgdC_12_488_base)/((PgdC_12_568_low/PgdC_12_488_low)/(PgdC_12_568_peak/PgdC_12_488_peak)))
PgdC_12_bpl<-c((PgdC_12_568_base/PgdC_12_488_base)/((PgdC_12_568_peak/PgdC_12_488_peak)/(PgdC_12_568_low/PgdC_12_488_low)))
PgdC_12_btp<-c((PgdC_12_568_base/PgdC_12_488_base)/(PgdC_12_568_peak/PgdC_12_488_peak))
PgdC_12_btl<-c((PgdC_12_568_base/PgdC_12_488_base)/(PgdC_12_568_low/PgdC_12_488_low))

HyPer_PgdC_12_base<-c(mean(PgdC_12_568_base/PgdC_12_488_base)) 
HyPer_PgdC_12_blp<-c(mean(PgdC_12_blp))
HyPer_PgdC_12_bpl<-c(mean(PgdC_12_bpl))
HyPer_PgdC_12_btp<-c(mean(PgdC_12_btp))
HyPer_PgdC_12_btl<-c(mean(PgdC_12_btl))


a13<-c(Pgd[,49])
b13<-c(Pgd[,50])
c13<-c(Pgd[,51])
d13<-c(Pgd[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
PgdC_eyedisc_13<-c(bb13/aa13)

slope_PgdC_13_568<-c(bb13[60]-bb13[59],
                     bb13[59]-bb13[58],
                     bb13[58]-bb13[57],
                     bb13[57]-bb13[56],
                     bb13[56]-bb13[55],
                     bb13[55]-bb13[54],
                     bb13[54]-bb13[53],
                     bb13[53]-bb13[52],
                     bb13[52]-bb13[51],
                     bb13[51]-bb13[50])
S_PgdC_13_568<-c(mean(slope_PgdC_13_568))
n_PgdC_13_568_base<-c(bb13[60]-(60*S_PgdC_13_568))
PgdC_13_568_base<-0
for(i in 51:60)
{PgdC_13_568_base<- S_PgdC_13_568*bb13[51:60]+n_PgdC_13_568_base}       # corrects all ten baseline values with the slope

n_PgdC_13_568_peak<-c(bb13[94]-(94*S_PgdC_13_568))
PgdC_13_568_peak<-0
for(i in 85:94)
{PgdC_13_568_peak<- S_PgdC_13_568*bb13[85:94]+n_PgdC_13_568_peak}       # corrects all ten low values with the slope

n_PgdC_13_568_low<-c(bb13[150]-(150*S_PgdC_13_568))
PgdC_13_568_low<-0
for(i in 141:150)
{PgdC_13_568_low<- S_PgdC_13_568*bb13[141:150]+n_PgdC_13_568_low}


slope_PgdC_13_488<-c(aa13[60]-aa13[59],
                     aa13[59]-aa13[58],
                     aa13[58]-aa13[57],
                     aa13[57]-aa13[56],
                     aa13[56]-aa13[55],
                     aa13[55]-aa13[54],
                     aa13[54]-aa13[53],
                     aa13[53]-aa13[52],
                     aa13[52]-aa13[51],
                     aa13[51]-aa13[50])
S_PgdC_13_488<-c(mean(slope_PgdC_13_488))
n_PgdC_13_488<-c(aa13[60]-(60*S_PgdC_13_488))
PgdC_13_488_base<-0
for(i in 51:60)
{PgdC_13_488_base<- S_PgdC_13_488*aa13[51:60]+n_PgdC_13_488}

PgdC_13_488_peak<-0
for(i in 85:94)
{PgdC_13_488_peak<- S_PgdC_13_488*aa13[85:94]+n_PgdC_13_488}

PgdC_13_488_low<-0
for(i in 141:150)
{PgdC_13_488_low<- S_PgdC_13_488*aa13[141:150]+n_PgdC_13_488}

PgdC_13_blp<-c((PgdC_13_568_base/PgdC_13_488_base)/((PgdC_13_568_low/PgdC_13_488_low)/(PgdC_13_568_peak/PgdC_13_488_peak)))
PgdC_13_bpl<-c((PgdC_13_568_base/PgdC_13_488_base)/((PgdC_13_568_peak/PgdC_13_488_peak)/(PgdC_13_568_low/PgdC_13_488_low)))
PgdC_13_btp<-c((PgdC_13_568_base/PgdC_13_488_base)/(PgdC_13_568_peak/PgdC_13_488_peak))
PgdC_13_btl<-c((PgdC_13_568_base/PgdC_13_488_base)/(PgdC_13_568_low/PgdC_13_488_low))

HyPer_PgdC_13_base<-c(mean(PgdC_13_568_base/PgdC_13_488_base)) 
HyPer_PgdC_13_blp<-c(mean(PgdC_13_blp))
HyPer_PgdC_13_bpl<-c(mean(PgdC_13_bpl))
HyPer_PgdC_13_btp<-c(mean(PgdC_13_btp))
HyPer_PgdC_13_btl<-c(mean(PgdC_13_btl))

a14<-c(Pgd[,53])
b14<-c(Pgd[,54])
c14<-c(Pgd[,55])
d14<-c(Pgd[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
PgdC_eyedisc_14<-c(bb14/aa14)

slope_PgdC_14_568<-c(bb14[60]-bb14[59],
                     bb14[59]-bb14[58],
                     bb14[58]-bb14[57],
                     bb14[57]-bb14[56],
                     bb14[56]-bb14[55],
                     bb14[55]-bb14[54],
                     bb14[54]-bb14[53],
                     bb14[53]-bb14[52],
                     bb14[52]-bb14[51],
                     bb14[51]-bb14[50])
S_PgdC_14_568<-c(mean(slope_PgdC_14_568))
n_PgdC_14_568_base<-c(bb14[60]-(60*S_PgdC_14_568))
PgdC_14_568_base<-0
for(i in 51:60)
{PgdC_14_568_base<- S_PgdC_14_568*bb14[51:60]+n_PgdC_14_568_base}       # corrects all ten baseline values with the slope

n_PgdC_14_568_peak<-c(bb14[94]-(94*S_PgdC_14_568))
PgdC_14_568_peak<-0
for(i in 85:94)
{PgdC_14_568_peak<- S_PgdC_14_568*bb14[85:94]+n_PgdC_14_568_peak}       # corrects all ten low values with the slope

n_PgdC_14_568_low<-c(bb14[150]-(150*S_PgdC_14_568))
PgdC_14_568_low<-0
for(i in 141:150)
{PgdC_14_568_low<- S_PgdC_14_568*bb14[141:150]+n_PgdC_14_568_low}


slope_PgdC_14_488<-c(aa14[60]-aa14[59],
                     aa14[59]-aa14[58],
                     aa14[58]-aa14[57],
                     aa14[57]-aa14[56],
                     aa14[56]-aa14[55],
                     aa14[55]-aa14[54],
                     aa14[54]-aa14[53],
                     aa14[53]-aa14[52],
                     aa14[52]-aa14[51],
                     aa14[51]-aa14[50])
S_PgdC_14_488<-c(mean(slope_PgdC_14_488))
n_PgdC_14_488<-c(aa14[60]-(60*S_PgdC_14_488))
PgdC_14_488_base<-0
for(i in 51:60)
{PgdC_14_488_base<- S_PgdC_14_488*aa14[51:60]+n_PgdC_14_488}

PgdC_14_488_peak<-0
for(i in 85:94)
{PgdC_14_488_peak<- S_PgdC_14_488*aa14[85:94]+n_PgdC_14_488}

PgdC_14_488_low<-0
for(i in 141:150)
{PgdC_14_488_low<- S_PgdC_14_488*aa14[141:150]+n_PgdC_14_488}

PgdC_14_blp<-c((PgdC_14_568_base/PgdC_14_488_base)/((PgdC_14_568_low/PgdC_14_488_low)/(PgdC_14_568_peak/PgdC_14_488_peak)))
PgdC_14_bpl<-c((PgdC_14_568_base/PgdC_14_488_base)/((PgdC_14_568_peak/PgdC_14_488_peak)/(PgdC_14_568_low/PgdC_14_488_low)))
PgdC_14_btp<-c((PgdC_14_568_base/PgdC_14_488_base)/(PgdC_14_568_peak/PgdC_14_488_peak))
PgdC_14_btl<-c((PgdC_14_568_base/PgdC_14_488_base)/(PgdC_14_568_low/PgdC_14_488_low))

HyPer_PgdC_14_base<-c(mean(PgdC_14_568_base/PgdC_14_488_base)) 
HyPer_PgdC_14_blp<-c(mean(PgdC_14_blp))
HyPer_PgdC_14_bpl<-c(mean(PgdC_14_bpl))
HyPer_PgdC_14_btp<-c(mean(PgdC_14_btp))
HyPer_PgdC_14_btl<-c(mean(PgdC_14_btl))

a15<-c(Pgd[,57])
b15<-c(Pgd[,58])
c15<-c(Pgd[,59])
d15<-c(Pgd[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
PgdC_eyedisc_15<-c(bb15/aa15)

slope_PgdC_15_568<-c(bb15[60]-bb15[59],
                     bb15[59]-bb15[58],
                     bb15[58]-bb15[57],
                     bb15[57]-bb15[56],
                     bb15[56]-bb15[55],
                     bb15[55]-bb15[54],
                     bb15[54]-bb15[53],
                     bb15[53]-bb15[52],
                     bb15[52]-bb15[51],
                     bb15[51]-bb15[50])
S_PgdC_15_568<-c(mean(slope_PgdC_15_568))
n_PgdC_15_568_base<-c(bb15[60]-(60*S_PgdC_15_568))
PgdC_15_568_base<-0
for(i in 51:60)
{PgdC_15_568_base<- S_PgdC_15_568*bb15[51:60]+n_PgdC_15_568_base}       # corrects all ten baseline values with the slope

n_PgdC_15_568_peak<-c(bb15[94]-(94*S_PgdC_15_568))
PgdC_15_568_peak<-0
for(i in 85:94)
{PgdC_15_568_peak<- S_PgdC_15_568*bb15[85:94]+n_PgdC_15_568_peak}       # corrects all ten low values with the slope

n_PgdC_15_568_low<-c(bb15[150]-(150*S_PgdC_15_568))
PgdC_15_568_low<-0
for(i in 141:150)
{PgdC_15_568_low<- S_PgdC_15_568*bb15[141:150]+n_PgdC_15_568_low}


slope_PgdC_15_488<-c(aa15[60]-aa15[59],
                     aa15[59]-aa15[58],
                     aa15[58]-aa15[57],
                     aa15[57]-aa15[56],
                     aa15[56]-aa15[55],
                     aa15[55]-aa15[54],
                     aa15[54]-aa15[53],
                     aa15[53]-aa15[52],
                     aa15[52]-aa15[51],
                     aa15[51]-aa15[50])
S_PgdC_15_488<-c(mean(slope_PgdC_15_488))
n_PgdC_15_488<-c(aa15[60]-(60*S_PgdC_15_488))
PgdC_15_488_base<-0
for(i in 51:60)
{PgdC_15_488_base<- S_PgdC_15_488*aa15[51:60]+n_PgdC_15_488}

PgdC_15_488_peak<-0
for(i in 85:94)
{PgdC_15_488_peak<- S_PgdC_15_488*aa15[85:94]+n_PgdC_15_488}

PgdC_15_488_low<-0
for(i in 141:150)
{PgdC_15_488_low<- S_PgdC_15_488*aa15[141:150]+n_PgdC_15_488}

PgdC_15_blp<-c((PgdC_15_568_base/PgdC_15_488_base)/((PgdC_15_568_low/PgdC_15_488_low)/(PgdC_15_568_peak/PgdC_15_488_peak)))
PgdC_15_bpl<-c((PgdC_15_568_base/PgdC_15_488_base)/((PgdC_15_568_peak/PgdC_15_488_peak)/(PgdC_15_568_low/PgdC_15_488_low)))
PgdC_15_btp<-c((PgdC_15_568_base/PgdC_15_488_base)/(PgdC_15_568_peak/PgdC_15_488_peak))
PgdC_15_btl<-c((PgdC_15_568_base/PgdC_15_488_base)/(PgdC_15_568_low/PgdC_15_488_low))

HyPer_PgdC_15_base<-c(mean(PgdC_15_568_base/PgdC_15_488_base)) 
HyPer_PgdC_15_blp<-c(mean(PgdC_15_blp))
HyPer_PgdC_15_bpl<-c(mean(PgdC_15_bpl))
HyPer_PgdC_15_btp<-c(mean(PgdC_15_btp))
HyPer_PgdC_15_btl<-c(mean(PgdC_15_btl))

a16<-c(Pgd[,61])
b16<-c(Pgd[,62])
c16<-c(Pgd[,63])
d16<-c(Pgd[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
PgdC_eyedisc_16<-c(bb16/aa16)

slope_PgdC_16_568<-c(bb16[60]-bb16[59],
                     bb16[59]-bb16[58],
                     bb16[58]-bb16[57],
                     bb16[57]-bb16[56],
                     bb16[56]-bb16[55],
                     bb16[55]-bb16[54],
                     bb16[54]-bb16[53],
                     bb16[53]-bb16[52],
                     bb16[52]-bb16[51],
                     bb16[51]-bb16[50])
S_PgdC_16_568<-c(mean(slope_PgdC_16_568))
n_PgdC_16_568_base<-c(bb16[60]-(60*S_PgdC_16_568))
PgdC_16_568_base<-0
for(i in 51:60)
{PgdC_16_568_base<- S_PgdC_16_568*bb16[51:60]+n_PgdC_16_568_base}       # corrects all ten baseline values with the slope

n_PgdC_16_568_peak<-c(bb16[94]-(94*S_PgdC_16_568))
PgdC_16_568_peak<-0
for(i in 85:94)
{PgdC_16_568_peak<- S_PgdC_16_568*bb16[85:94]+n_PgdC_16_568_peak}       # corrects all ten low values with the slope

n_PgdC_16_568_low<-c(bb16[150]-(150*S_PgdC_16_568))
PgdC_16_568_low<-0
for(i in 141:150)
{PgdC_16_568_low<- S_PgdC_16_568*bb16[141:150]+n_PgdC_16_568_low}


slope_PgdC_16_488<-c(aa16[60]-aa16[59],
                     aa16[59]-aa16[58],
                     aa16[58]-aa16[57],
                     aa16[57]-aa16[56],
                     aa16[56]-aa16[55],
                     aa16[55]-aa16[54],
                     aa16[54]-aa16[53],
                     aa16[53]-aa16[52],
                     aa16[52]-aa16[51],
                     aa16[51]-aa16[50])
S_PgdC_16_488<-c(mean(slope_PgdC_16_488))
n_PgdC_16_488<-c(aa16[60]-(60*S_PgdC_16_488))
PgdC_16_488_base<-0
for(i in 51:60)
{PgdC_16_488_base<- S_PgdC_16_488*aa16[51:60]+n_PgdC_16_488}

PgdC_16_488_peak<-0
for(i in 85:94)
{PgdC_16_488_peak<- S_PgdC_16_488*aa16[85:94]+n_PgdC_16_488}

PgdC_16_488_low<-0
for(i in 141:150)
{PgdC_16_488_low<- S_PgdC_16_488*aa16[141:150]+n_PgdC_16_488}

PgdC_16_blp<-c((PgdC_16_568_base/PgdC_16_488_base)/((PgdC_16_568_low/PgdC_16_488_low)/(PgdC_16_568_peak/PgdC_16_488_peak)))
PgdC_16_bpl<-c((PgdC_16_568_base/PgdC_16_488_base)/((PgdC_16_568_peak/PgdC_16_488_peak)/(PgdC_16_568_low/PgdC_16_488_low)))
PgdC_16_btp<-c((PgdC_16_568_base/PgdC_16_488_base)/(PgdC_16_568_peak/PgdC_16_488_peak))
PgdC_16_btl<-c((PgdC_16_568_base/PgdC_16_488_base)/(PgdC_16_568_low/PgdC_16_488_low))

HyPer_PgdC_16_base<-c(mean(PgdC_16_568_base/PgdC_16_488_base)) 
HyPer_PgdC_16_blp<-c(mean(PgdC_16_blp))
HyPer_PgdC_16_bpl<-c(mean(PgdC_16_bpl))
HyPer_PgdC_16_btp<-c(mean(PgdC_16_btp))
HyPer_PgdC_16_btl<-c(mean(PgdC_16_btl))

a17<-c(Pgd[,65])
b17<-c(Pgd[,66])
c17<-c(Pgd[,67])
d17<-c(Pgd[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
PgdC_eyedisc_17<-c(bb17/aa17)

slope_PgdC_17_568<-c(bb17[60]-bb17[59],
                     bb17[59]-bb17[58],
                     bb17[58]-bb17[57],
                     bb17[57]-bb17[56],
                     bb17[56]-bb17[55],
                     bb17[55]-bb17[54],
                     bb17[54]-bb17[53],
                     bb17[53]-bb17[52],
                     bb17[52]-bb17[51],
                     bb17[51]-bb17[50])
S_PgdC_17_568<-c(mean(slope_PgdC_17_568))
n_PgdC_17_568_base<-c(bb17[60]-(60*S_PgdC_17_568))
PgdC_17_568_base<-0
for(i in 51:60)
{PgdC_17_568_base<- S_PgdC_17_568*bb17[51:60]+n_PgdC_17_568_base}       # corrects all ten baseline values with the slope

n_PgdC_17_568_peak<-c(bb17[94]-(94*S_PgdC_17_568))
PgdC_17_568_peak<-0
for(i in 85:94)
{PgdC_17_568_peak<- S_PgdC_17_568*bb17[85:94]+n_PgdC_17_568_peak}       # corrects all ten low values with the slope

n_PgdC_17_568_low<-c(bb17[150]-(150*S_PgdC_17_568))
PgdC_17_568_low<-0
for(i in 141:150)
{PgdC_17_568_low<- S_PgdC_17_568*bb17[141:150]+n_PgdC_17_568_low}


slope_PgdC_17_488<-c(aa17[60]-aa17[59],
                     aa17[59]-aa17[58],
                     aa17[58]-aa17[57],
                     aa17[57]-aa17[56],
                     aa17[56]-aa17[55],
                     aa17[55]-aa17[54],
                     aa17[54]-aa17[53],
                     aa17[53]-aa17[52],
                     aa17[52]-aa17[51],
                     aa17[51]-aa17[50])
S_PgdC_17_488<-c(mean(slope_PgdC_17_488))
n_PgdC_17_488<-c(aa17[60]-(60*S_PgdC_17_488))
PgdC_17_488_base<-0
for(i in 51:60)
{PgdC_17_488_base<- S_PgdC_17_488*aa17[51:60]+n_PgdC_17_488}

PgdC_17_488_peak<-0
for(i in 85:94)
{PgdC_17_488_peak<- S_PgdC_17_488*aa17[85:94]+n_PgdC_17_488}

PgdC_17_488_low<-0
for(i in 141:150)
{PgdC_17_488_low<- S_PgdC_17_488*aa17[141:150]+n_PgdC_17_488}

PgdC_17_blp<-c((PgdC_17_568_base/PgdC_17_488_base)/((PgdC_17_568_low/PgdC_17_488_low)/(PgdC_17_568_peak/PgdC_17_488_peak)))
PgdC_17_bpl<-c((PgdC_17_568_base/PgdC_17_488_base)/((PgdC_17_568_peak/PgdC_17_488_peak)/(PgdC_17_568_low/PgdC_17_488_low)))
PgdC_17_btp<-c((PgdC_17_568_base/PgdC_17_488_base)/(PgdC_17_568_peak/PgdC_17_488_peak))
PgdC_17_btl<-c((PgdC_17_568_base/PgdC_17_488_base)/(PgdC_17_568_low/PgdC_17_488_low))

HyPer_PgdC_17_base<-c(mean(PgdC_17_568_base/PgdC_17_488_base)) 
HyPer_PgdC_17_blp<-c(mean(PgdC_17_blp))
HyPer_PgdC_17_bpl<-c(mean(PgdC_17_bpl))
HyPer_PgdC_17_btp<-c(mean(PgdC_17_btp))
HyPer_PgdC_17_btl<-c(mean(PgdC_17_btl))

a18<-c(Pgd[,69])
b18<-c(Pgd[,70])
c18<-c(Pgd[,71])
d18<-c(Pgd[,72])
aa18<-c(a18-b18)
bb18<-c(c18-d18)
PgdC_eyedisc_18<-c(bb18/aa18)

slope_PgdC_18_568<-c(bb18[60]-bb18[59],
                     bb18[59]-bb18[58],
                     bb18[58]-bb18[57],
                     bb18[57]-bb18[56],
                     bb18[56]-bb18[55],
                     bb18[55]-bb18[54],
                     bb18[54]-bb18[53],
                     bb18[53]-bb18[52],
                     bb18[52]-bb18[51],
                     bb18[51]-bb18[50])
S_PgdC_18_568<-c(mean(slope_PgdC_18_568))
n_PgdC_18_568_base<-c(bb18[60]-(60*S_PgdC_18_568))
PgdC_18_568_base<-0
for(i in 51:60)
{PgdC_18_568_base<- S_PgdC_18_568*bb18[51:60]+n_PgdC_18_568_base}       # corrects all ten baseline values with the slope

n_PgdC_18_568_peak<-c(bb18[94]-(94*S_PgdC_18_568))
PgdC_18_568_peak<-0
for(i in 85:94)
{PgdC_18_568_peak<- S_PgdC_18_568*bb18[85:94]+n_PgdC_18_568_peak}       # corrects all ten low values with the slope

n_PgdC_18_568_low<-c(bb18[150]-(150*S_PgdC_18_568))
PgdC_18_568_low<-0
for(i in 141:150)
{PgdC_18_568_low<- S_PgdC_18_568*bb18[141:150]+n_PgdC_18_568_low}


slope_PgdC_18_488<-c(aa18[60]-aa18[59],
                     aa18[59]-aa18[58],
                     aa18[58]-aa18[57],
                     aa18[57]-aa18[56],
                     aa18[56]-aa18[55],
                     aa18[55]-aa18[54],
                     aa18[54]-aa18[53],
                     aa18[53]-aa18[52],
                     aa18[52]-aa18[51],
                     aa18[51]-aa18[50])
S_PgdC_18_488<-c(mean(slope_PgdC_18_488))
n_PgdC_18_488<-c(aa18[60]-(60*S_PgdC_18_488))
PgdC_18_488_base<-0
for(i in 51:60)
{PgdC_18_488_base<- S_PgdC_18_488*aa18[51:60]+n_PgdC_18_488}

PgdC_18_488_peak<-0
for(i in 85:94)
{PgdC_18_488_peak<- S_PgdC_18_488*aa18[85:94]+n_PgdC_18_488}

PgdC_18_488_low<-0
for(i in 141:150)
{PgdC_18_488_low<- S_PgdC_18_488*aa18[141:150]+n_PgdC_18_488}

PgdC_18_blp<-c((PgdC_18_568_base/PgdC_18_488_base)/((PgdC_18_568_low/PgdC_18_488_low)/(PgdC_18_568_peak/PgdC_18_488_peak)))
PgdC_18_bpl<-c((PgdC_18_568_base/PgdC_18_488_base)/((PgdC_18_568_peak/PgdC_18_488_peak)/(PgdC_18_568_low/PgdC_18_488_low)))
PgdC_18_btp<-c((PgdC_18_568_base/PgdC_18_488_base)/(PgdC_18_568_peak/PgdC_18_488_peak))
PgdC_18_btl<-c((PgdC_18_568_base/PgdC_18_488_base)/(PgdC_18_568_low/PgdC_18_488_low))

HyPer_PgdC_18_base<-c(mean(PgdC_18_568_base/PgdC_18_488_base)) 
HyPer_PgdC_18_blp<-c(mean(PgdC_18_blp))
HyPer_PgdC_18_bpl<-c(mean(PgdC_18_bpl))
HyPer_PgdC_18_btp<-c(mean(PgdC_18_btp))
HyPer_PgdC_18_btl<-c(mean(PgdC_18_btl))

a19<-c(Pgd[,73])
b19<-c(Pgd[,74])
c19<-c(Pgd[,75])
d19<-c(Pgd[,76])
aa19<-c(a19-b19)
bb19<-c(c19-d19)
PgdC_eyedisc_19<-c(bb19/aa19)

slope_PgdC_19_568<-c(bb19[60]-bb19[59],
                     bb19[59]-bb19[58],
                     bb19[58]-bb19[57],
                     bb19[57]-bb19[56],
                     bb19[56]-bb19[55],
                     bb19[55]-bb19[54],
                     bb19[54]-bb19[53],
                     bb19[53]-bb19[52],
                     bb19[52]-bb19[51],
                     bb19[51]-bb19[50])
S_PgdC_19_568<-c(mean(slope_PgdC_19_568))
n_PgdC_19_568_base<-c(bb19[60]-(60*S_PgdC_19_568))
PgdC_19_568_base<-0
for(i in 51:60)
{PgdC_19_568_base<- S_PgdC_19_568*bb19[51:60]+n_PgdC_19_568_base}       # corrects all ten baseline values with the slope

n_PgdC_19_568_peak<-c(bb19[94]-(94*S_PgdC_19_568))
PgdC_19_568_peak<-0
for(i in 85:94)
{PgdC_19_568_peak<- S_PgdC_19_568*bb19[85:94]+n_PgdC_19_568_peak}       # corrects all ten low values with the slope

n_PgdC_19_568_low<-c(bb19[150]-(150*S_PgdC_19_568))
PgdC_19_568_low<-0
for(i in 141:150)
{PgdC_19_568_low<- S_PgdC_19_568*bb19[141:150]+n_PgdC_19_568_low}


slope_PgdC_19_488<-c(aa19[60]-aa19[59],
                     aa19[59]-aa19[58],
                     aa19[58]-aa19[57],
                     aa19[57]-aa19[56],
                     aa19[56]-aa19[55],
                     aa19[55]-aa19[54],
                     aa19[54]-aa19[53],
                     aa19[53]-aa19[52],
                     aa19[52]-aa19[51],
                     aa19[51]-aa19[50])
S_PgdC_19_488<-c(mean(slope_PgdC_19_488))
n_PgdC_19_488<-c(aa19[60]-(60*S_PgdC_19_488))
PgdC_19_488_base<-0
for(i in 51:60)
{PgdC_19_488_base<- S_PgdC_19_488*aa19[51:60]+n_PgdC_19_488}

PgdC_19_488_peak<-0
for(i in 85:94)
{PgdC_19_488_peak<- S_PgdC_19_488*aa19[85:94]+n_PgdC_19_488}

PgdC_19_488_low<-0
for(i in 141:150)
{PgdC_19_488_low<- S_PgdC_19_488*aa19[141:150]+n_PgdC_19_488}

PgdC_19_blp<-c((PgdC_19_568_base/PgdC_19_488_base)/((PgdC_19_568_low/PgdC_19_488_low)/(PgdC_19_568_peak/PgdC_19_488_peak)))
PgdC_19_bpl<-c((PgdC_19_568_base/PgdC_19_488_base)/((PgdC_19_568_peak/PgdC_19_488_peak)/(PgdC_19_568_low/PgdC_19_488_low)))
PgdC_19_btp<-c((PgdC_19_568_base/PgdC_19_488_base)/(PgdC_19_568_peak/PgdC_19_488_peak))
PgdC_19_btl<-c((PgdC_19_568_base/PgdC_19_488_base)/(PgdC_19_568_low/PgdC_19_488_low))

HyPer_PgdC_19_base<-c(mean(PgdC_19_568_base/PgdC_19_488_base)) 
HyPer_PgdC_19_blp<-c(mean(PgdC_19_blp))
HyPer_PgdC_19_bpl<-c(mean(PgdC_19_bpl))
HyPer_PgdC_19_btp<-c(mean(PgdC_19_btp))
HyPer_PgdC_19_btl<-c(mean(PgdC_19_btl))

a20<-c(Pgd[,77])
b20<-c(Pgd[,78])
c20<-c(Pgd[,79])
d20<-c(Pgd[,80])
aa20<-c(a20-b20)
bb20<-c(c20-d20)
PgdC_eyedisc_20<-c(bb20/aa20)

slope_PgdC_20_568<-c(bb20[60]-bb20[59],
                     bb20[59]-bb20[58],
                     bb20[58]-bb20[57],
                     bb20[57]-bb20[56],
                     bb20[56]-bb20[55],
                     bb20[55]-bb20[54],
                     bb20[54]-bb20[53],
                     bb20[53]-bb20[52],
                     bb20[52]-bb20[51],
                     bb20[51]-bb20[50])
S_PgdC_20_568<-c(mean(slope_PgdC_20_568))
n_PgdC_20_568_base<-c(bb20[60]-(60*S_PgdC_20_568))
PgdC_20_568_base<-0
for(i in 51:60)
{PgdC_20_568_base<- S_PgdC_20_568*bb20[51:60]+n_PgdC_20_568_base}       # corrects all ten baseline values with the slope

n_PgdC_20_568_peak<-c(bb20[94]-(94*S_PgdC_20_568))
PgdC_20_568_peak<-0
for(i in 85:94)
{PgdC_20_568_peak<- S_PgdC_20_568*bb20[85:94]+n_PgdC_20_568_peak}       # corrects all ten low values with the slope

n_PgdC_20_568_low<-c(bb20[150]-(150*S_PgdC_20_568))
PgdC_20_568_low<-0
for(i in 141:150)
{PgdC_20_568_low<- S_PgdC_20_568*bb20[141:150]+n_PgdC_20_568_low}


slope_PgdC_20_488<-c(aa20[60]-aa20[59],
                     aa20[59]-aa20[58],
                     aa20[58]-aa20[57],
                     aa20[57]-aa20[56],
                     aa20[56]-aa20[55],
                     aa20[55]-aa20[54],
                     aa20[54]-aa20[53],
                     aa20[53]-aa20[52],
                     aa20[52]-aa20[51],
                     aa20[51]-aa20[50])
S_PgdC_20_488<-c(mean(slope_PgdC_20_488))
n_PgdC_20_488<-c(aa20[60]-(60*S_PgdC_20_488))
PgdC_20_488_base<-0
for(i in 51:60)
{PgdC_20_488_base<- S_PgdC_20_488*aa20[51:60]+n_PgdC_20_488}

PgdC_20_488_peak<-0
for(i in 85:94)
{PgdC_20_488_peak<- S_PgdC_20_488*aa20[85:94]+n_PgdC_20_488}

PgdC_20_488_low<-0
for(i in 141:150)
{PgdC_20_488_low<- S_PgdC_20_488*aa20[141:150]+n_PgdC_20_488}

PgdC_20_blp<-c((PgdC_20_568_base/PgdC_20_488_base)/((PgdC_20_568_low/PgdC_20_488_low)/(PgdC_20_568_peak/PgdC_20_488_peak)))
PgdC_20_bpl<-c((PgdC_20_568_base/PgdC_20_488_base)/((PgdC_20_568_peak/PgdC_20_488_peak)/(PgdC_20_568_low/PgdC_20_488_low)))
PgdC_20_btp<-c((PgdC_20_568_base/PgdC_20_488_base)/(PgdC_20_568_peak/PgdC_20_488_peak))
PgdC_20_btl<-c((PgdC_20_568_base/PgdC_20_488_base)/(PgdC_20_568_low/PgdC_20_488_low))

HyPer_PgdC_20_base<-c(mean(PgdC_20_568_base/PgdC_20_488_base)) 
HyPer_PgdC_20_blp<-c(mean(PgdC_20_blp))
HyPer_PgdC_20_bpl<-c(mean(PgdC_20_bpl))
HyPer_PgdC_20_btp<-c(mean(PgdC_20_btp))
HyPer_PgdC_20_btl<-c(mean(PgdC_20_btl))

a21<-c(Pgd[,81])
b21<-c(Pgd[,82])
c21<-c(Pgd[,83])
d21<-c(Pgd[,84])
aa21<-c(a21-b21)
bb21<-c(c21-d21)
PgdC_eyedisc_21<-c(bb21/aa21)

slope_PgdC_21_568<-c(bb21[60]-bb21[59],
                     bb21[59]-bb21[58],
                     bb21[58]-bb21[57],
                     bb21[57]-bb21[56],
                     bb21[56]-bb21[55],
                     bb21[55]-bb21[54],
                     bb21[54]-bb21[53],
                     bb21[53]-bb21[52],
                     bb21[52]-bb21[51],
                     bb21[51]-bb21[50])
S_PgdC_21_568<-c(mean(slope_PgdC_21_568))
n_PgdC_21_568_base<-c(bb21[60]-(60*S_PgdC_21_568))
PgdC_21_568_base<-0
for(i in 51:60)
{PgdC_21_568_base<- S_PgdC_21_568*bb21[51:60]+n_PgdC_21_568_base}       # corrects all ten baseline values with the slope

n_PgdC_21_568_peak<-c(bb21[94]-(94*S_PgdC_21_568))
PgdC_21_568_peak<-0
for(i in 85:94)
{PgdC_21_568_peak<- S_PgdC_21_568*bb21[85:94]+n_PgdC_21_568_peak}       # corrects all ten low values with the slope

n_PgdC_21_568_low<-c(bb21[150]-(150*S_PgdC_21_568))
PgdC_21_568_low<-0
for(i in 141:150)
{PgdC_21_568_low<- S_PgdC_21_568*bb21[141:150]+n_PgdC_21_568_low}


slope_PgdC_21_488<-c(aa21[60]-aa21[59],
                     aa21[59]-aa21[58],
                     aa21[58]-aa21[57],
                     aa21[57]-aa21[56],
                     aa21[56]-aa21[55],
                     aa21[55]-aa21[54],
                     aa21[54]-aa21[53],
                     aa21[53]-aa21[52],
                     aa21[52]-aa21[51],
                     aa21[51]-aa21[50])
S_PgdC_21_488<-c(mean(slope_PgdC_21_488))
n_PgdC_21_488<-c(aa21[60]-(60*S_PgdC_21_488))
PgdC_21_488_base<-0
for(i in 51:60)
{PgdC_21_488_base<- S_PgdC_21_488*aa21[51:60]+n_PgdC_21_488}

PgdC_21_488_peak<-0
for(i in 85:94)
{PgdC_21_488_peak<- S_PgdC_21_488*aa21[85:94]+n_PgdC_21_488}

PgdC_21_488_low<-0
for(i in 141:150)
{PgdC_21_488_low<- S_PgdC_21_488*aa21[141:150]+n_PgdC_21_488}

PgdC_21_blp<-c((PgdC_21_568_base/PgdC_21_488_base)/((PgdC_21_568_low/PgdC_21_488_low)/(PgdC_21_568_peak/PgdC_21_488_peak)))
PgdC_21_bpl<-c((PgdC_21_568_base/PgdC_21_488_base)/((PgdC_21_568_peak/PgdC_21_488_peak)/(PgdC_21_568_low/PgdC_21_488_low)))
PgdC_21_btp<-c((PgdC_21_568_base/PgdC_21_488_base)/(PgdC_21_568_peak/PgdC_21_488_peak))
PgdC_21_btl<-c((PgdC_21_568_base/PgdC_21_488_base)/(PgdC_21_568_low/PgdC_21_488_low))

HyPer_PgdC_21_base<-c(mean(PgdC_21_568_base/PgdC_21_488_base)) 
HyPer_PgdC_21_blp<-c(mean(PgdC_21_blp))
HyPer_PgdC_21_bpl<-c(mean(PgdC_21_bpl))
HyPer_PgdC_21_btp<-c(mean(PgdC_21_btp))
HyPer_PgdC_21_btl<-c(mean(PgdC_21_btl))

HyPer_PgdC_time_course<-c(PgdC_eyedisc_1,PgdC_eyedisc_2,PgdC_eyedisc_3,PgdC_eyedisc_4,PgdC_eyedisc_5,PgdC_eyedisc_6,PgdC_eyedisc_12,PgdC_eyedisc_13,PgdC_eyedisc_14,PgdC_eyedisc_15,PgdC_eyedisc_16,PgdC_eyedisc_17,PgdC_eyedisc_18,PgdC_eyedisc_19,PgdC_eyedisc_20,PgdC_eyedisc_21)
matHyPer_PgdC_time_course<-matrix(HyPer_PgdC_time_course,nrow=150,ncol=16)
mean_HyPer_PgdC_time_course<-c(rowMeans(matHyPer_PgdC_time_course))

HyPer_PgdC_base<-c(HyPer_PgdC_1_base,HyPer_PgdC_2_base,HyPer_PgdC_3_base,HyPer_PgdC_4_base,HyPer_PgdC_5_base,HyPer_PgdC_6_base,HyPer_PgdC_12_base,HyPer_PgdC_13_base,HyPer_PgdC_14_base,HyPer_PgdC_15_base,HyPer_PgdC_16_base,HyPer_PgdC_17_base,HyPer_PgdC_18_base,HyPer_PgdC_19_base,HyPer_PgdC_20_base,HyPer_PgdC_21_base)



