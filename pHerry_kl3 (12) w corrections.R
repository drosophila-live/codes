a1<-c(kl3[,1])  # creates a vector containing all 488 values for first eyedisc
b1<-c(kl3[,2])  # creates a vector containing all 488 background values for first eyedisc
c1<-c(kl3[,3])  # creates a vector containing all 568 values for first eyedisc
d1<-c(kl3[,4])  # creates a vector containing all 568 background values for first eyedisc
aa1<-c(a1-b1)   # creates a BG subtracted vector for 488 channel
bb1<-c(c1-d1)   # creates a BG subtracted vector for 568 channel
kl3C_eyedisc_1<-c(aa1/bb1) # creates a first vector as a ratio, only important for time courses

slope_kl3C_1_488<-c(aa1[60]-aa1[59],
                      aa1[59]-aa1[58],
                      aa1[58]-aa1[57],
                      aa1[57]-aa1[56],
                      aa1[56]-aa1[55],
                      aa1[55]-aa1[54],
                      aa1[54]-aa1[53],
                      aa1[53]-aa1[52],
                      aa1[52]-aa1[51],
                      aa1[51]-aa1[50])                               # creates a vector containing last ten values after last condition(i.e.buffer change) to be considered linear bleaching
S_kl3C_1_488<-c(mean(slope_kl3C_1_488))                             # calculates the mean slope resulting from these ten values
n_kl3C_1_488_base<-c(aa1[60]-(60*S_kl3C_1_488))                     # calculates a theoretical linear zero time point value to use for linear correction
kl3C_1_488_base<-0
for(i in 51:60)
{kl3C_1_488_base<- S_kl3C_1_488*aa1[51:60]+n_kl3C_1_488_base}        # corrects all ten baseline values with the slope of a theoretical linear fluorescence decay

n_kl3C_1_488_low<-c(aa1[85]-(85*S_kl3C_1_488))
kl3C_1_488_low<-0
for(i in 111:120)
{kl3C_1_488_low<- S_kl3C_1_488*aa1[111:120]+n_kl3C_1_488_low}          # corrects all ten low values with the slope of theoretical linear fluorescence decay

n_kl3C_1_488_peak<-c(aa1[120]-(120*S_kl3C_1_488))
kl3C_1_488_peak<-0
for(i in 76:85)
{kl3C_1_488_peak<- S_kl3C_1_488*aa1[76:85]+n_kl3C_1_488_peak}      # corrects all ten peak values with the slope of theoretical linear fluorescence decay


slope_kl3C_1_568<-c(bb1[60]-bb1[59],
                      bb1[59]-bb1[58],
                      bb1[58]-bb1[57],
                      bb1[57]-bb1[56],
                      bb1[56]-bb1[55],
                      bb1[55]-bb1[54],
                      bb1[54]-bb1[53],
                      bb1[53]-bb1[52],
                      bb1[52]-bb1[51],
                      bb1[51]-bb1[50])                               # same as above but for the second channel
S_kl3C_1_568<-c(mean(slope_kl3C_1_568))
n_kl3C_1_568<-c(bb1[60]-(60*S_kl3C_1_568))
kl3C_1_568_base<-0
for(i in 51:60)
{kl3C_1_568_base<- S_kl3C_1_568*bb1[51:60]+n_kl3C_1_568}

kl3C_1_568_low<-0
for(i in 111:120)
{kl3C_1_568_low<- S_kl3C_1_568*bb1[111:120]+n_kl3C_1_568}

kl3C_1_568_peak<-0
for(i in 76:85)
{kl3C_1_568_peak<- S_kl3C_1_568*bb1[76:85]+n_kl3C_1_568}

kl3C_1_bpl<-c((kl3C_1_488_base/kl3C_1_568_base)/((kl3C_1_488_peak/kl3C_1_568_peak)/(kl3C_1_488_low/kl3C_1_568_low)))   # see below
kl3C_1_blp<-c((kl3C_1_488_base/kl3C_1_568_base)/((kl3C_1_488_low/kl3C_1_568_low)/(kl3C_1_488_peak/kl3C_1_568_peak)))
kl3C_1_btl<-c((kl3C_1_488_base/kl3C_1_568_base)/(kl3C_1_488_low/kl3C_1_568_low))
kl3C_1_btp<-c((kl3C_1_488_base/kl3C_1_568_base)/(kl3C_1_488_peak/kl3C_1_568_peak))

pHerry_kl3C_1_base<-c(mean(kl3C_1_488_base/kl3C_1_568_base))       # creates a vector containing deltaF to F of calculated from the ten baseline values
pHerry_kl3C_1_bpl<-c(mean(kl3C_1_bpl))                            # baseline in relation to peak divided by low
pHerry_kl3C_1_blp<-c(mean(kl3C_1_blp))                            # baseline in relation to low divided by peak
pHerry_kl3C_1_btl<-c(mean(kl3C_1_btl))                            # baseline in relation to peak indicating a potentially altered baseline by a maximum that can be reached
pHerry_kl3C_1_btp<-c(mean(kl3C_1_btp))                            # baseline in realation to low indicating a potentially altered baseline by how well the cells can recover

a2<-c(kl3[,5])
b2<-c(kl3[,6])
c2<-c(kl3[,7])
d2<-c(kl3[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
kl3C_eyedisc_2<-c(aa2/bb2)


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
n_kl3C_2_488_base<-c(aa2[60]-(60*S_kl3C_2_488))
kl3C_2_488_base<-0
for(i in 51:60)
{kl3C_2_488_base<- S_kl3C_2_488*aa2[51:60]+n_kl3C_2_488_base}       # corrects all ten baseline values with the slope

n_kl3C_2_488_low<-c(aa2[85]-(85*S_kl3C_2_488))
kl3C_2_488_low<-0
for(i in 111:120)
{kl3C_2_488_low<- S_kl3C_2_488*aa2[111:120]+n_kl3C_2_488_low}       # corrects all ten low values with the slope

n_kl3C_2_488_peak<-c(aa2[120]-(120*S_kl3C_2_488))
kl3C_2_488_peak<-0
for(i in 76:85)
{kl3C_2_488_peak<- S_kl3C_2_488*aa2[76:85]+n_kl3C_2_488_peak}


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
n_kl3C_2_568<-c(bb2[60]-(60*S_kl3C_2_568))
kl3C_2_568_base<-0
for(i in 51:60)
{kl3C_2_568_base<- S_kl3C_2_568*bb2[51:60]+n_kl3C_2_568}

kl3C_2_568_low<-0
for(i in 111:120)
{kl3C_2_568_low<- S_kl3C_2_568*bb2[111:120]+n_kl3C_2_568}

kl3C_2_568_peak<-0
for(i in 76:85)
{kl3C_2_568_peak<- S_kl3C_2_568*bb2[76:85]+n_kl3C_2_568}

kl3C_2_bpl<-c((kl3C_2_488_base/kl3C_2_568_base)/((kl3C_2_488_peak/kl3C_2_568_peak)/(kl3C_2_488_low/kl3C_2_568_low)))
kl3C_2_blp<-c((kl3C_2_488_base/kl3C_2_568_base)/((kl3C_2_488_low/kl3C_2_568_low)/(kl3C_2_488_peak/kl3C_2_568_peak)))
kl3C_2_btl<-c((kl3C_2_488_base/kl3C_2_568_base)/(kl3C_2_488_low/kl3C_2_568_low))
kl3C_2_btp<-c((kl3C_2_488_base/kl3C_2_568_base)/(kl3C_2_488_peak/kl3C_2_568_peak))

pHerry_kl3C_2_base<-c(mean(kl3C_2_488_base/kl3C_2_568_base)) 
pHerry_kl3C_2_bpl<-c(mean(kl3C_2_bpl))
pHerry_kl3C_2_blp<-c(mean(kl3C_2_blp))
pHerry_kl3C_2_btl<-c(mean(kl3C_2_btl))
pHerry_kl3C_2_btp<-c(mean(kl3C_2_btp))

a3<-c(kl3[,9])
b3<-c(kl3[,10])
c3<-c(kl3[,11])
d3<-c(kl3[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
kl3C_eyedisc_3<-c(aa3/bb3)


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
n_kl3C_3_488_base<-c(aa3[60]-(60*S_kl3C_3_488))
kl3C_3_488_base<-0
for(i in 51:60)
{kl3C_3_488_base<- S_kl3C_3_488*aa3[51:60]+n_kl3C_3_488_base}       # corrects all ten baseline values with the slope

n_kl3C_3_488_low<-c(aa3[85]-(85*S_kl3C_3_488))
kl3C_3_488_low<-0
for(i in 111:120)
{kl3C_3_488_low<- S_kl3C_3_488*aa3[111:120]+n_kl3C_3_488_low}       # corrects all ten low values with the slope

n_kl3C_3_488_peak<-c(aa3[120]-(120*S_kl3C_3_488))
kl3C_3_488_peak<-0
for(i in 76:85)
{kl3C_3_488_peak<- S_kl3C_3_488*aa3[76:85]+n_kl3C_3_488_peak}


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
n_kl3C_3_568<-c(bb3[60]-(60*S_kl3C_3_568))
kl3C_3_568_base<-0
for(i in 51:60)
{kl3C_3_568_base<- S_kl3C_3_568*bb3[51:60]+n_kl3C_3_568}

kl3C_3_568_low<-0
for(i in 111:120)
{kl3C_3_568_low<- S_kl3C_3_568*bb3[111:120]+n_kl3C_3_568}

kl3C_3_568_peak<-0
for(i in 76:85)
{kl3C_3_568_peak<- S_kl3C_3_568*bb3[76:85]+n_kl3C_3_568}

kl3C_3_bpl<-c((kl3C_3_488_base/kl3C_3_568_base)/((kl3C_3_488_peak/kl3C_3_568_peak)/(kl3C_3_488_low/kl3C_3_568_low)))
kl3C_3_blp<-c((kl3C_3_488_base/kl3C_3_568_base)/((kl3C_3_488_low/kl3C_3_568_low)/(kl3C_3_488_peak/kl3C_3_568_peak)))
kl3C_3_btl<-c((kl3C_3_488_base/kl3C_3_568_base)/(kl3C_3_488_low/kl3C_3_568_low))
kl3C_3_btp<-c((kl3C_3_488_base/kl3C_3_568_base)/(kl3C_3_488_peak/kl3C_3_568_peak))

pHerry_kl3C_3_base<-c(mean(kl3C_3_488_base/kl3C_3_568_base)) 
pHerry_kl3C_3_bpl<-c(mean(kl3C_3_bpl))
pHerry_kl3C_3_blp<-c(mean(kl3C_3_blp))
pHerry_kl3C_3_btl<-c(mean(kl3C_3_btl))
pHerry_kl3C_3_btp<-c(mean(kl3C_3_btp))


a4<-c(kl3[,13])
b4<-c(kl3[,14])
c4<-c(kl3[,15])
d4<-c(kl3[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
kl3C_eyedisc_4<-c(aa4/bb4)


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
n_kl3C_4_488_base<-c(aa4[60]-(60*S_kl3C_4_488))
kl3C_4_488_base<-0
for(i in 51:60)
{kl3C_4_488_base<- S_kl3C_4_488*aa4[51:60]+n_kl3C_4_488_base}       # corrects all ten baseline values with the slope

n_kl3C_4_488_low<-c(aa4[85]-(85*S_kl3C_4_488))
kl3C_4_488_low<-0
for(i in 111:120)
{kl3C_4_488_low<- S_kl3C_4_488*aa4[111:120]+n_kl3C_4_488_low}       # corrects all ten low values with the slope

n_kl3C_4_488_peak<-c(aa4[120]-(120*S_kl3C_4_488))
kl3C_4_488_peak<-0
for(i in 76:85)
{kl3C_4_488_peak<- S_kl3C_4_488*aa4[76:85]+n_kl3C_4_488_peak}


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
n_kl3C_4_568<-c(bb4[60]-(60*S_kl3C_4_568))
kl3C_4_568_base<-0
for(i in 51:60)
{kl3C_4_568_base<- S_kl3C_4_568*bb4[51:60]+n_kl3C_4_568}

kl3C_4_568_low<-0
for(i in 111:120)
{kl3C_4_568_low<- S_kl3C_4_568*bb4[111:120]+n_kl3C_4_568}

kl3C_4_568_peak<-0
for(i in 76:85)
{kl3C_4_568_peak<- S_kl3C_4_568*bb4[76:85]+n_kl3C_4_568}

kl3C_4_bpl<-c((kl3C_4_488_base/kl3C_4_568_base)/((kl3C_4_488_peak/kl3C_4_568_peak)/(kl3C_4_488_low/kl3C_4_568_low)))
kl3C_4_blp<-c((kl3C_4_488_base/kl3C_4_568_base)/((kl3C_4_488_low/kl3C_4_568_low)/(kl3C_4_488_peak/kl3C_4_568_peak)))
kl3C_4_btl<-c((kl3C_4_488_base/kl3C_4_568_base)/(kl3C_4_488_low/kl3C_4_568_low))
kl3C_4_btp<-c((kl3C_4_488_base/kl3C_4_568_base)/(kl3C_4_488_peak/kl3C_4_568_peak))

pHerry_kl3C_4_base<-c(mean(kl3C_4_488_base/kl3C_4_568_base)) 
pHerry_kl3C_4_bpl<-c(mean(kl3C_4_bpl))
pHerry_kl3C_4_blp<-c(mean(kl3C_4_blp))
pHerry_kl3C_4_btl<-c(mean(kl3C_4_btl))
pHerry_kl3C_4_btp<-c(mean(kl3C_4_btp))


a5<-c(kl3[,17])
b5<-c(kl3[,18])
c5<-c(kl3[,19])
d5<-c(kl3[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
kl3C_eyedisc_5<-c(aa5/bb5)


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
n_kl3C_5_488_base<-c(aa5[60]-(60*S_kl3C_5_488))
kl3C_5_488_base<-0
for(i in 51:60)
{kl3C_5_488_base<- S_kl3C_5_488*aa5[51:60]+n_kl3C_5_488_base}       # corrects all ten baseline values with the slope

n_kl3C_5_488_low<-c(aa5[85]-(85*S_kl3C_5_488))
kl3C_5_488_low<-0
for(i in 111:120)
{kl3C_5_488_low<- S_kl3C_5_488*aa5[111:120]+n_kl3C_5_488_low}       # corrects all ten low values with the slope

n_kl3C_5_488_peak<-c(aa5[120]-(120*S_kl3C_5_488))
kl3C_5_488_peak<-0
for(i in 76:85)
{kl3C_5_488_peak<- S_kl3C_5_488*aa5[76:85]+n_kl3C_5_488_peak}


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
n_kl3C_5_568<-c(bb5[60]-(60*S_kl3C_5_568))
kl3C_5_568_base<-0
for(i in 51:60)
{kl3C_5_568_base<- S_kl3C_5_568*bb5[51:60]+n_kl3C_5_568}

kl3C_5_568_low<-0
for(i in 111:120)
{kl3C_5_568_low<- S_kl3C_5_568*bb5[111:120]+n_kl3C_5_568}

kl3C_5_568_peak<-0
for(i in 76:85)
{kl3C_5_568_peak<- S_kl3C_5_568*bb5[76:85]+n_kl3C_5_568}

kl3C_5_bpl<-c((kl3C_5_488_base/kl3C_5_568_base)/((kl3C_5_488_peak/kl3C_5_568_peak)/(kl3C_5_488_low/kl3C_5_568_low)))
kl3C_5_blp<-c((kl3C_5_488_base/kl3C_5_568_base)/((kl3C_5_488_low/kl3C_5_568_low)/(kl3C_5_488_peak/kl3C_5_568_peak)))
kl3C_5_btl<-c((kl3C_5_488_base/kl3C_5_568_base)/(kl3C_5_488_low/kl3C_5_568_low))
kl3C_5_btp<-c((kl3C_5_488_base/kl3C_5_568_base)/(kl3C_5_488_peak/kl3C_5_568_peak))

pHerry_kl3C_5_base<-c(mean(kl3C_5_488_base/kl3C_5_568_base)) 
pHerry_kl3C_5_bpl<-c(mean(kl3C_5_bpl))
pHerry_kl3C_5_blp<-c(mean(kl3C_5_blp))
pHerry_kl3C_5_btl<-c(mean(kl3C_5_btl))
pHerry_kl3C_5_btp<-c(mean(kl3C_5_btp))

a6<-c(kl3[,21])
b6<-c(kl3[,22])
c6<-c(kl3[,23])
d6<-c(kl3[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
kl3C_eyedisc_6<-c(aa6/bb6)


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
n_kl3C_6_488_base<-c(aa6[60]-(60*S_kl3C_6_488))
kl3C_6_488_base<-0
for(i in 51:60)
{kl3C_6_488_base<- S_kl3C_6_488*aa6[51:60]+n_kl3C_6_488_base}       # corrects all ten baseline values with the slope

n_kl3C_6_488_low<-c(aa6[85]-(85*S_kl3C_6_488))
kl3C_6_488_low<-0
for(i in 111:120)
{kl3C_6_488_low<- S_kl3C_6_488*aa6[111:120]+n_kl3C_6_488_low}       # corrects all ten low values with the slope

n_kl3C_6_488_peak<-c(aa6[120]-(120*S_kl3C_6_488))
kl3C_6_488_peak<-0
for(i in 76:85)
{kl3C_6_488_peak<- S_kl3C_6_488*aa6[76:85]+n_kl3C_6_488_peak}


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
n_kl3C_6_568<-c(bb6[60]-(60*S_kl3C_6_568))
kl3C_6_568_base<-0
for(i in 51:60)
{kl3C_6_568_base<- S_kl3C_6_568*bb6[51:60]+n_kl3C_6_568}

kl3C_6_568_low<-0
for(i in 111:120)
{kl3C_6_568_low<- S_kl3C_6_568*bb6[111:120]+n_kl3C_6_568}

kl3C_6_568_peak<-0
for(i in 76:85)
{kl3C_6_568_peak<- S_kl3C_6_568*bb6[76:85]+n_kl3C_6_568}

kl3C_6_bpl<-c((kl3C_6_488_base/kl3C_6_568_base)/((kl3C_6_488_peak/kl3C_6_568_peak)/(kl3C_6_488_low/kl3C_6_568_low)))
kl3C_6_blp<-c((kl3C_6_488_base/kl3C_6_568_base)/((kl3C_6_488_low/kl3C_6_568_low)/(kl3C_6_488_peak/kl3C_6_568_peak)))
kl3C_6_btl<-c((kl3C_6_488_base/kl3C_6_568_base)/(kl3C_6_488_low/kl3C_6_568_low))
kl3C_6_btp<-c((kl3C_6_488_base/kl3C_6_568_base)/(kl3C_6_488_peak/kl3C_6_568_peak))

pHerry_kl3C_6_base<-c(mean(kl3C_6_488_base/kl3C_6_568_base)) 
pHerry_kl3C_6_bpl<-c(mean(kl3C_6_bpl))
pHerry_kl3C_6_blp<-c(mean(kl3C_6_blp))
pHerry_kl3C_6_btl<-c(mean(kl3C_6_btl))
pHerry_kl3C_6_btp<-c(mean(kl3C_6_btp))

a7<-c(kl3[,25])
b7<-c(kl3[,26])
c7<-c(kl3[,27])
d7<-c(kl3[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
kl3C_eyedisc_7<-c(aa7/bb7)


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
n_kl3C_7_488_base<-c(aa7[60]-(60*S_kl3C_7_488))
kl3C_7_488_base<-0
for(i in 51:60)
{kl3C_7_488_base<- S_kl3C_7_488*aa7[51:60]+n_kl3C_7_488_base}       # corrects all ten baseline values with the slope

n_kl3C_7_488_low<-c(aa7[85]-(85*S_kl3C_7_488))
kl3C_7_488_low<-0
for(i in 111:120)
{kl3C_7_488_low<- S_kl3C_7_488*aa7[111:120]+n_kl3C_7_488_low}       # corrects all ten low values with the slope

n_kl3C_7_488_peak<-c(aa7[120]-(120*S_kl3C_7_488))
kl3C_7_488_peak<-0
for(i in 76:85)
{kl3C_7_488_peak<- S_kl3C_7_488*aa7[76:85]+n_kl3C_7_488_peak}


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
n_kl3C_7_568<-c(bb7[60]-(60*S_kl3C_7_568))
kl3C_7_568_base<-0
for(i in 51:60)
{kl3C_7_568_base<- S_kl3C_7_568*bb7[51:60]+n_kl3C_7_568}

kl3C_7_568_low<-0
for(i in 111:120)
{kl3C_7_568_low<- S_kl3C_7_568*bb7[111:120]+n_kl3C_7_568}

kl3C_7_568_peak<-0
for(i in 76:85)
{kl3C_7_568_peak<- S_kl3C_7_568*bb7[76:85]+n_kl3C_7_568}

kl3C_7_bpl<-c((kl3C_7_488_base/kl3C_7_568_base)/((kl3C_7_488_peak/kl3C_7_568_peak)/(kl3C_7_488_low/kl3C_7_568_low)))
kl3C_7_blp<-c((kl3C_7_488_base/kl3C_7_568_base)/((kl3C_7_488_low/kl3C_7_568_low)/(kl3C_7_488_peak/kl3C_7_568_peak)))
kl3C_7_btl<-c((kl3C_7_488_base/kl3C_7_568_base)/(kl3C_7_488_low/kl3C_7_568_low))
kl3C_7_btp<-c((kl3C_7_488_base/kl3C_7_568_base)/(kl3C_7_488_peak/kl3C_7_568_peak))

pHerry_kl3C_7_base<-c(mean(kl3C_7_488_base/kl3C_7_568_base)) 
pHerry_kl3C_7_bpl<-c(mean(kl3C_7_bpl))
pHerry_kl3C_7_blp<-c(mean(kl3C_7_blp))
pHerry_kl3C_7_btl<-c(mean(kl3C_7_btl))
pHerry_kl3C_7_btp<-c(mean(kl3C_7_btp))


a13<-c(kl3[,49])
b13<-c(kl3[,50])
c13<-c(kl3[,51])
d13<-c(kl3[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
kl3C_eyedisc_13<-c(aa13/bb13)


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
n_kl3C_13_488_base<-c(aa13[60]-(60*S_kl3C_13_488))
kl3C_13_488_base<-0
for(i in 51:60)
{kl3C_13_488_base<- S_kl3C_13_488*aa13[51:60]+n_kl3C_13_488_base}       # corrects all ten baseline values with the slope

n_kl3C_13_488_low<-c(aa13[85]-(85*S_kl3C_13_488))
kl3C_13_488_low<-0
for(i in 111:120)
{kl3C_13_488_low<- S_kl3C_13_488*aa13[111:120]+n_kl3C_13_488_low}       # corrects all ten low values with the slope

n_kl3C_13_488_peak<-c(aa13[120]-(120*S_kl3C_13_488))
kl3C_13_488_peak<-0
for(i in 76:85)
{kl3C_13_488_peak<- S_kl3C_13_488*aa13[76:85]+n_kl3C_13_488_peak}


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
n_kl3C_13_568<-c(bb13[60]-(60*S_kl3C_13_568))
kl3C_13_568_base<-0
for(i in 51:60)
{kl3C_13_568_base<- S_kl3C_13_568*bb13[51:60]+n_kl3C_13_568}

kl3C_13_568_low<-0
for(i in 111:120)
{kl3C_13_568_low<- S_kl3C_13_568*bb13[111:120]+n_kl3C_13_568}

kl3C_13_568_peak<-0
for(i in 76:85)
{kl3C_13_568_peak<- S_kl3C_13_568*bb13[76:85]+n_kl3C_13_568}


kl3C_13_bpl<-c((kl3C_13_488_base/kl3C_13_568_base)/((kl3C_13_488_peak/kl3C_13_568_peak)/(kl3C_13_488_low/kl3C_13_568_low)))
kl3C_13_blp<-c((kl3C_13_488_base/kl3C_13_568_base)/((kl3C_13_488_low/kl3C_13_568_low)/(kl3C_13_488_peak/kl3C_13_568_peak)))
kl3C_13_btl<-c((kl3C_13_488_base/kl3C_13_568_base)/(kl3C_13_488_low/kl3C_13_568_low))
kl3C_13_btp<-c((kl3C_13_488_base/kl3C_13_568_base)/(kl3C_13_488_peak/kl3C_13_568_peak))

pHerry_kl3C_13_base<-c(mean(kl3C_13_488_base/kl3C_13_568_base)) 
pHerry_kl3C_13_bpl<-c(mean(kl3C_13_bpl))
pHerry_kl3C_13_blp<-c(mean(kl3C_13_blp))
pHerry_kl3C_13_btl<-c(mean(kl3C_13_btl))
pHerry_kl3C_13_btp<-c(mean(kl3C_13_btp))


a14<-c(kl3[,53])
b14<-c(kl3[,54])
c14<-c(kl3[,55])
d14<-c(kl3[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
kl3C_eyedisc_14<-c(aa14/bb14)


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
n_kl3C_14_488_base<-c(aa14[60]-(60*S_kl3C_14_488))
kl3C_14_488_base<-0
for(i in 51:60)
{kl3C_14_488_base<- S_kl3C_14_488*aa14[51:60]+n_kl3C_14_488_base}       # corrects all ten baseline values with the slope

n_kl3C_14_488_low<-c(aa14[85]-(85*S_kl3C_14_488))
kl3C_14_488_low<-0
for(i in 111:120)
{kl3C_14_488_low<- S_kl3C_14_488*aa14[111:120]+n_kl3C_14_488_low}       # corrects all ten low values with the slope

n_kl3C_14_488_peak<-c(aa14[120]-(120*S_kl3C_14_488))
kl3C_14_488_peak<-0
for(i in 76:85)
{kl3C_14_488_peak<- S_kl3C_14_488*aa14[76:85]+n_kl3C_14_488_peak}


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
n_kl3C_14_568<-c(bb14[60]-(60*S_kl3C_14_568))
kl3C_14_568_base<-0
for(i in 51:60)
{kl3C_14_568_base<- S_kl3C_14_568*bb14[51:60]+n_kl3C_14_568}

kl3C_14_568_low<-0
for(i in 111:120)
{kl3C_14_568_low<- S_kl3C_14_568*bb14[111:120]+n_kl3C_14_568}

kl3C_14_568_peak<-0
for(i in 76:85)
{kl3C_14_568_peak<- S_kl3C_14_568*bb14[76:85]+n_kl3C_14_568}

kl3C_14_bpl<-c((kl3C_14_488_base/kl3C_14_568_base)/((kl3C_14_488_peak/kl3C_14_568_peak)/(kl3C_14_488_low/kl3C_14_568_low)))
kl3C_14_blp<-c((kl3C_14_488_base/kl3C_14_568_base)/((kl3C_14_488_low/kl3C_14_568_low)/(kl3C_14_488_peak/kl3C_14_568_peak)))
kl3C_14_btl<-c((kl3C_14_488_base/kl3C_14_568_base)/(kl3C_14_488_low/kl3C_14_568_low))
kl3C_14_btp<-c((kl3C_14_488_base/kl3C_14_568_base)/(kl3C_14_488_peak/kl3C_14_568_peak))

pHerry_kl3C_14_base<-c(mean(kl3C_14_488_base/kl3C_14_568_base)) 
pHerry_kl3C_14_bpl<-c(mean(kl3C_14_bpl))
pHerry_kl3C_14_blp<-c(mean(kl3C_14_blp))
pHerry_kl3C_14_btl<-c(mean(kl3C_14_btl))
pHerry_kl3C_14_btp<-c(mean(kl3C_14_btp))



a15<-c(kl3[,57])
b15<-c(kl3[,58])
c15<-c(kl3[,59])
d15<-c(kl3[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
kl3C_eyedisc_15<-c(aa15/bb15)


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
n_kl3C_15_488_base<-c(aa15[60]-(60*S_kl3C_15_488))
kl3C_15_488_base<-0
for(i in 51:60)
{kl3C_15_488_base<- S_kl3C_15_488*aa15[51:60]+n_kl3C_15_488_base}       # corrects all ten baseline values with the slope

n_kl3C_15_488_low<-c(aa15[85]-(85*S_kl3C_15_488))
kl3C_15_488_low<-0
for(i in 111:120)
{kl3C_15_488_low<- S_kl3C_15_488*aa15[111:120]+n_kl3C_15_488_low}       # corrects all ten low values with the slope

n_kl3C_15_488_peak<-c(aa15[120]-(120*S_kl3C_15_488))
kl3C_15_488_peak<-0
for(i in 76:85)
{kl3C_15_488_peak<- S_kl3C_15_488*aa15[76:85]+n_kl3C_15_488_peak}


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
n_kl3C_15_568<-c(bb15[60]-(60*S_kl3C_15_568))
kl3C_15_568_base<-0
for(i in 51:60)
{kl3C_15_568_base<- S_kl3C_15_568*bb15[51:60]+n_kl3C_15_568}

kl3C_15_568_low<-0
for(i in 111:120)
{kl3C_15_568_low<- S_kl3C_15_568*bb15[111:120]+n_kl3C_15_568}

kl3C_15_568_peak<-0
for(i in 76:85)
{kl3C_15_568_peak<- S_kl3C_15_568*bb15[76:85]+n_kl3C_15_568}

kl3C_15_bpl<-c((kl3C_15_488_base/kl3C_15_568_base)/((kl3C_15_488_peak/kl3C_15_568_peak)/(kl3C_15_488_low/kl3C_15_568_low)))
kl3C_15_blp<-c((kl3C_15_488_base/kl3C_15_568_base)/((kl3C_15_488_low/kl3C_15_568_low)/(kl3C_15_488_peak/kl3C_15_568_peak)))
kl3C_15_btl<-c((kl3C_15_488_base/kl3C_15_568_base)/(kl3C_15_488_low/kl3C_15_568_low))
kl3C_15_btp<-c((kl3C_15_488_base/kl3C_15_568_base)/(kl3C_15_488_peak/kl3C_15_568_peak))

pHerry_kl3C_15_base<-c(mean(kl3C_15_488_base/kl3C_15_568_base)) 
pHerry_kl3C_15_bpl<-c(mean(kl3C_15_bpl))
pHerry_kl3C_15_blp<-c(mean(kl3C_15_blp))
pHerry_kl3C_15_btl<-c(mean(kl3C_15_btl))
pHerry_kl3C_15_btp<-c(mean(kl3C_15_btp))

a16<-c(kl3[,61])
b16<-c(kl3[,62])
c16<-c(kl3[,63])
d16<-c(kl3[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
kl3C_eyedisc_16<-c(aa16/bb16)


slope_kl3C_16_488<-c(aa16[60]-aa16[59],
                       aa16[59]-aa16[58],
                       aa16[58]-aa16[57],
                       aa16[57]-aa16[56],
                       aa16[56]-aa16[55],
                       aa16[55]-aa16[54],
                       aa16[54]-aa16[53],
                       aa16[53]-aa16[52],
                       aa16[52]-aa16[51],
                       aa16[51]-aa16[50])
S_kl3C_16_488<-c(mean(slope_kl3C_16_488))
n_kl3C_16_488_base<-c(aa16[60]-(60*S_kl3C_16_488))
kl3C_16_488_base<-0
for(i in 51:60)
{kl3C_16_488_base<- S_kl3C_16_488*aa16[51:60]+n_kl3C_16_488_base}       # corrects all ten baseline values with the slope

n_kl3C_16_488_low<-c(aa16[85]-(85*S_kl3C_16_488))
kl3C_16_488_low<-0
for(i in 111:120)
{kl3C_16_488_low<- S_kl3C_16_488*aa16[111:120]+n_kl3C_16_488_low}       # corrects all ten low values with the slope

n_kl3C_16_488_peak<-c(aa16[120]-(120*S_kl3C_16_488))
kl3C_16_488_peak<-0
for(i in 76:85)
{kl3C_16_488_peak<- S_kl3C_16_488*aa16[76:85]+n_kl3C_16_488_peak}


slope_kl3C_16_568<-c(bb16[60]-bb16[59],
                       bb16[59]-bb16[58],
                       bb16[58]-bb16[57],
                       bb16[57]-bb16[56],
                       bb16[56]-bb16[55],
                       bb16[55]-bb16[54],
                       bb16[54]-bb16[53],
                       bb16[53]-bb16[52],
                       bb16[52]-bb16[51],
                       bb16[51]-bb16[50])
S_kl3C_16_568<-c(mean(slope_kl3C_16_568))
n_kl3C_16_568<-c(bb16[60]-(60*S_kl3C_16_568))
kl3C_16_568_base<-0
for(i in 51:60)
{kl3C_16_568_base<- S_kl3C_16_568*bb16[51:60]+n_kl3C_16_568}

kl3C_16_568_low<-0
for(i in 111:120)
{kl3C_16_568_low<- S_kl3C_16_568*bb16[111:120]+n_kl3C_16_568}

kl3C_16_568_peak<-0
for(i in 76:85)
{kl3C_16_568_peak<- S_kl3C_16_568*bb16[76:85]+n_kl3C_16_568}

kl3C_16_bpl<-c((kl3C_16_488_base/kl3C_16_568_base)/((kl3C_16_488_peak/kl3C_16_568_peak)/(kl3C_16_488_low/kl3C_16_568_low)))
kl3C_16_blp<-c((kl3C_16_488_base/kl3C_16_568_base)/((kl3C_16_488_low/kl3C_16_568_low)/(kl3C_16_488_peak/kl3C_16_568_peak)))
kl3C_16_btl<-c((kl3C_16_488_base/kl3C_16_568_base)/(kl3C_16_488_low/kl3C_16_568_low))
kl3C_16_btp<-c((kl3C_16_488_base/kl3C_16_568_base)/(kl3C_16_488_peak/kl3C_16_568_peak))

pHerry_kl3C_16_base<-c(mean(kl3C_16_488_base/kl3C_16_568_base)) 
pHerry_kl3C_16_bpl<-c(mean(kl3C_16_bpl))
pHerry_kl3C_16_blp<-c(mean(kl3C_16_blp))
pHerry_kl3C_16_btl<-c(mean(kl3C_16_btl))
pHerry_kl3C_16_btp<-c(mean(kl3C_16_btp))

a17<-c(kl3[,65])
b17<-c(kl3[,66])
c17<-c(kl3[,67])
d17<-c(kl3[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
kl3C_eyedisc_17<-c(aa17/bb17)


slope_kl3C_17_488<-c(aa17[60]-aa17[59],
                       aa17[59]-aa17[58],
                       aa17[58]-aa17[57],
                       aa17[57]-aa17[56],
                       aa17[56]-aa17[55],
                       aa17[55]-aa17[54],
                       aa17[54]-aa17[53],
                       aa17[53]-aa17[52],
                       aa17[52]-aa17[51],
                       aa17[51]-aa17[50])
S_kl3C_17_488<-c(mean(slope_kl3C_17_488))
n_kl3C_17_488_base<-c(aa17[60]-(60*S_kl3C_17_488))
kl3C_17_488_base<-0
for(i in 51:60)
{kl3C_17_488_base<- S_kl3C_17_488*aa17[51:60]+n_kl3C_17_488_base}       # corrects all ten baseline values with the slope

n_kl3C_17_488_low<-c(aa17[85]-(85*S_kl3C_17_488))
kl3C_17_488_low<-0
for(i in 111:120)
{kl3C_17_488_low<- S_kl3C_17_488*aa17[111:120]+n_kl3C_17_488_low}       # corrects all ten low values with the slope

n_kl3C_17_488_peak<-c(aa17[120]-(120*S_kl3C_17_488))
kl3C_17_488_peak<-0
for(i in 76:85)
{kl3C_17_488_peak<- S_kl3C_17_488*aa17[76:85]+n_kl3C_17_488_peak}


slope_kl3C_17_568<-c(bb17[60]-bb17[59],
                       bb17[59]-bb17[58],
                       bb17[58]-bb17[57],
                       bb17[57]-bb17[56],
                       bb17[56]-bb17[55],
                       bb17[55]-bb17[54],
                       bb17[54]-bb17[53],
                       bb17[53]-bb17[52],
                       bb17[52]-bb17[51],
                       bb17[51]-bb17[50])
S_kl3C_17_568<-c(mean(slope_kl3C_17_568))
n_kl3C_17_568<-c(bb17[60]-(60*S_kl3C_17_568))
kl3C_17_568_base<-0
for(i in 51:60)
{kl3C_17_568_base<- S_kl3C_17_568*bb17[51:60]+n_kl3C_17_568}

kl3C_17_568_low<-0
for(i in 111:120)
{kl3C_17_568_low<- S_kl3C_17_568*bb17[111:120]+n_kl3C_17_568}

kl3C_17_568_peak<-0
for(i in 76:85)
{kl3C_17_568_peak<- S_kl3C_17_568*bb17[76:85]+n_kl3C_17_568}

kl3C_17_bpl<-c((kl3C_17_488_base/kl3C_17_568_base)/((kl3C_17_488_peak/kl3C_17_568_peak)/(kl3C_17_488_low/kl3C_17_568_low)))
kl3C_17_blp<-c((kl3C_17_488_base/kl3C_17_568_base)/((kl3C_17_488_low/kl3C_17_568_low)/(kl3C_17_488_peak/kl3C_17_568_peak)))
kl3C_17_btl<-c((kl3C_17_488_base/kl3C_17_568_base)/(kl3C_17_488_low/kl3C_17_568_low))
kl3C_17_btp<-c((kl3C_17_488_base/kl3C_17_568_base)/(kl3C_17_488_peak/kl3C_17_568_peak))

pHerry_kl3C_17_base<-c(mean(kl3C_17_488_base/kl3C_17_568_base)) 
pHerry_kl3C_17_bpl<-c(mean(kl3C_17_bpl))
pHerry_kl3C_17_blp<-c(mean(kl3C_17_blp))
pHerry_kl3C_17_btl<-c(mean(kl3C_17_btl))
pHerry_kl3C_17_btp<-c(mean(kl3C_17_btp))




pHerry_kl3C_time_course<-c(kl3C_eyedisc_1,kl3C_eyedisc_2,kl3C_eyedisc_3,kl3C_eyedisc_4,kl3C_eyedisc_5,kl3C_eyedisc_6,kl3C_eyedisc_7,kl3C_eyedisc_13,kl3C_eyedisc_14,kl3C_eyedisc_15,kl3C_eyedisc_16,kl3C_eyedisc_17)
matpHerry_kl3C_time_course<-matrix(pHerry_kl3C_time_course,nrow=120,ncol=15)
mean_pHerry_kl3C_time_course<-c(rowMeans(matpHerry_kl3C_time_course))

pHerry_kl3C_base<-c(pHerry_kl3C_1_base,pHerry_kl3C_2_base,pHerry_kl3C_3_base,pHerry_kl3C_4_base,pHerry_kl3C_5_base,pHerry_kl3C_6_base,pHerry_kl3C_7_base,pHerry_kl3C_13_base,pHerry_kl3C_14_base,pHerry_kl3C_15_base,pHerry_kl3C_16_base,pHerry_kl3C_17_base)
