a1<-c(Pgd[,1])  # creates a vector containing all 488 values for first eyedisc
b1<-c(Pgd[,2])  # creates a vector containing all 488 background values for first eyedisc
c1<-c(Pgd[,3])  # creates a vector containing all 568 values for first eyedisc
d1<-c(Pgd[,4])  # creates a vector containing all 568 background values for first eyedisc
aa1<-c(a1-b1)   # creates a BG subtracted vector for 488 channel
bb1<-c(c1-d1)   # creates a BG subtracted vector for 568 channel
PgdC_eyedisc_1<-c(aa1/bb1) # creates a first vector as a ratio, only important for time courses

slope_PgdC_1_488<-c(aa1[60]-aa1[59],
                   aa1[59]-aa1[58],
                   aa1[58]-aa1[57],
                   aa1[57]-aa1[56],
                   aa1[56]-aa1[55],
                   aa1[55]-aa1[54],
                   aa1[54]-aa1[53],
                   aa1[53]-aa1[52],
                   aa1[52]-aa1[51],
                   aa1[51]-aa1[50])                               # creates a vector containing last ten values after last condition(i.e.buffer change) to be considered linear bleaching
S_PgdC_1_488<-c(mean(slope_PgdC_1_488))                             # calculates the mean slope resulting from these ten values
n_PgdC_1_488_base<-c(aa1[60]-(60*S_PgdC_1_488))                     # calculates a theoretical linear zero time point value to use for linear correction
PgdC_1_488_base<-0
for(i in 51:60)
{PgdC_1_488_base<- S_PgdC_1_488*aa1[51:60]+n_PgdC_1_488_base}        # corrects all ten baseline values with the slope of a theoretical linear fluorescence decay

n_PgdC_1_488_low<-c(aa1[85]-(85*S_PgdC_1_488))
PgdC_1_488_low<-0
for(i in 111:120)
{PgdC_1_488_low<- S_PgdC_1_488*aa1[111:120]+n_PgdC_1_488_low}          # corrects all ten low values with the slope of theoretical linear fluorescence decay

n_PgdC_1_488_peak<-c(aa1[120]-(120*S_PgdC_1_488))
PgdC_1_488_peak<-0
for(i in 76:85)
{PgdC_1_488_peak<- S_PgdC_1_488*aa1[76:85]+n_PgdC_1_488_peak}      # corrects all ten peak values with the slope of theoretical linear fluorescence decay


slope_PgdC_1_568<-c(bb1[60]-bb1[59],
                   bb1[59]-bb1[58],
                   bb1[58]-bb1[57],
                   bb1[57]-bb1[56],
                   bb1[56]-bb1[55],
                   bb1[55]-bb1[54],
                   bb1[54]-bb1[53],
                   bb1[53]-bb1[52],
                   bb1[52]-bb1[51],
                   bb1[51]-bb1[50])                               # same as above but for the second channel
S_PgdC_1_568<-c(mean(slope_PgdC_1_568))
n_PgdC_1_568<-c(bb1[60]-(60*S_PgdC_1_568))
PgdC_1_568_base<-0
for(i in 51:60)
{PgdC_1_568_base<- S_PgdC_1_568*bb1[51:60]+n_PgdC_1_568}

PgdC_1_568_low<-0
for(i in 111:120)
{PgdC_1_568_low<- S_PgdC_1_568*bb1[111:120]+n_PgdC_1_568}

PgdC_1_568_peak<-0
for(i in 76:85)
{PgdC_1_568_peak<- S_PgdC_1_568*bb1[76:85]+n_PgdC_1_568}

PgdC_1_bpl<-c((PgdC_1_488_base/PgdC_1_568_base)/((PgdC_1_488_peak/PgdC_1_568_peak)/(PgdC_1_488_low/PgdC_1_568_low)))   # see below
PgdC_1_blp<-c((PgdC_1_488_base/PgdC_1_568_base)/((PgdC_1_488_low/PgdC_1_568_low)/(PgdC_1_488_peak/PgdC_1_568_peak)))
PgdC_1_btl<-c((PgdC_1_488_base/PgdC_1_568_base)/(PgdC_1_488_low/PgdC_1_568_low))
PgdC_1_btp<-c((PgdC_1_488_base/PgdC_1_568_base)/(PgdC_1_488_peak/PgdC_1_568_peak))

pHerry_PgdC_1_base<-c(mean(PgdC_1_488_base/PgdC_1_568_base))       # creates a vector containing deltaF to F of calculated from the ten baseline values
pHerry_PgdC_1_bpl<-c(mean(PgdC_1_bpl))                            # baseline in relation to peak divided by low
pHerry_PgdC_1_blp<-c(mean(PgdC_1_blp))                            # baseline in relation to low divided by peak
pHerry_PgdC_1_btl<-c(mean(PgdC_1_btl))                            # baseline in relation to peak indicating a potentially altered baseline by a maximum that can be reached
pHerry_PgdC_1_btp<-c(mean(PgdC_1_btp))                            # baseline in realation to low indicating a potentially altered baseline by how well the cells can recover

a2<-c(Pgd[,5])
b2<-c(Pgd[,6])
c2<-c(Pgd[,7])
d2<-c(Pgd[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
PgdC_eyedisc_2<-c(aa2/bb2)


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
n_PgdC_2_488_base<-c(aa2[60]-(60*S_PgdC_2_488))
PgdC_2_488_base<-0
for(i in 51:60)
{PgdC_2_488_base<- S_PgdC_2_488*aa2[51:60]+n_PgdC_2_488_base}       # corrects all ten baseline values with the slope

n_PgdC_2_488_low<-c(aa2[85]-(85*S_PgdC_2_488))
PgdC_2_488_low<-0
for(i in 111:120)
{PgdC_2_488_low<- S_PgdC_2_488*aa2[111:120]+n_PgdC_2_488_low}       # corrects all ten low values with the slope

n_PgdC_2_488_peak<-c(aa2[120]-(120*S_PgdC_2_488))
PgdC_2_488_peak<-0
for(i in 76:85)
{PgdC_2_488_peak<- S_PgdC_2_488*aa2[76:85]+n_PgdC_2_488_peak}


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
n_PgdC_2_568<-c(bb2[60]-(60*S_PgdC_2_568))
PgdC_2_568_base<-0
for(i in 51:60)
{PgdC_2_568_base<- S_PgdC_2_568*bb2[51:60]+n_PgdC_2_568}

PgdC_2_568_low<-0
for(i in 111:120)
{PgdC_2_568_low<- S_PgdC_2_568*bb2[111:120]+n_PgdC_2_568}

PgdC_2_568_peak<-0
for(i in 76:85)
{PgdC_2_568_peak<- S_PgdC_2_568*bb2[76:85]+n_PgdC_2_568}

PgdC_2_bpl<-c((PgdC_2_488_base/PgdC_2_568_base)/((PgdC_2_488_peak/PgdC_2_568_peak)/(PgdC_2_488_low/PgdC_2_568_low)))
PgdC_2_blp<-c((PgdC_2_488_base/PgdC_2_568_base)/((PgdC_2_488_low/PgdC_2_568_low)/(PgdC_2_488_peak/PgdC_2_568_peak)))
PgdC_2_btl<-c((PgdC_2_488_base/PgdC_2_568_base)/(PgdC_2_488_low/PgdC_2_568_low))
PgdC_2_btp<-c((PgdC_2_488_base/PgdC_2_568_base)/(PgdC_2_488_peak/PgdC_2_568_peak))

pHerry_PgdC_2_base<-c(mean(PgdC_2_488_base/PgdC_2_568_base)) 
pHerry_PgdC_2_bpl<-c(mean(PgdC_2_bpl))
pHerry_PgdC_2_blp<-c(mean(PgdC_2_blp))
pHerry_PgdC_2_btl<-c(mean(PgdC_2_btl))
pHerry_PgdC_2_btp<-c(mean(PgdC_2_btp))

a3<-c(Pgd[,9])
b3<-c(Pgd[,10])
c3<-c(Pgd[,11])
d3<-c(Pgd[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
PgdC_eyedisc_3<-c(aa3/bb3)


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
n_PgdC_3_488_base<-c(aa3[60]-(60*S_PgdC_3_488))
PgdC_3_488_base<-0
for(i in 51:60)
{PgdC_3_488_base<- S_PgdC_3_488*aa3[51:60]+n_PgdC_3_488_base}       # corrects all ten baseline values with the slope

n_PgdC_3_488_low<-c(aa3[85]-(85*S_PgdC_3_488))
PgdC_3_488_low<-0
for(i in 111:120)
{PgdC_3_488_low<- S_PgdC_3_488*aa3[111:120]+n_PgdC_3_488_low}       # corrects all ten low values with the slope

n_PgdC_3_488_peak<-c(aa3[120]-(120*S_PgdC_3_488))
PgdC_3_488_peak<-0
for(i in 76:85)
{PgdC_3_488_peak<- S_PgdC_3_488*aa3[76:85]+n_PgdC_3_488_peak}


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
n_PgdC_3_568<-c(bb3[60]-(60*S_PgdC_3_568))
PgdC_3_568_base<-0
for(i in 51:60)
{PgdC_3_568_base<- S_PgdC_3_568*bb3[51:60]+n_PgdC_3_568}

PgdC_3_568_low<-0
for(i in 111:120)
{PgdC_3_568_low<- S_PgdC_3_568*bb3[111:120]+n_PgdC_3_568}

PgdC_3_568_peak<-0
for(i in 76:85)
{PgdC_3_568_peak<- S_PgdC_3_568*bb3[76:85]+n_PgdC_3_568}

PgdC_3_bpl<-c((PgdC_3_488_base/PgdC_3_568_base)/((PgdC_3_488_peak/PgdC_3_568_peak)/(PgdC_3_488_low/PgdC_3_568_low)))
PgdC_3_blp<-c((PgdC_3_488_base/PgdC_3_568_base)/((PgdC_3_488_low/PgdC_3_568_low)/(PgdC_3_488_peak/PgdC_3_568_peak)))
PgdC_3_btl<-c((PgdC_3_488_base/PgdC_3_568_base)/(PgdC_3_488_low/PgdC_3_568_low))
PgdC_3_btp<-c((PgdC_3_488_base/PgdC_3_568_base)/(PgdC_3_488_peak/PgdC_3_568_peak))

pHerry_PgdC_3_base<-c(mean(PgdC_3_488_base/PgdC_3_568_base)) 
pHerry_PgdC_3_bpl<-c(mean(PgdC_3_bpl))
pHerry_PgdC_3_blp<-c(mean(PgdC_3_blp))
pHerry_PgdC_3_btl<-c(mean(PgdC_3_btl))
pHerry_PgdC_3_btp<-c(mean(PgdC_3_btp))


a5<-c(Pgd[,17])
b5<-c(Pgd[,18])
c5<-c(Pgd[,19])
d5<-c(Pgd[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
PgdC_eyedisc_5<-c(aa5/bb5)


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
n_PgdC_5_488_base<-c(aa5[60]-(60*S_PgdC_5_488))
PgdC_5_488_base<-0
for(i in 51:60)
{PgdC_5_488_base<- S_PgdC_5_488*aa5[51:60]+n_PgdC_5_488_base}       # corrects all ten baseline values with the slope

n_PgdC_5_488_low<-c(aa5[85]-(85*S_PgdC_5_488))
PgdC_5_488_low<-0
for(i in 111:120)
{PgdC_5_488_low<- S_PgdC_5_488*aa5[111:120]+n_PgdC_5_488_low}       # corrects all ten low values with the slope

n_PgdC_5_488_peak<-c(aa5[120]-(120*S_PgdC_5_488))
PgdC_5_488_peak<-0
for(i in 76:85)
{PgdC_5_488_peak<- S_PgdC_5_488*aa5[76:85]+n_PgdC_5_488_peak}


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
n_PgdC_5_568<-c(bb5[60]-(60*S_PgdC_5_568))
PgdC_5_568_base<-0
for(i in 51:60)
{PgdC_5_568_base<- S_PgdC_5_568*bb5[51:60]+n_PgdC_5_568}

PgdC_5_568_low<-0
for(i in 111:120)
{PgdC_5_568_low<- S_PgdC_5_568*bb5[111:120]+n_PgdC_5_568}

PgdC_5_568_peak<-0
for(i in 76:85)
{PgdC_5_568_peak<- S_PgdC_5_568*bb5[76:85]+n_PgdC_5_568}

PgdC_5_bpl<-c((PgdC_5_488_base/PgdC_5_568_base)/((PgdC_5_488_peak/PgdC_5_568_peak)/(PgdC_5_488_low/PgdC_5_568_low)))
PgdC_5_blp<-c((PgdC_5_488_base/PgdC_5_568_base)/((PgdC_5_488_low/PgdC_5_568_low)/(PgdC_5_488_peak/PgdC_5_568_peak)))
PgdC_5_btl<-c((PgdC_5_488_base/PgdC_5_568_base)/(PgdC_5_488_low/PgdC_5_568_low))
PgdC_5_btp<-c((PgdC_5_488_base/PgdC_5_568_base)/(PgdC_5_488_peak/PgdC_5_568_peak))

pHerry_PgdC_5_base<-c(mean(PgdC_5_488_base/PgdC_5_568_base)) 
pHerry_PgdC_5_bpl<-c(mean(PgdC_5_bpl))
pHerry_PgdC_5_blp<-c(mean(PgdC_5_blp))
pHerry_PgdC_5_btl<-c(mean(PgdC_5_btl))
pHerry_PgdC_5_btp<-c(mean(PgdC_5_btp))

a6<-c(Pgd[,21])
b6<-c(Pgd[,22])
c6<-c(Pgd[,23])
d6<-c(Pgd[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
PgdC_eyedisc_6<-c(aa6/bb6)


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
n_PgdC_6_488_base<-c(aa6[60]-(60*S_PgdC_6_488))
PgdC_6_488_base<-0
for(i in 51:60)
{PgdC_6_488_base<- S_PgdC_6_488*aa6[51:60]+n_PgdC_6_488_base}       # corrects all ten baseline values with the slope

n_PgdC_6_488_low<-c(aa6[85]-(85*S_PgdC_6_488))
PgdC_6_488_low<-0
for(i in 111:120)
{PgdC_6_488_low<- S_PgdC_6_488*aa6[111:120]+n_PgdC_6_488_low}       # corrects all ten low values with the slope

n_PgdC_6_488_peak<-c(aa6[120]-(120*S_PgdC_6_488))
PgdC_6_488_peak<-0
for(i in 76:85)
{PgdC_6_488_peak<- S_PgdC_6_488*aa6[76:85]+n_PgdC_6_488_peak}


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
n_PgdC_6_568<-c(bb6[60]-(60*S_PgdC_6_568))
PgdC_6_568_base<-0
for(i in 51:60)
{PgdC_6_568_base<- S_PgdC_6_568*bb6[51:60]+n_PgdC_6_568}

PgdC_6_568_low<-0
for(i in 111:120)
{PgdC_6_568_low<- S_PgdC_6_568*bb6[111:120]+n_PgdC_6_568}

PgdC_6_568_peak<-0
for(i in 76:85)
{PgdC_6_568_peak<- S_PgdC_6_568*bb6[76:85]+n_PgdC_6_568}

PgdC_6_bpl<-c((PgdC_6_488_base/PgdC_6_568_base)/((PgdC_6_488_peak/PgdC_6_568_peak)/(PgdC_6_488_low/PgdC_6_568_low)))
PgdC_6_blp<-c((PgdC_6_488_base/PgdC_6_568_base)/((PgdC_6_488_low/PgdC_6_568_low)/(PgdC_6_488_peak/PgdC_6_568_peak)))
PgdC_6_btl<-c((PgdC_6_488_base/PgdC_6_568_base)/(PgdC_6_488_low/PgdC_6_568_low))
PgdC_6_btp<-c((PgdC_6_488_base/PgdC_6_568_base)/(PgdC_6_488_peak/PgdC_6_568_peak))

pHerry_PgdC_6_base<-c(mean(PgdC_6_488_base/PgdC_6_568_base)) 
pHerry_PgdC_6_bpl<-c(mean(PgdC_6_bpl))
pHerry_PgdC_6_blp<-c(mean(PgdC_6_blp))
pHerry_PgdC_6_btl<-c(mean(PgdC_6_btl))
pHerry_PgdC_6_btp<-c(mean(PgdC_6_btp))

a7<-c(Pgd[,25])
b7<-c(Pgd[,26])
c7<-c(Pgd[,27])
d7<-c(Pgd[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
PgdC_eyedisc_7<-c(aa7/bb7)


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
n_PgdC_7_488_base<-c(aa7[60]-(60*S_PgdC_7_488))
PgdC_7_488_base<-0
for(i in 51:60)
{PgdC_7_488_base<- S_PgdC_7_488*aa7[51:60]+n_PgdC_7_488_base}       # corrects all ten baseline values with the slope

n_PgdC_7_488_low<-c(aa7[85]-(85*S_PgdC_7_488))
PgdC_7_488_low<-0
for(i in 111:120)
{PgdC_7_488_low<- S_PgdC_7_488*aa7[111:120]+n_PgdC_7_488_low}       # corrects all ten low values with the slope

n_PgdC_7_488_peak<-c(aa7[120]-(120*S_PgdC_7_488))
PgdC_7_488_peak<-0
for(i in 76:85)
{PgdC_7_488_peak<- S_PgdC_7_488*aa7[76:85]+n_PgdC_7_488_peak}


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
n_PgdC_7_568<-c(bb7[60]-(60*S_PgdC_7_568))
PgdC_7_568_base<-0
for(i in 51:60)
{PgdC_7_568_base<- S_PgdC_7_568*bb7[51:60]+n_PgdC_7_568}

PgdC_7_568_low<-0
for(i in 111:120)
{PgdC_7_568_low<- S_PgdC_7_568*bb7[111:120]+n_PgdC_7_568}

PgdC_7_568_peak<-0
for(i in 76:85)
{PgdC_7_568_peak<- S_PgdC_7_568*bb7[76:85]+n_PgdC_7_568}

PgdC_7_bpl<-c((PgdC_7_488_base/PgdC_7_568_base)/((PgdC_7_488_peak/PgdC_7_568_peak)/(PgdC_7_488_low/PgdC_7_568_low)))
PgdC_7_blp<-c((PgdC_7_488_base/PgdC_7_568_base)/((PgdC_7_488_low/PgdC_7_568_low)/(PgdC_7_488_peak/PgdC_7_568_peak)))
PgdC_7_btl<-c((PgdC_7_488_base/PgdC_7_568_base)/(PgdC_7_488_low/PgdC_7_568_low))
PgdC_7_btp<-c((PgdC_7_488_base/PgdC_7_568_base)/(PgdC_7_488_peak/PgdC_7_568_peak))

pHerry_PgdC_7_base<-c(mean(PgdC_7_488_base/PgdC_7_568_base)) 
pHerry_PgdC_7_bpl<-c(mean(PgdC_7_bpl))
pHerry_PgdC_7_blp<-c(mean(PgdC_7_blp))
pHerry_PgdC_7_btl<-c(mean(PgdC_7_btl))
pHerry_PgdC_7_btp<-c(mean(PgdC_7_btp))


a8<-c(Pgd[,29])
b8<-c(Pgd[,30])
c8<-c(Pgd[,31])
d8<-c(Pgd[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
PgdC_eyedisc_8<-c(aa8/bb8)


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
n_PgdC_8_488_base<-c(aa8[60]-(60*S_PgdC_8_488))
PgdC_8_488_base<-0
for(i in 51:60)
{PgdC_8_488_base<- S_PgdC_8_488*aa8[51:60]+n_PgdC_8_488_base}       # corrects all ten baseline values with the slope

n_PgdC_8_488_low<-c(aa8[85]-(85*S_PgdC_8_488))
PgdC_8_488_low<-0
for(i in 111:120)
{PgdC_8_488_low<- S_PgdC_8_488*aa8[111:120]+n_PgdC_8_488_low}       # corrects all ten low values with the slope

n_PgdC_8_488_peak<-c(aa8[120]-(120*S_PgdC_8_488))
PgdC_8_488_peak<-0
for(i in 76:85)
{PgdC_8_488_peak<- S_PgdC_8_488*aa8[76:85]+n_PgdC_8_488_peak}


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
n_PgdC_8_568<-c(bb8[60]-(60*S_PgdC_8_568))
PgdC_8_568_base<-0
for(i in 51:60)
{PgdC_8_568_base<- S_PgdC_8_568*bb8[51:60]+n_PgdC_8_568}

PgdC_8_568_low<-0
for(i in 111:120)
{PgdC_8_568_low<- S_PgdC_8_568*bb8[111:120]+n_PgdC_8_568}

PgdC_8_568_peak<-0
for(i in 76:85)
{PgdC_8_568_peak<- S_PgdC_8_568*bb8[76:85]+n_PgdC_8_568}

PgdC_8_bpl<-c((PgdC_8_488_base/PgdC_8_568_base)/((PgdC_8_488_peak/PgdC_8_568_peak)/(PgdC_8_488_low/PgdC_8_568_low)))
PgdC_8_blp<-c((PgdC_8_488_base/PgdC_8_568_base)/((PgdC_8_488_low/PgdC_8_568_low)/(PgdC_8_488_peak/PgdC_8_568_peak)))
PgdC_8_btl<-c((PgdC_8_488_base/PgdC_8_568_base)/(PgdC_8_488_low/PgdC_8_568_low))
PgdC_8_btp<-c((PgdC_8_488_base/PgdC_8_568_base)/(PgdC_8_488_peak/PgdC_8_568_peak))

pHerry_PgdC_8_base<-c(mean(PgdC_8_488_base/PgdC_8_568_base)) 
pHerry_PgdC_8_bpl<-c(mean(PgdC_8_bpl))
pHerry_PgdC_8_blp<-c(mean(PgdC_8_blp))
pHerry_PgdC_8_btl<-c(mean(PgdC_8_btl))
pHerry_PgdC_8_btp<-c(mean(PgdC_8_btp))


a9<-c(Pgd[,33])
b9<-c(Pgd[,34])
c9<-c(Pgd[,35])
d9<-c(Pgd[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
PgdC_eyedisc_9<-c(aa9/bb9)


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
n_PgdC_9_488_base<-c(aa9[60]-(60*S_PgdC_9_488))
PgdC_9_488_base<-0
for(i in 51:60)
{PgdC_9_488_base<- S_PgdC_9_488*aa9[51:60]+n_PgdC_9_488_base}       # corrects all ten baseline values with the slope

n_PgdC_9_488_low<-c(aa9[85]-(85*S_PgdC_9_488))
PgdC_9_488_low<-0
for(i in 111:120)
{PgdC_9_488_low<- S_PgdC_9_488*aa9[111:120]+n_PgdC_9_488_low}       # corrects all ten low values with the slope

n_PgdC_9_488_peak<-c(aa9[120]-(120*S_PgdC_9_488))
PgdC_9_488_peak<-0
for(i in 76:85)
{PgdC_9_488_peak<- S_PgdC_9_488*aa9[76:85]+n_PgdC_9_488_peak}


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
n_PgdC_9_568<-c(bb9[60]-(60*S_PgdC_9_568))
PgdC_9_568_base<-0
for(i in 51:60)
{PgdC_9_568_base<- S_PgdC_9_568*bb9[51:60]+n_PgdC_9_568}

PgdC_9_568_low<-0
for(i in 111:120)
{PgdC_9_568_low<- S_PgdC_9_568*bb9[111:120]+n_PgdC_9_568}

PgdC_9_568_peak<-0
for(i in 76:85)
{PgdC_9_568_peak<- S_PgdC_9_568*bb9[76:85]+n_PgdC_9_568}

PgdC_9_bpl<-c((PgdC_9_488_base/PgdC_9_568_base)/((PgdC_9_488_peak/PgdC_9_568_peak)/(PgdC_9_488_low/PgdC_9_568_low)))
PgdC_9_blp<-c((PgdC_9_488_base/PgdC_9_568_base)/((PgdC_9_488_low/PgdC_9_568_low)/(PgdC_9_488_peak/PgdC_9_568_peak)))
PgdC_9_btl<-c((PgdC_9_488_base/PgdC_9_568_base)/(PgdC_9_488_low/PgdC_9_568_low))
PgdC_9_btp<-c((PgdC_9_488_base/PgdC_9_568_base)/(PgdC_9_488_peak/PgdC_9_568_peak))

pHerry_PgdC_9_base<-c(mean(PgdC_9_488_base/PgdC_9_568_base)) 
pHerry_PgdC_9_bpl<-c(mean(PgdC_9_bpl))
pHerry_PgdC_9_blp<-c(mean(PgdC_9_blp))
pHerry_PgdC_9_btl<-c(mean(PgdC_9_btl))
pHerry_PgdC_9_btp<-c(mean(PgdC_9_btp))

a10<-c(Pgd[,37])
b10<-c(Pgd[,38])
c10<-c(Pgd[,39])
d10<-c(Pgd[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
PgdC_eyedisc_10<-c(aa10/bb10)


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
n_PgdC_10_488_base<-c(aa10[60]-(60*S_PgdC_10_488))
PgdC_10_488_base<-0
for(i in 51:60)
{PgdC_10_488_base<- S_PgdC_10_488*aa10[51:60]+n_PgdC_10_488_base}       # corrects all ten baseline values with the slope

n_PgdC_10_488_low<-c(aa10[85]-(85*S_PgdC_10_488))
PgdC_10_488_low<-0
for(i in 111:120)
{PgdC_10_488_low<- S_PgdC_10_488*aa10[111:120]+n_PgdC_10_488_low}       # corrects all ten low values with the slope

n_PgdC_10_488_peak<-c(aa10[120]-(120*S_PgdC_10_488))
PgdC_10_488_peak<-0
for(i in 76:85)
{PgdC_10_488_peak<- S_PgdC_10_488*aa10[76:85]+n_PgdC_10_488_peak}


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
n_PgdC_10_568<-c(bb10[60]-(60*S_PgdC_10_568))
PgdC_10_568_base<-0
for(i in 51:60)
{PgdC_10_568_base<- S_PgdC_10_568*bb10[51:60]+n_PgdC_10_568}

PgdC_10_568_low<-0
for(i in 111:120)
{PgdC_10_568_low<- S_PgdC_10_568*bb10[111:120]+n_PgdC_10_568}

PgdC_10_568_peak<-0
for(i in 76:85)
{PgdC_10_568_peak<- S_PgdC_10_568*bb10[76:85]+n_PgdC_10_568}

PgdC_10_bpl<-c((PgdC_10_488_base/PgdC_10_568_base)/((PgdC_10_488_peak/PgdC_10_568_peak)/(PgdC_10_488_low/PgdC_10_568_low)))
PgdC_10_blp<-c((PgdC_10_488_base/PgdC_10_568_base)/((PgdC_10_488_low/PgdC_10_568_low)/(PgdC_10_488_peak/PgdC_10_568_peak)))
PgdC_10_btl<-c((PgdC_10_488_base/PgdC_10_568_base)/(PgdC_10_488_low/PgdC_10_568_low))
PgdC_10_btp<-c((PgdC_10_488_base/PgdC_10_568_base)/(PgdC_10_488_peak/PgdC_10_568_peak))

pHerry_PgdC_10_base<-c(mean(PgdC_10_488_base/PgdC_10_568_base)) 
pHerry_PgdC_10_bpl<-c(mean(PgdC_10_bpl))
pHerry_PgdC_10_blp<-c(mean(PgdC_10_blp))
pHerry_PgdC_10_btl<-c(mean(PgdC_10_btl))
pHerry_PgdC_10_btp<-c(mean(PgdC_10_btp))

a11<-c(Pgd[,41])
b11<-c(Pgd[,42])
c11<-c(Pgd[,43])
d11<-c(Pgd[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
PgdC_eyedisc_11<-c(aa11/bb11)


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
n_PgdC_11_488_base<-c(aa11[60]-(60*S_PgdC_11_488))
PgdC_11_488_base<-0
for(i in 51:60)
{PgdC_11_488_base<- S_PgdC_11_488*aa11[51:60]+n_PgdC_11_488_base}       # corrects all ten baseline values with the slope

n_PgdC_11_488_low<-c(aa11[85]-(85*S_PgdC_11_488))
PgdC_11_488_low<-0
for(i in 111:120)
{PgdC_11_488_low<- S_PgdC_11_488*aa11[111:120]+n_PgdC_11_488_low}       # corrects all ten low values with the slope

n_PgdC_11_488_peak<-c(aa11[120]-(120*S_PgdC_11_488))
PgdC_11_488_peak<-0
for(i in 76:85)
{PgdC_11_488_peak<- S_PgdC_11_488*aa11[76:85]+n_PgdC_11_488_peak}


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
n_PgdC_11_568<-c(bb11[60]-(60*S_PgdC_11_568))
PgdC_11_568_base<-0
for(i in 51:60)
{PgdC_11_568_base<- S_PgdC_11_568*bb11[51:60]+n_PgdC_11_568}

PgdC_11_568_low<-0
for(i in 111:120)
{PgdC_11_568_low<- S_PgdC_11_568*bb11[111:120]+n_PgdC_11_568}

PgdC_11_568_peak<-0
for(i in 76:85)
{PgdC_11_568_peak<- S_PgdC_11_568*bb1[76:85]+n_PgdC_11_568}

PgdC_11_bpl<-c((PgdC_11_488_base/PgdC_11_568_base)/((PgdC_11_488_peak/PgdC_11_568_peak)/(PgdC_11_488_low/PgdC_11_568_low)))
PgdC_11_blp<-c((PgdC_11_488_base/PgdC_11_568_base)/((PgdC_11_488_low/PgdC_11_568_low)/(PgdC_11_488_peak/PgdC_11_568_peak)))
PgdC_11_btl<-c((PgdC_11_488_base/PgdC_11_568_base)/(PgdC_11_488_low/PgdC_11_568_low))
PgdC_11_btp<-c((PgdC_11_488_base/PgdC_11_568_base)/(PgdC_11_488_peak/PgdC_11_568_peak))

pHerry_PgdC_11_base<-c(mean(PgdC_11_488_base/PgdC_11_568_base)) 
pHerry_PgdC_11_bpl<-c(mean(PgdC_11_bpl))
pHerry_PgdC_11_blp<-c(mean(PgdC_11_blp))
pHerry_PgdC_11_btl<-c(mean(PgdC_11_btl))
pHerry_PgdC_11_btp<-c(mean(PgdC_11_btp))

a12<-c(Pgd[,45])
b12<-c(Pgd[,46])
c12<-c(Pgd[,47])
d12<-c(Pgd[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
PgdC_eyedisc_12<-c(aa12/bb12)

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
n_PgdC_12_488_base<-c(aa12[60]-(60*S_PgdC_12_488))
PgdC_12_488_base<-0
for(i in 51:60)
{PgdC_12_488_base<- S_PgdC_12_488*aa12[51:60]+n_PgdC_12_488_base}       # corrects all ten baseline values with the slope

n_PgdC_12_488_low<-c(aa12[85]-(85*S_PgdC_12_488))
PgdC_12_488_low<-0
for(i in 111:120)
{PgdC_12_488_low<- S_PgdC_12_488*aa12[111:120]+n_PgdC_12_488_low}       # corrects all ten low values with the slope

n_PgdC_12_488_peak<-c(aa12[120]-(120*S_PgdC_12_488))
PgdC_12_488_peak<-0
for(i in 76:85)
{PgdC_12_488_peak<- S_PgdC_12_488*aa12[76:85]+n_PgdC_12_488_peak}


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
n_PgdC_12_568<-c(bb12[60]-(60*S_PgdC_12_568))
PgdC_12_568_base<-0
for(i in 51:60)
{PgdC_12_568_base<- S_PgdC_12_568*bb12[51:60]+n_PgdC_12_568}

PgdC_12_568_low<-0
for(i in 111:120)
{PgdC_12_568_low<- S_PgdC_12_568*bb12[111:120]+n_PgdC_12_568}

PgdC_12_568_peak<-0
for(i in 76:85)
{PgdC_12_568_peak<- S_PgdC_12_568*bb12[76:85]+n_PgdC_12_568}

PgdC_12_bpl<-c((PgdC_12_488_base/PgdC_12_568_base)/((PgdC_12_488_peak/PgdC_12_568_peak)/(PgdC_12_488_low/PgdC_12_568_low)))
PgdC_12_blp<-c((PgdC_12_488_base/PgdC_12_568_base)/((PgdC_12_488_low/PgdC_12_568_low)/(PgdC_12_488_peak/PgdC_12_568_peak)))
PgdC_12_btl<-c((PgdC_12_488_base/PgdC_12_568_base)/(PgdC_12_488_low/PgdC_12_568_low))
PgdC_12_btp<-c((PgdC_12_488_base/PgdC_12_568_base)/(PgdC_12_488_peak/PgdC_12_568_peak))

pHerry_PgdC_12_base<-c(mean(PgdC_12_488_base/PgdC_12_568_base)) 
pHerry_PgdC_12_bpl<-c(mean(PgdC_12_bpl))
pHerry_PgdC_12_blp<-c(mean(PgdC_12_blp))
pHerry_PgdC_12_btl<-c(mean(PgdC_12_btl))
pHerry_PgdC_12_btp<-c(mean(PgdC_12_btp))

a13<-c(Pgd[,49])
b13<-c(Pgd[,50])
c13<-c(Pgd[,51])
d13<-c(Pgd[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
PgdC_eyedisc_13<-c(aa13/bb13)


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
n_PgdC_13_488_base<-c(aa13[60]-(60*S_PgdC_13_488))
PgdC_13_488_base<-0
for(i in 51:60)
{PgdC_13_488_base<- S_PgdC_13_488*aa13[51:60]+n_PgdC_13_488_base}       # corrects all ten baseline values with the slope

n_PgdC_13_488_low<-c(aa13[85]-(85*S_PgdC_13_488))
PgdC_13_488_low<-0
for(i in 111:120)
{PgdC_13_488_low<- S_PgdC_13_488*aa13[111:120]+n_PgdC_13_488_low}       # corrects all ten low values with the slope

n_PgdC_13_488_peak<-c(aa13[120]-(120*S_PgdC_13_488))
PgdC_13_488_peak<-0
for(i in 76:85)
{PgdC_13_488_peak<- S_PgdC_13_488*aa13[76:85]+n_PgdC_13_488_peak}


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
n_PgdC_13_568<-c(bb13[60]-(60*S_PgdC_13_568))
PgdC_13_568_base<-0
for(i in 51:60)
{PgdC_13_568_base<- S_PgdC_13_568*bb13[51:60]+n_PgdC_13_568}

PgdC_13_568_low<-0
for(i in 111:120)
{PgdC_13_568_low<- S_PgdC_13_568*bb13[111:120]+n_PgdC_13_568}

PgdC_13_568_peak<-0
for(i in 76:85)
{PgdC_13_568_peak<- S_PgdC_13_568*bb13[76:85]+n_PgdC_13_568}


PgdC_13_bpl<-c((PgdC_13_488_base/PgdC_13_568_base)/((PgdC_13_488_peak/PgdC_13_568_peak)/(PgdC_13_488_low/PgdC_13_568_low)))
PgdC_13_blp<-c((PgdC_13_488_base/PgdC_13_568_base)/((PgdC_13_488_low/PgdC_13_568_low)/(PgdC_13_488_peak/PgdC_13_568_peak)))
PgdC_13_btl<-c((PgdC_13_488_base/PgdC_13_568_base)/(PgdC_13_488_low/PgdC_13_568_low))
PgdC_13_btp<-c((PgdC_13_488_base/PgdC_13_568_base)/(PgdC_13_488_peak/PgdC_13_568_peak))

pHerry_PgdC_13_base<-c(mean(PgdC_13_488_base/PgdC_13_568_base)) 
pHerry_PgdC_13_bpl<-c(mean(PgdC_13_bpl))
pHerry_PgdC_13_blp<-c(mean(PgdC_13_blp))
pHerry_PgdC_13_btl<-c(mean(PgdC_13_btl))
pHerry_PgdC_13_btp<-c(mean(PgdC_13_btp))


a14<-c(Pgd[,53])
b14<-c(Pgd[,54])
c14<-c(Pgd[,55])
d14<-c(Pgd[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
PgdC_eyedisc_14<-c(aa14/bb14)


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
n_PgdC_14_488_base<-c(aa14[60]-(60*S_PgdC_14_488))
PgdC_14_488_base<-0
for(i in 51:60)
{PgdC_14_488_base<- S_PgdC_14_488*aa14[51:60]+n_PgdC_14_488_base}       # corrects all ten baseline values with the slope

n_PgdC_14_488_low<-c(aa14[85]-(85*S_PgdC_14_488))
PgdC_14_488_low<-0
for(i in 111:120)
{PgdC_14_488_low<- S_PgdC_14_488*aa14[111:120]+n_PgdC_14_488_low}       # corrects all ten low values with the slope

n_PgdC_14_488_peak<-c(aa14[120]-(120*S_PgdC_14_488))
PgdC_14_488_peak<-0
for(i in 76:85)
{PgdC_14_488_peak<- S_PgdC_14_488*aa14[76:85]+n_PgdC_14_488_peak}


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
n_PgdC_14_568<-c(bb14[60]-(60*S_PgdC_14_568))
PgdC_14_568_base<-0
for(i in 51:60)
{PgdC_14_568_base<- S_PgdC_14_568*bb14[51:60]+n_PgdC_14_568}

PgdC_14_568_low<-0
for(i in 111:120)
{PgdC_14_568_low<- S_PgdC_14_568*bb14[111:120]+n_PgdC_14_568}

PgdC_14_568_peak<-0
for(i in 76:85)
{PgdC_14_568_peak<- S_PgdC_14_568*bb14[76:85]+n_PgdC_14_568}

PgdC_14_bpl<-c((PgdC_14_488_base/PgdC_14_568_base)/((PgdC_14_488_peak/PgdC_14_568_peak)/(PgdC_14_488_low/PgdC_14_568_low)))
PgdC_14_blp<-c((PgdC_14_488_base/PgdC_14_568_base)/((PgdC_14_488_low/PgdC_14_568_low)/(PgdC_14_488_peak/PgdC_14_568_peak)))
PgdC_14_btl<-c((PgdC_14_488_base/PgdC_14_568_base)/(PgdC_14_488_low/PgdC_14_568_low))
PgdC_14_btp<-c((PgdC_14_488_base/PgdC_14_568_base)/(PgdC_14_488_peak/PgdC_14_568_peak))

pHerry_PgdC_14_base<-c(mean(PgdC_14_488_base/PgdC_14_568_base)) 
pHerry_PgdC_14_bpl<-c(mean(PgdC_14_bpl))
pHerry_PgdC_14_blp<-c(mean(PgdC_14_blp))
pHerry_PgdC_14_btl<-c(mean(PgdC_14_btl))
pHerry_PgdC_14_btp<-c(mean(PgdC_14_btp))

a15<-c(Pgd[,57])
b15<-c(Pgd[,58])
c15<-c(Pgd[,59])
d15<-c(Pgd[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
PgdC_eyedisc_15<-c(aa15/bb15)


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
n_PgdC_15_488_base<-c(aa15[60]-(60*S_PgdC_15_488))
PgdC_15_488_base<-0
for(i in 51:60)
{PgdC_15_488_base<- S_PgdC_15_488*aa15[51:60]+n_PgdC_15_488_base}       # corrects all ten baseline values with the slope

n_PgdC_15_488_low<-c(aa15[85]-(85*S_PgdC_15_488))
PgdC_15_488_low<-0
for(i in 111:120)
{PgdC_15_488_low<- S_PgdC_15_488*aa15[111:120]+n_PgdC_15_488_low}       # corrects all ten low values with the slope

n_PgdC_15_488_peak<-c(aa15[120]-(120*S_PgdC_15_488))
PgdC_15_488_peak<-0
for(i in 76:85)
{PgdC_15_488_peak<- S_PgdC_15_488*aa15[76:85]+n_PgdC_15_488_peak}


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
n_PgdC_15_568<-c(bb15[60]-(60*S_PgdC_15_568))
PgdC_15_568_base<-0
for(i in 51:60)
{PgdC_15_568_base<- S_PgdC_15_568*bb15[51:60]+n_PgdC_15_568}

PgdC_15_568_low<-0
for(i in 111:120)
{PgdC_15_568_low<- S_PgdC_15_568*bb15[111:120]+n_PgdC_15_568}

PgdC_15_568_peak<-0
for(i in 76:85)
{PgdC_15_568_peak<- S_PgdC_15_568*bb15[76:85]+n_PgdC_15_568}

PgdC_15_bpl<-c((PgdC_15_488_base/PgdC_15_568_base)/((PgdC_15_488_peak/PgdC_15_568_peak)/(PgdC_15_488_low/PgdC_15_568_low)))
PgdC_15_blp<-c((PgdC_15_488_base/PgdC_15_568_base)/((PgdC_15_488_low/PgdC_15_568_low)/(PgdC_15_488_peak/PgdC_15_568_peak)))
PgdC_15_btl<-c((PgdC_15_488_base/PgdC_15_568_base)/(PgdC_15_488_low/PgdC_15_568_low))
PgdC_15_btp<-c((PgdC_15_488_base/PgdC_15_568_base)/(PgdC_15_488_peak/PgdC_15_568_peak))

pHerry_PgdC_15_base<-c(mean(PgdC_15_488_base/PgdC_15_568_base)) 
pHerry_PgdC_15_bpl<-c(mean(PgdC_15_bpl))
pHerry_PgdC_15_blp<-c(mean(PgdC_15_blp))
pHerry_PgdC_15_btl<-c(mean(PgdC_15_btl))
pHerry_PgdC_15_btp<-c(mean(PgdC_15_btp))



a20<-c(Pgd[,77])
b20<-c(Pgd[,78])
c20<-c(Pgd[,79])
d20<-c(Pgd[,80])
aa20<-c(a20-b20)
bb20<-c(c20-d20)
PgdC_eyedisc_20<-c(aa20/bb20)


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
n_PgdC_20_488_base<-c(aa20[60]-(60*S_PgdC_20_488))
PgdC_20_488_base<-0
for(i in 51:60)
{PgdC_20_488_base<- S_PgdC_20_488*aa20[51:60]+n_PgdC_20_488_base}       # corrects all ten baseline values with the slope

n_PgdC_20_488_low<-c(aa20[85]-(85*S_PgdC_20_488))
PgdC_20_488_low<-0
for(i in 111:120)
{PgdC_20_488_low<- S_PgdC_20_488*aa20[111:120]+n_PgdC_20_488_low}       # corrects all ten low values with the slope

n_PgdC_20_488_peak<-c(aa20[120]-(120*S_PgdC_20_488))
PgdC_20_488_peak<-0
for(i in 76:85)
{PgdC_20_488_peak<- S_PgdC_20_488*aa20[76:85]+n_PgdC_20_488_peak}


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
n_PgdC_20_568<-c(bb20[60]-(60*S_PgdC_20_568))
PgdC_20_568_base<-0
for(i in 51:60)
{PgdC_20_568_base<- S_PgdC_20_568*bb20[51:60]+n_PgdC_20_568}

PgdC_20_568_low<-0
for(i in 111:120)
{PgdC_20_568_low<- S_PgdC_20_568*bb20[111:120]+n_PgdC_20_568}

PgdC_20_568_peak<-0
for(i in 76:85)
{PgdC_20_568_peak<- S_PgdC_20_568*bb20[76:85]+n_PgdC_20_568}

PgdC_20_bpl<-c((PgdC_20_488_base/PgdC_20_568_base)/((PgdC_20_488_peak/PgdC_20_568_peak)/(PgdC_20_488_low/PgdC_20_568_low)))
PgdC_20_blp<-c((PgdC_20_488_base/PgdC_20_568_base)/((PgdC_20_488_low/PgdC_20_568_low)/(PgdC_20_488_peak/PgdC_20_568_peak)))
PgdC_20_btl<-c((PgdC_20_488_base/PgdC_20_568_base)/(PgdC_20_488_low/PgdC_20_568_low))
PgdC_20_btp<-c((PgdC_20_488_base/PgdC_20_568_base)/(PgdC_20_488_peak/PgdC_20_568_peak))

pHerry_PgdC_20_base<-c(mean(PgdC_20_488_base/PgdC_20_568_base)) 
pHerry_PgdC_20_bpl<-c(mean(PgdC_20_bpl))
pHerry_PgdC_20_blp<-c(mean(PgdC_20_blp))
pHerry_PgdC_20_btl<-c(mean(PgdC_20_btl))
pHerry_PgdC_20_btp<-c(mean(PgdC_20_btp))




a22<-c(Pgd[,85])
b22<-c(Pgd[,86])
c22<-c(Pgd[,87])
d22<-c(Pgd[,88])
aa22<-c(a22-b22)
bb22<-c(c22-d22)
PgdC_eyedisc_22<-c(aa22/bb22)


slope_PgdC_22_488<-c(aa22[60]-aa22[59],
                    aa22[59]-aa22[58],
                    aa22[58]-aa22[57],
                    aa22[57]-aa22[56],
                    aa22[56]-aa22[55],
                    aa22[55]-aa22[54],
                    aa22[54]-aa22[53],
                    aa22[53]-aa22[52],
                    aa22[52]-aa22[51],
                    aa22[51]-aa22[50])
S_PgdC_22_488<-c(mean(slope_PgdC_22_488))
n_PgdC_22_488_base<-c(aa22[60]-(60*S_PgdC_22_488))
PgdC_22_488_base<-0
for(i in 51:60)
{PgdC_22_488_base<- S_PgdC_22_488*aa22[51:60]+n_PgdC_22_488_base}       # corrects all ten baseline values with the slope

n_PgdC_22_488_low<-c(aa22[85]-(85*S_PgdC_22_488))
PgdC_22_488_low<-0
for(i in 111:120)
{PgdC_22_488_low<- S_PgdC_22_488*aa22[111:120]+n_PgdC_22_488_low}       # corrects all ten low values with the slope

n_PgdC_22_488_peak<-c(aa22[120]-(120*S_PgdC_22_488))
PgdC_22_488_peak<-0
for(i in 76:85)
{PgdC_22_488_peak<- S_PgdC_22_488*aa22[76:85]+n_PgdC_22_488_peak}


slope_PgdC_22_568<-c(bb22[60]-bb22[59],
                    bb22[59]-bb22[58],
                    bb22[58]-bb22[57],
                    bb22[57]-bb22[56],
                    bb22[56]-bb22[55],
                    bb22[55]-bb22[54],
                    bb22[54]-bb22[53],
                    bb22[53]-bb22[52],
                    bb22[52]-bb22[51],
                    bb22[51]-bb22[50])
S_PgdC_22_568<-c(mean(slope_PgdC_22_568))
n_PgdC_22_568<-c(bb22[60]-(60*S_PgdC_22_568))
PgdC_22_568_base<-0
for(i in 51:60)
{PgdC_22_568_base<- S_PgdC_22_568*bb22[51:60]+n_PgdC_22_568}

PgdC_22_568_low<-0
for(i in 111:120)
{PgdC_22_568_low<- S_PgdC_22_568*bb22[111:120]+n_PgdC_22_568}

PgdC_22_568_peak<-0
for(i in 76:85)
{PgdC_22_568_peak<- S_PgdC_22_568*bb22[76:85]+n_PgdC_22_568}

PgdC_22_bpl<-c((PgdC_22_488_base/PgdC_22_568_base)/((PgdC_22_488_peak/PgdC_22_568_peak)/(PgdC_22_488_low/PgdC_22_568_low)))
PgdC_22_blp<-c((PgdC_22_488_base/PgdC_22_568_base)/((PgdC_22_488_low/PgdC_22_568_low)/(PgdC_22_488_peak/PgdC_22_568_peak)))
PgdC_22_btl<-c((PgdC_22_488_base/PgdC_22_568_base)/(PgdC_22_488_low/PgdC_22_568_low))
PgdC_22_btp<-c((PgdC_22_488_base/PgdC_22_568_base)/(PgdC_22_488_peak/PgdC_22_568_peak))

pHerry_PgdC_22_base<-c(mean(PgdC_22_488_base/PgdC_22_568_base)) 
pHerry_PgdC_22_bpl<-c(mean(PgdC_22_bpl))
pHerry_PgdC_22_blp<-c(mean(PgdC_22_blp))
pHerry_PgdC_22_btl<-c(mean(PgdC_22_btl))
pHerry_PgdC_22_btp<-c(mean(PgdC_22_btp))

a23<-c(Pgd[,89])
b23<-c(Pgd[,90])
c23<-c(Pgd[,91])
d23<-c(Pgd[,92])
aa23<-c(a23-b23)
bb23<-c(c23-d23)
PgdC_eyedisc_23<-c(aa23/bb23)


slope_PgdC_23_488<-c(aa23[60]-aa23[59],
                    aa23[59]-aa23[58],
                    aa23[58]-aa23[57],
                    aa23[57]-aa23[56],
                    aa23[56]-aa23[55],
                    aa23[55]-aa23[54],
                    aa23[54]-aa23[53],
                    aa23[53]-aa23[52],
                    aa23[52]-aa23[51],
                    aa23[51]-aa23[50])
S_PgdC_23_488<-c(mean(slope_PgdC_23_488))
n_PgdC_23_488_base<-c(aa23[60]-(60*S_PgdC_23_488))
PgdC_23_488_base<-0
for(i in 51:60)
{PgdC_23_488_base<- S_PgdC_23_488*aa23[51:60]+n_PgdC_23_488_base}       # corrects all ten baseline values with the slope

n_PgdC_23_488_low<-c(aa23[85]-(85*S_PgdC_23_488))
PgdC_23_488_low<-0
for(i in 111:120)
{PgdC_23_488_low<- S_PgdC_23_488*aa23[111:120]+n_PgdC_23_488_low}       # corrects all ten low values with the slope

n_PgdC_23_488_peak<-c(aa23[120]-(120*S_PgdC_23_488))
PgdC_23_488_peak<-0
for(i in 76:85)
{PgdC_23_488_peak<- S_PgdC_23_488*aa23[76:85]+n_PgdC_23_488_peak}


slope_PgdC_23_568<-c(bb23[60]-bb23[59],
                    bb23[59]-bb23[58],
                    bb23[58]-bb23[57],
                    bb23[57]-bb23[56],
                    bb23[56]-bb23[55],
                    bb23[55]-bb23[54],
                    bb23[54]-bb23[53],
                    bb23[53]-bb23[52],
                    bb23[52]-bb23[51],
                    bb23[51]-bb23[50])
S_PgdC_23_568<-c(mean(slope_PgdC_23_568))
n_PgdC_23_568<-c(bb23[60]-(60*S_PgdC_23_568))
PgdC_23_568_base<-0
for(i in 51:60)
{PgdC_23_568_base<- S_PgdC_23_568*bb23[51:60]+n_PgdC_23_568}

PgdC_23_568_low<-0
for(i in 111:120)
{PgdC_23_568_low<- S_PgdC_23_568*bb23[111:120]+n_PgdC_23_568}

PgdC_23_568_peak<-0
for(i in 76:85)
{PgdC_23_568_peak<- S_PgdC_23_568*bb23[76:85]+n_PgdC_23_568}

PgdC_23_bpl<-c((PgdC_23_488_base/PgdC_23_568_base)/((PgdC_23_488_peak/PgdC_23_568_peak)/(PgdC_23_488_low/PgdC_23_568_low)))
PgdC_23_blp<-c((PgdC_23_488_base/PgdC_23_568_base)/((PgdC_23_488_low/PgdC_23_568_low)/(PgdC_23_488_peak/PgdC_23_568_peak)))
PgdC_23_btl<-c((PgdC_23_488_base/PgdC_23_568_base)/(PgdC_23_488_low/PgdC_23_568_low))
PgdC_23_btp<-c((PgdC_23_488_base/PgdC_23_568_base)/(PgdC_23_488_peak/PgdC_23_568_peak))

pHerry_PgdC_23_base<-c(mean(PgdC_23_488_base/PgdC_23_568_base)) 
pHerry_PgdC_23_bpl<-c(mean(PgdC_23_bpl))
pHerry_PgdC_23_blp<-c(mean(PgdC_23_blp))
pHerry_PgdC_23_btl<-c(mean(PgdC_23_btl))
pHerry_PgdC_23_btp<-c(mean(PgdC_23_btp))


a24<-c(Pgd[,93])
b24<-c(Pgd[,94])
c24<-c(Pgd[,95])
d24<-c(Pgd[,96])
aa24<-c(a24-b24)
bb24<-c(c24-d24)
PgdC_eyedisc_24<-c(aa24/bb24)


slope_PgdC_24_488<-c(aa24[60]-aa24[59],
                    aa24[59]-aa24[58],
                    aa24[58]-aa24[57],
                    aa24[57]-aa24[56],
                    aa24[56]-aa24[55],
                    aa24[55]-aa24[54],
                    aa24[54]-aa24[53],
                    aa24[53]-aa24[52],
                    aa24[52]-aa24[51],
                    aa24[51]-aa24[50])
S_PgdC_24_488<-c(mean(slope_PgdC_24_488))
n_PgdC_24_488_base<-c(aa24[60]-(60*S_PgdC_24_488))
PgdC_24_488_base<-0
for(i in 51:60)
{PgdC_24_488_base<- S_PgdC_24_488*aa24[51:60]+n_PgdC_24_488_base}       # corrects all ten baseline values with the slope

n_PgdC_24_488_low<-c(aa24[85]-(85*S_PgdC_24_488))
PgdC_24_488_low<-0
for(i in 111:120)
{PgdC_24_488_low<- S_PgdC_24_488*aa24[111:120]+n_PgdC_24_488_low}       # corrects all ten low values with the slope

n_PgdC_24_488_peak<-c(aa24[120]-(120*S_PgdC_24_488))
PgdC_24_488_peak<-0
for(i in 76:85)
{PgdC_24_488_peak<- S_PgdC_24_488*aa24[76:85]+n_PgdC_24_488_peak}


slope_PgdC_24_568<-c(bb24[60]-bb24[59],
                    bb24[59]-bb24[58],
                    bb24[58]-bb24[57],
                    bb24[57]-bb24[56],
                    bb24[56]-bb24[55],
                    bb24[55]-bb24[54],
                    bb24[54]-bb24[53],
                    bb24[53]-bb24[52],
                    bb24[52]-bb24[51],
                    bb24[51]-bb24[50])
S_PgdC_24_568<-c(mean(slope_PgdC_24_568))
n_PgdC_24_568<-c(bb24[60]-(60*S_PgdC_24_568))
PgdC_24_568_base<-0
for(i in 51:60)
{PgdC_24_568_base<- S_PgdC_24_568*bb24[51:60]+n_PgdC_24_568}

PgdC_24_568_low<-0
for(i in 111:120)
{PgdC_24_568_low<- S_PgdC_24_568*bb24[111:120]+n_PgdC_24_568}

PgdC_24_568_peak<-0
for(i in 76:85)
{PgdC_24_568_peak<- S_PgdC_24_568*bb24[76:85]+n_PgdC_24_568}

PgdC_24_bpl<-c((PgdC_24_488_base/PgdC_24_568_base)/((PgdC_24_488_peak/PgdC_24_568_peak)/(PgdC_24_488_low/PgdC_24_568_low)))
PgdC_24_blp<-c((PgdC_24_488_base/PgdC_24_568_base)/((PgdC_24_488_low/PgdC_24_568_low)/(PgdC_24_488_peak/PgdC_24_568_peak)))
PgdC_24_btl<-c((PgdC_24_488_base/PgdC_24_568_base)/(PgdC_24_488_low/PgdC_24_568_low))
PgdC_24_btp<-c((PgdC_24_488_base/PgdC_24_568_base)/(PgdC_24_488_peak/PgdC_24_568_peak))

pHerry_PgdC_24_base<-c(mean(PgdC_24_488_base/PgdC_24_568_base)) 
pHerry_PgdC_24_bpl<-c(mean(PgdC_24_bpl))
pHerry_PgdC_24_blp<-c(mean(PgdC_24_blp))
pHerry_PgdC_24_btl<-c(mean(PgdC_24_btl))
pHerry_PgdC_24_btp<-c(mean(PgdC_24_btp))


pHerry_PgdC_time_course<-c(PgdC_eyedisc_1,PgdC_eyedisc_2,PgdC_eyedisc_3,PgdC_eyedisc_5,PgdC_eyedisc_6,PgdC_eyedisc_7,PgdC_eyedisc_8,PgdC_eyedisc_9,PgdC_eyedisc_10,PgdC_eyedisc_11,PgdC_eyedisc_12,PgdC_eyedisc_13,PgdC_eyedisc_14,PgdC_eyedisc_15,PgdC_eyedisc_20,PgdC_eyedisc_22,PgdC_eyedisc_23,PgdC_eyedisc_24)
matpHerry_PgdC_time_course<-matrix(pHerry_PgdC_time_course,nrow=120,ncol=18)
mean_pHerry_PgdC_time_course<-c(rowMeans(matpHerry_PgdC_time_course))

pHerry_PgdC_base<-c(pHerry_PgdC_1_base,pHerry_PgdC_2_base,pHerry_PgdC_3_base,pHerry_PgdC_5_base,pHerry_PgdC_6_base,pHerry_PgdC_7_base,pHerry_PgdC_8_base,pHerry_PgdC_9_base,pHerry_PgdC_10_base,pHerry_PgdC_11_base,pHerry_PgdC_12_base,pHerry_PgdC_13_base,pHerry_PgdC_14_base,pHerry_PgdC_15_base,pHerry_PgdC_20_base,pHerry_PgdC_22_base,pHerry_PgdC_23_base,pHerry_PgdC_24_base)
