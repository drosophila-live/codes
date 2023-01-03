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


a8<-c(kl3[,29])
b8<-c(kl3[,30])
c8<-c(kl3[,31])
d8<-c(kl3[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
kl3C_eyedisc_8<-c(aa8/bb8)


slope_kl3C_8_488<-c(aa8[60]-aa8[59],
                   aa8[59]-aa8[58],
                   aa8[58]-aa8[57],
                   aa8[57]-aa8[56],
                   aa8[56]-aa8[55],
                   aa8[55]-aa8[54],
                   aa8[54]-aa8[53],
                   aa8[53]-aa8[52],
                   aa8[52]-aa8[51],
                   aa8[51]-aa8[50])
S_kl3C_8_488<-c(mean(slope_kl3C_8_488))
n_kl3C_8_488_base<-c(aa8[60]-(60*S_kl3C_8_488))
kl3C_8_488_base<-0
for(i in 51:60)
{kl3C_8_488_base<- S_kl3C_8_488*aa8[51:60]+n_kl3C_8_488_base}       # corrects all ten baseline values with the slope

n_kl3C_8_488_low<-c(aa8[85]-(85*S_kl3C_8_488))
kl3C_8_488_low<-0
for(i in 111:120)
{kl3C_8_488_low<- S_kl3C_8_488*aa8[111:120]+n_kl3C_8_488_low}       # corrects all ten low values with the slope

n_kl3C_8_488_peak<-c(aa8[120]-(120*S_kl3C_8_488))
kl3C_8_488_peak<-0
for(i in 76:85)
{kl3C_8_488_peak<- S_kl3C_8_488*aa8[76:85]+n_kl3C_8_488_peak}


slope_kl3C_8_568<-c(bb8[60]-bb8[59],
                   bb8[59]-bb8[58],
                   bb8[58]-bb8[57],
                   bb8[57]-bb8[56],
                   bb8[56]-bb8[55],
                   bb8[55]-bb8[54],
                   bb8[54]-bb8[53],
                   bb8[53]-bb8[52],
                   bb8[52]-bb8[51],
                   bb8[51]-bb8[50])
S_kl3C_8_568<-c(mean(slope_kl3C_8_568))
n_kl3C_8_568<-c(bb8[60]-(60*S_kl3C_8_568))
kl3C_8_568_base<-0
for(i in 51:60)
{kl3C_8_568_base<- S_kl3C_8_568*bb8[51:60]+n_kl3C_8_568}

kl3C_8_568_low<-0
for(i in 111:120)
{kl3C_8_568_low<- S_kl3C_8_568*bb8[111:120]+n_kl3C_8_568}

kl3C_8_568_peak<-0
for(i in 76:85)
{kl3C_8_568_peak<- S_kl3C_8_568*bb8[76:85]+n_kl3C_8_568}

kl3C_8_bpl<-c((kl3C_8_488_base/kl3C_8_568_base)/((kl3C_8_488_peak/kl3C_8_568_peak)/(kl3C_8_488_low/kl3C_8_568_low)))
kl3C_8_blp<-c((kl3C_8_488_base/kl3C_8_568_base)/((kl3C_8_488_low/kl3C_8_568_low)/(kl3C_8_488_peak/kl3C_8_568_peak)))
kl3C_8_btl<-c((kl3C_8_488_base/kl3C_8_568_base)/(kl3C_8_488_low/kl3C_8_568_low))
kl3C_8_btp<-c((kl3C_8_488_base/kl3C_8_568_base)/(kl3C_8_488_peak/kl3C_8_568_peak))

pHerry_kl3C_8_base<-c(mean(kl3C_8_488_base/kl3C_8_568_base)) 
pHerry_kl3C_8_bpl<-c(mean(kl3C_8_bpl))
pHerry_kl3C_8_blp<-c(mean(kl3C_8_blp))
pHerry_kl3C_8_btl<-c(mean(kl3C_8_btl))
pHerry_kl3C_8_btp<-c(mean(kl3C_8_btp))


a9<-c(kl3[,33])
b9<-c(kl3[,34])
c9<-c(kl3[,35])
d9<-c(kl3[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
kl3C_eyedisc_9<-c(aa9/bb9)


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
n_kl3C_9_488_base<-c(aa9[60]-(60*S_kl3C_9_488))
kl3C_9_488_base<-0
for(i in 51:60)
{kl3C_9_488_base<- S_kl3C_9_488*aa9[51:60]+n_kl3C_9_488_base}       # corrects all ten baseline values with the slope

n_kl3C_9_488_low<-c(aa9[85]-(85*S_kl3C_9_488))
kl3C_9_488_low<-0
for(i in 111:120)
{kl3C_9_488_low<- S_kl3C_9_488*aa9[111:120]+n_kl3C_9_488_low}       # corrects all ten low values with the slope

n_kl3C_9_488_peak<-c(aa9[120]-(120*S_kl3C_9_488))
kl3C_9_488_peak<-0
for(i in 76:85)
{kl3C_9_488_peak<- S_kl3C_9_488*aa9[76:85]+n_kl3C_9_488_peak}


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
n_kl3C_9_568<-c(bb9[60]-(60*S_kl3C_9_568))
kl3C_9_568_base<-0
for(i in 51:60)
{kl3C_9_568_base<- S_kl3C_9_568*bb9[51:60]+n_kl3C_9_568}

kl3C_9_568_low<-0
for(i in 111:120)
{kl3C_9_568_low<- S_kl3C_9_568*bb9[111:120]+n_kl3C_9_568}

kl3C_9_568_peak<-0
for(i in 76:85)
{kl3C_9_568_peak<- S_kl3C_9_568*bb9[76:85]+n_kl3C_9_568}

kl3C_9_bpl<-c((kl3C_9_488_base/kl3C_9_568_base)/((kl3C_9_488_peak/kl3C_9_568_peak)/(kl3C_9_488_low/kl3C_9_568_low)))
kl3C_9_blp<-c((kl3C_9_488_base/kl3C_9_568_base)/((kl3C_9_488_low/kl3C_9_568_low)/(kl3C_9_488_peak/kl3C_9_568_peak)))
kl3C_9_btl<-c((kl3C_9_488_base/kl3C_9_568_base)/(kl3C_9_488_low/kl3C_9_568_low))
kl3C_9_btp<-c((kl3C_9_488_base/kl3C_9_568_base)/(kl3C_9_488_peak/kl3C_9_568_peak))

pHerry_kl3C_9_base<-c(mean(kl3C_9_488_base/kl3C_9_568_base)) 
pHerry_kl3C_9_bpl<-c(mean(kl3C_9_bpl))
pHerry_kl3C_9_blp<-c(mean(kl3C_9_blp))
pHerry_kl3C_9_btl<-c(mean(kl3C_9_btl))
pHerry_kl3C_9_btp<-c(mean(kl3C_9_btp))




pHerry_kl3C_time_course<-c(kl3C_eyedisc_1,kl3C_eyedisc_2,kl3C_eyedisc_3,kl3C_eyedisc_4,kl3C_eyedisc_5,kl3C_eyedisc_8,kl3C_eyedisc_9)
matpHerry_kl3C_time_course<-matrix(pHerry_kl3C_time_course,nrow=120,ncol=7)
mean_pHerry_kl3C_time_course<-c(rowMeans(matpHerry_kl3C_time_course))

pHerry_kl3C_base<-c(pHerry_kl3C_1_base,pHerry_kl3C_2_base,pHerry_kl3C_3_base,pHerry_kl3C_4_base,pHerry_kl3C_5_base,pHerry_kl3C_8_base,pHerry_kl3C_9_base)
