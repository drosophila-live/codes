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

a8<-c(Pgd[,29])
b8<-c(Pgd[,30])
c8<-c(Pgd[,31])
d8<-c(Pgd[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
PgdC_eyedisc_8<-c(bb8/aa8)

slope_PgdC_8_568<-c(bb8[60]-bb8[59],
                    bb8[59]-bb8[58],
                    bb8[58]-bb8[57],
                    bb8[57]-bb8[56],
                    bb8[56]-bb8[55],
                    bb8[55]-bb8[54],
                    bb8[54]-bb8[53],
                    bb8[53]-bb8[52],
                    bb8[52]-bb8[51],
                    bb8[51]-bb8[50])
S_PgdC_8_568<-c(mean(slope_PgdC_8_568))
n_PgdC_8_568_base<-c(bb8[60]-(60*S_PgdC_8_568))
PgdC_8_568_base<-0
for(i in 51:60)
{PgdC_8_568_base<- S_PgdC_8_568*bb8[51:60]+n_PgdC_8_568_base}       # corrects all ten baseline values with the slope

n_PgdC_8_568_peak<-c(bb8[94]-(94*S_PgdC_8_568))
PgdC_8_568_peak<-0
for(i in 85:94)
{PgdC_8_568_peak<- S_PgdC_8_568*bb8[85:94]+n_PgdC_8_568_peak}       # corrects all ten low values with the slope

n_PgdC_8_568_low<-c(bb8[150]-(150*S_PgdC_8_568))
PgdC_8_568_low<-0
for(i in 141:150)
{PgdC_8_568_low<- S_PgdC_8_568*bb8[141:150]+n_PgdC_8_568_low}


slope_PgdC_8_488<-c(aa8[60]-aa8[59],
                    aa8[59]-aa8[58],
                    aa8[58]-aa8[57],
                    aa8[57]-aa8[56],
                    aa8[56]-aa8[55],
                    aa8[55]-aa8[54],
                    aa8[54]-aa8[53],
                    aa8[53]-aa8[52],
                    aa8[52]-aa8[51],
                    aa8[51]-aa8[50])
S_PgdC_8_488<-c(mean(slope_PgdC_8_488))
n_PgdC_8_488<-c(aa8[60]-(60*S_PgdC_8_488))
PgdC_8_488_base<-0
for(i in 51:60)
{PgdC_8_488_base<- S_PgdC_8_488*aa8[51:60]+n_PgdC_8_488}

PgdC_8_488_peak<-0
for(i in 85:94)
{PgdC_8_488_peak<- S_PgdC_8_488*aa8[85:94]+n_PgdC_8_488}

PgdC_8_488_low<-0
for(i in 141:150)
{PgdC_8_488_low<- S_PgdC_8_488*aa8[141:150]+n_PgdC_8_488}

PgdC_8_blp<-c((PgdC_8_568_base/PgdC_8_488_base)/((PgdC_8_568_low/PgdC_8_488_low)/(PgdC_8_568_peak/PgdC_8_488_peak)))
PgdC_8_bpl<-c((PgdC_8_568_base/PgdC_8_488_base)/((PgdC_8_568_peak/PgdC_8_488_peak)/(PgdC_8_568_low/PgdC_8_488_low)))
PgdC_8_btp<-c((PgdC_8_568_base/PgdC_8_488_base)/(PgdC_8_568_peak/PgdC_8_488_peak))
PgdC_8_btl<-c((PgdC_8_568_base/PgdC_8_488_base)/(PgdC_8_568_low/PgdC_8_488_low))

HyPer_PgdC_8_base<-c(mean(PgdC_8_568_base/PgdC_8_488_base)) 
HyPer_PgdC_8_blp<-c(mean(PgdC_8_blp))
HyPer_PgdC_8_bpl<-c(mean(PgdC_8_bpl))
HyPer_PgdC_8_btp<-c(mean(PgdC_8_btp))
HyPer_PgdC_8_btl<-c(mean(PgdC_8_btl))


a9<-c(Pgd[,33])
b9<-c(Pgd[,34])
c9<-c(Pgd[,35])
d9<-c(Pgd[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
PgdC_eyedisc_9<-c(bb9/aa9)


slope_PgdC_9_568<-c(bb9[60]-bb9[59],
                    bb9[59]-bb9[58],
                    bb9[58]-bb9[57],
                    bb9[57]-bb9[56],
                    bb9[56]-bb9[55],
                    bb9[55]-bb9[54],
                    bb9[54]-bb9[53],
                    bb9[53]-bb9[52],
                    bb9[52]-bb9[51],
                    bb9[51]-bb9[50])
S_PgdC_9_568<-c(mean(slope_PgdC_9_568))
n_PgdC_9_568_base<-c(bb9[60]-(60*S_PgdC_9_568))
PgdC_9_568_base<-0
for(i in 51:60)
{PgdC_9_568_base<- S_PgdC_9_568*bb9[51:60]+n_PgdC_9_568_base}       # corrects all ten baseline values with the slope

n_PgdC_9_568_peak<-c(bb9[94]-(94*S_PgdC_9_568))
PgdC_9_568_peak<-0
for(i in 85:94)
{PgdC_9_568_peak<- S_PgdC_9_568*bb9[85:94]+n_PgdC_9_568_peak}       # corrects all ten low values with the slope

n_PgdC_9_568_low<-c(bb9[150]-(150*S_PgdC_9_568))
PgdC_9_568_low<-0
for(i in 141:150)
{PgdC_9_568_low<- S_PgdC_9_568*bb9[141:150]+n_PgdC_9_568_low}


slope_PgdC_9_488<-c(aa9[60]-aa9[59],
                    aa9[59]-aa9[58],
                    aa9[58]-aa9[57],
                    aa9[57]-aa9[56],
                    aa9[56]-aa9[55],
                    aa9[55]-aa9[54],
                    aa9[54]-aa9[53],
                    aa9[53]-aa9[52],
                    aa9[52]-aa9[51],
                    aa9[51]-aa9[50])
S_PgdC_9_488<-c(mean(slope_PgdC_9_488))
n_PgdC_9_488<-c(aa9[60]-(60*S_PgdC_9_488))
PgdC_9_488_base<-0
for(i in 51:60)
{PgdC_9_488_base<- S_PgdC_9_488*aa9[51:60]+n_PgdC_9_488}

PgdC_9_488_peak<-0
for(i in 85:94)
{PgdC_9_488_peak<- S_PgdC_9_488*aa9[85:94]+n_PgdC_9_488}

PgdC_9_488_low<-0
for(i in 141:150)
{PgdC_9_488_low<- S_PgdC_9_488*aa9[141:150]+n_PgdC_9_488}

PgdC_9_blp<-c((PgdC_9_568_base/PgdC_9_488_base)/((PgdC_9_568_low/PgdC_9_488_low)/(PgdC_9_568_peak/PgdC_9_488_peak)))
PgdC_9_bpl<-c((PgdC_9_568_base/PgdC_9_488_base)/((PgdC_9_568_peak/PgdC_9_488_peak)/(PgdC_9_568_low/PgdC_9_488_low)))
PgdC_9_btp<-c((PgdC_9_568_base/PgdC_9_488_base)/(PgdC_9_568_peak/PgdC_9_488_peak))
PgdC_9_btl<-c((PgdC_9_568_base/PgdC_9_488_base)/(PgdC_9_568_low/PgdC_9_488_low))

HyPer_PgdC_9_base<-c(mean(PgdC_9_568_base/PgdC_9_488_base)) 
HyPer_PgdC_9_blp<-c(mean(PgdC_9_blp))
HyPer_PgdC_9_bpl<-c(mean(PgdC_9_bpl))
HyPer_PgdC_9_btp<-c(mean(PgdC_9_btp))
HyPer_PgdC_9_btl<-c(mean(PgdC_9_btl))

a10<-c(Pgd[,37])
b10<-c(Pgd[,38])
c10<-c(Pgd[,39])
d10<-c(Pgd[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
PgdC_eyedisc_10<-c(bb10/aa10)


slope_PgdC_10_568<-c(bb10[60]-bb10[59],
                     bb10[59]-bb10[58],
                     bb10[58]-bb10[57],
                     bb10[57]-bb10[56],
                     bb10[56]-bb10[55],
                     bb10[55]-bb10[54],
                     bb10[54]-bb10[53],
                     bb10[53]-bb10[52],
                     bb10[52]-bb10[51],
                     bb10[51]-bb10[50])
S_PgdC_10_568<-c(mean(slope_PgdC_10_568))
n_PgdC_10_568_base<-c(bb10[60]-(60*S_PgdC_10_568))
PgdC_10_568_base<-0
for(i in 51:60)
{PgdC_10_568_base<- S_PgdC_10_568*bb10[51:60]+n_PgdC_10_568_base}       # corrects all ten baseline values with the slope

n_PgdC_10_568_peak<-c(bb10[94]-(94*S_PgdC_10_568))
PgdC_10_568_peak<-0
for(i in 85:94)
{PgdC_10_568_peak<- S_PgdC_10_568*bb10[85:94]+n_PgdC_10_568_peak}       # corrects all ten low values with the slope

n_PgdC_10_568_low<-c(bb10[150]-(150*S_PgdC_10_568))
PgdC_10_568_low<-0
for(i in 141:150)
{PgdC_10_568_low<- S_PgdC_10_568*bb10[141:150]+n_PgdC_10_568_low}


slope_PgdC_10_488<-c(aa10[60]-aa10[59],
                     aa10[59]-aa10[58],
                     aa10[58]-aa10[57],
                     aa10[57]-aa10[56],
                     aa10[56]-aa10[55],
                     aa10[55]-aa10[54],
                     aa10[54]-aa10[53],
                     aa10[53]-aa10[52],
                     aa10[52]-aa10[51],
                     aa10[51]-aa10[50])
S_PgdC_10_488<-c(mean(slope_PgdC_10_488))
n_PgdC_10_488<-c(aa10[60]-(60*S_PgdC_10_488))
PgdC_10_488_base<-0
for(i in 51:60)
{PgdC_10_488_base<- S_PgdC_10_488*aa10[51:60]+n_PgdC_10_488}

PgdC_10_488_peak<-0
for(i in 85:94)
{PgdC_10_488_peak<- S_PgdC_10_488*aa10[85:94]+n_PgdC_10_488}

PgdC_10_488_low<-0
for(i in 141:150)
{PgdC_10_488_low<- S_PgdC_10_488*aa10[141:150]+n_PgdC_10_488}

PgdC_10_blp<-c((PgdC_10_568_base/PgdC_10_488_base)/((PgdC_10_568_low/PgdC_10_488_low)/(PgdC_10_568_peak/PgdC_10_488_peak)))
PgdC_10_bpl<-c((PgdC_10_568_base/PgdC_10_488_base)/((PgdC_10_568_peak/PgdC_10_488_peak)/(PgdC_10_568_low/PgdC_10_488_low)))
PgdC_10_btp<-c((PgdC_10_568_base/PgdC_10_488_base)/(PgdC_10_568_peak/PgdC_10_488_peak))
PgdC_10_btl<-c((PgdC_10_568_base/PgdC_10_488_base)/(PgdC_10_568_low/PgdC_10_488_low))

HyPer_PgdC_10_base<-c(mean(PgdC_10_568_base/PgdC_10_488_base)) 
HyPer_PgdC_10_blp<-c(mean(PgdC_10_blp))
HyPer_PgdC_10_bpl<-c(mean(PgdC_10_bpl))
HyPer_PgdC_10_btp<-c(mean(PgdC_10_btp))
HyPer_PgdC_10_btl<-c(mean(PgdC_10_btl))

a11<-c(Pgd[,41])
b11<-c(Pgd[,42])
c11<-c(Pgd[,43])
d11<-c(Pgd[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
PgdC_eyedisc_11<-c(bb11/aa11)


slope_PgdC_11_568<-c(bb11[60]-bb11[59],
                     bb11[59]-bb11[58],
                     bb11[58]-bb11[57],
                     bb11[57]-bb11[56],
                     bb11[56]-bb11[55],
                     bb11[55]-bb11[54],
                     bb11[54]-bb11[53],
                     bb11[53]-bb11[52],
                     bb11[52]-bb11[51],
                     bb11[51]-bb11[50])
S_PgdC_11_568<-c(mean(slope_PgdC_11_568))
n_PgdC_11_568_base<-c(bb11[60]-(60*S_PgdC_11_568))
PgdC_11_568_base<-0
for(i in 51:60)
{PgdC_11_568_base<- S_PgdC_11_568*bb11[51:60]+n_PgdC_11_568_base}       # corrects all ten baseline values with the slope

n_PgdC_11_568_peak<-c(bb11[94]-(94*S_PgdC_11_568))
PgdC_11_568_peak<-0
for(i in 85:94)
{PgdC_11_568_peak<- S_PgdC_11_568*bb11[85:94]+n_PgdC_11_568_peak}       # corrects all ten low values with the slope

n_PgdC_11_568_low<-c(bb11[150]-(150*S_PgdC_11_568))
PgdC_11_568_low<-0
for(i in 141:150)
{PgdC_11_568_low<- S_PgdC_11_568*bb11[141:150]+n_PgdC_11_568_low}


slope_PgdC_11_488<-c(aa11[60]-aa11[59],
                     aa11[59]-aa11[58],
                     aa11[58]-aa11[57],
                     aa11[57]-aa11[56],
                     aa11[56]-aa11[55],
                     aa11[55]-aa11[54],
                     aa11[54]-aa11[53],
                     aa11[53]-aa11[52],
                     aa11[52]-aa11[51],
                     aa11[51]-aa11[50])
S_PgdC_11_488<-c(mean(slope_PgdC_11_488))
n_PgdC_11_488<-c(aa11[60]-(60*S_PgdC_11_488))
PgdC_11_488_base<-0
for(i in 51:60)
{PgdC_11_488_base<- S_PgdC_11_488*aa11[51:60]+n_PgdC_11_488}

PgdC_11_488_peak<-0
for(i in 85:94)
{PgdC_11_488_peak<- S_PgdC_11_488*aa11[85:94]+n_PgdC_11_488}

PgdC_11_488_low<-0
for(i in 141:150)
{PgdC_11_488_low<- S_PgdC_11_488*aa1[141:150]+n_PgdC_11_488}

PgdC_11_blp<-c((PgdC_11_568_base/PgdC_11_488_base)/((PgdC_11_568_low/PgdC_11_488_low)/(PgdC_11_568_peak/PgdC_11_488_peak)))
PgdC_11_bpl<-c((PgdC_11_568_base/PgdC_11_488_base)/((PgdC_11_568_peak/PgdC_11_488_peak)/(PgdC_11_568_low/PgdC_11_488_low)))
PgdC_11_btp<-c((PgdC_11_568_base/PgdC_11_488_base)/(PgdC_11_568_peak/PgdC_11_488_peak))
PgdC_11_btl<-c((PgdC_11_568_base/PgdC_11_488_base)/(PgdC_11_568_low/PgdC_11_488_low))

HyPer_PgdC_11_base<-c(mean(PgdC_11_568_base/PgdC_11_488_base)) 
HyPer_PgdC_11_blp<-c(mean(PgdC_11_blp))
HyPer_PgdC_11_bpl<-c(mean(PgdC_11_bpl))
HyPer_PgdC_11_btp<-c(mean(PgdC_11_btp))
HyPer_PgdC_11_btl<-c(mean(PgdC_11_btl))

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



HyPer_PgdC_time_course<-c(PgdC_eyedisc_1,PgdC_eyedisc_2,PgdC_eyedisc_3,PgdC_eyedisc_4,PgdC_eyedisc_5,PgdC_eyedisc_6,PgdC_eyedisc_7,PgdC_eyedisc_8,PgdC_eyedisc_9,PgdC_eyedisc_10,PgdC_eyedisc_11,PgdC_eyedisc_12,PgdC_eyedisc_13)
matHyPer_PgdC_time_course<-matrix(HyPer_PgdC_time_course,nrow=150,ncol=13)
mean_HyPer_PgdC_time_course<-c(rowMeans(matHyPer_PgdC_time_course))

HyPer_PgdC_base<-c(HyPer_PgdC_1_base,HyPer_PgdC_2_base,HyPer_PgdC_3_base,HyPer_PgdC_4_base,HyPer_PgdC_5_base,HyPer_PgdC_6_base,HyPer_PgdC_7_base,PgdC_eyedisc_8,HyPer_PgdC_9_base,HyPer_PgdC_10_base,HyPer_PgdC_11_base,HyPer_PgdC_12_base,HyPer_PgdC_13_base)



