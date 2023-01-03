a1<-c(G6Pdh[,1])  # creates a vector containing all 488 values for first eyedisc
b1<-c(G6Pdh[,2])  # creates a vector containing all 488 background values for first eyedisc
c1<-c(G6Pdh[,3])  # creates a vector containing all 568 values for first eyedisc
d1<-c(G6Pdh[,4])  # creates a vector containing all 568 background values for first eyedisc
aa1<-c(a1-b1)   # creates a BG subtracted vector for 488 channel
bb1<-c(c1-d1)   # creates a BG subtracted vector for 568 channel
G6PdhC_eyedisc_1<-c(aa1/bb1) # creates a first vector as a ratio, only important for time courses

slope_G6PdhC_1_488<-c(aa1[60]-aa1[59],
                    aa1[59]-aa1[58],
                    aa1[58]-aa1[57],
                    aa1[57]-aa1[56],
                    aa1[56]-aa1[55],
                    aa1[55]-aa1[54],
                    aa1[54]-aa1[53],
                    aa1[53]-aa1[52],
                    aa1[52]-aa1[51],
                    aa1[51]-aa1[50])                               # creates a vector containing last ten values after last condition(i.e.buffer change) to be considered linear bleaching
S_G6PdhC_1_488<-c(mean(slope_G6PdhC_1_488))                             # calculates the mean slope resulting from these ten values
n_G6PdhC_1_488_base<-c(aa1[60]-(60*S_G6PdhC_1_488))                     # calculates a theoretical linear zero time point value to use for linear correction
G6PdhC_1_488_base<-0
for(i in 51:60)
{G6PdhC_1_488_base<- S_G6PdhC_1_488*aa1[51:60]+n_G6PdhC_1_488_base}        # corrects all ten baseline values with the slope of a theoretical linear fluorescence decay

n_G6PdhC_1_488_low<-c(aa1[85]-(85*S_G6PdhC_1_488))
G6PdhC_1_488_low<-0
for(i in 111:120)
{G6PdhC_1_488_low<- S_G6PdhC_1_488*aa1[111:120]+n_G6PdhC_1_488_low}          # corrects all ten low values with the slope of theoretical linear fluorescence decay

n_G6PdhC_1_488_peak<-c(aa1[120]-(120*S_G6PdhC_1_488))
G6PdhC_1_488_peak<-0
for(i in 76:85)
{G6PdhC_1_488_peak<- S_G6PdhC_1_488*aa1[76:85]+n_G6PdhC_1_488_peak}      # corrects all ten peak values with the slope of theoretical linear fluorescence decay


slope_G6PdhC_1_568<-c(bb1[60]-bb1[59],
                    bb1[59]-bb1[58],
                    bb1[58]-bb1[57],
                    bb1[57]-bb1[56],
                    bb1[56]-bb1[55],
                    bb1[55]-bb1[54],
                    bb1[54]-bb1[53],
                    bb1[53]-bb1[52],
                    bb1[52]-bb1[51],
                    bb1[51]-bb1[50])                               # same as above but for the second channel
S_G6PdhC_1_568<-c(mean(slope_G6PdhC_1_568))
n_G6PdhC_1_568<-c(bb1[60]-(60*S_G6PdhC_1_568))
G6PdhC_1_568_base<-0
for(i in 51:60)
{G6PdhC_1_568_base<- S_G6PdhC_1_568*bb1[51:60]+n_G6PdhC_1_568}

G6PdhC_1_568_low<-0
for(i in 111:120)
{G6PdhC_1_568_low<- S_G6PdhC_1_568*bb1[111:120]+n_G6PdhC_1_568}

G6PdhC_1_568_peak<-0
for(i in 76:85)
{G6PdhC_1_568_peak<- S_G6PdhC_1_568*bb1[76:85]+n_G6PdhC_1_568}

G6PdhC_1_bpl<-c((G6PdhC_1_488_base/G6PdhC_1_568_base)/((G6PdhC_1_488_peak/G6PdhC_1_568_peak)/(G6PdhC_1_488_low/G6PdhC_1_568_low)))   # see below
G6PdhC_1_blp<-c((G6PdhC_1_488_base/G6PdhC_1_568_base)/((G6PdhC_1_488_low/G6PdhC_1_568_low)/(G6PdhC_1_488_peak/G6PdhC_1_568_peak)))
G6PdhC_1_btl<-c((G6PdhC_1_488_base/G6PdhC_1_568_base)/(G6PdhC_1_488_low/G6PdhC_1_568_low))
G6PdhC_1_btp<-c((G6PdhC_1_488_base/G6PdhC_1_568_base)/(G6PdhC_1_488_peak/G6PdhC_1_568_peak))

pHerry_G6PdhC_1_base<-c(mean(G6PdhC_1_488_base/G6PdhC_1_568_base))       # creates a vector containing deltaF to F of calculated from the ten baseline values
pHerry_G6PdhC_1_bpl<-c(mean(G6PdhC_1_bpl))                            # baseline in relation to peak divided by low
pHerry_G6PdhC_1_blp<-c(mean(G6PdhC_1_blp))                            # baseline in relation to low divided by peak
pHerry_G6PdhC_1_btl<-c(mean(G6PdhC_1_btl))                            # baseline in relation to peak indicating a potentially altered baseline by a maximum that can be reached
pHerry_G6PdhC_1_btp<-c(mean(G6PdhC_1_btp))                            # baseline in realation to low indicating a potentially altered baseline by how well the cells can recover

a2<-c(G6Pdh[,5])
b2<-c(G6Pdh[,6])
c2<-c(G6Pdh[,7])
d2<-c(G6Pdh[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
G6PdhC_eyedisc_2<-c(aa2/bb2)


slope_G6PdhC_2_488<-c(aa2[60]-aa2[59],
                    aa2[59]-aa2[58],
                    aa2[58]-aa2[57],
                    aa2[57]-aa2[56],
                    aa2[56]-aa2[55],
                    aa2[55]-aa2[54],
                    aa2[54]-aa2[53],
                    aa2[53]-aa2[52],
                    aa2[52]-aa2[51],
                    aa2[51]-aa2[50])
S_G6PdhC_2_488<-c(mean(slope_G6PdhC_2_488))
n_G6PdhC_2_488_base<-c(aa2[60]-(60*S_G6PdhC_2_488))
G6PdhC_2_488_base<-0
for(i in 51:60)
{G6PdhC_2_488_base<- S_G6PdhC_2_488*aa2[51:60]+n_G6PdhC_2_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_2_488_low<-c(aa2[85]-(85*S_G6PdhC_2_488))
G6PdhC_2_488_low<-0
for(i in 111:120)
{G6PdhC_2_488_low<- S_G6PdhC_2_488*aa2[111:120]+n_G6PdhC_2_488_low}       # corrects all ten low values with the slope

n_G6PdhC_2_488_peak<-c(aa2[120]-(120*S_G6PdhC_2_488))
G6PdhC_2_488_peak<-0
for(i in 76:85)
{G6PdhC_2_488_peak<- S_G6PdhC_2_488*aa2[76:85]+n_G6PdhC_2_488_peak}


slope_G6PdhC_2_568<-c(bb2[60]-bb2[59],
                    bb2[59]-bb2[58],
                    bb2[58]-bb2[57],
                    bb2[57]-bb2[56],
                    bb2[56]-bb2[55],
                    bb2[55]-bb2[54],
                    bb2[54]-bb2[53],
                    bb2[53]-bb2[52],
                    bb2[52]-bb2[51],
                    bb2[51]-bb2[50])
S_G6PdhC_2_568<-c(mean(slope_G6PdhC_2_568))
n_G6PdhC_2_568<-c(bb2[60]-(60*S_G6PdhC_2_568))
G6PdhC_2_568_base<-0
for(i in 51:60)
{G6PdhC_2_568_base<- S_G6PdhC_2_568*bb2[51:60]+n_G6PdhC_2_568}

G6PdhC_2_568_low<-0
for(i in 111:120)
{G6PdhC_2_568_low<- S_G6PdhC_2_568*bb2[111:120]+n_G6PdhC_2_568}

G6PdhC_2_568_peak<-0
for(i in 76:85)
{G6PdhC_2_568_peak<- S_G6PdhC_2_568*bb2[76:85]+n_G6PdhC_2_568}

G6PdhC_2_bpl<-c((G6PdhC_2_488_base/G6PdhC_2_568_base)/((G6PdhC_2_488_peak/G6PdhC_2_568_peak)/(G6PdhC_2_488_low/G6PdhC_2_568_low)))
G6PdhC_2_blp<-c((G6PdhC_2_488_base/G6PdhC_2_568_base)/((G6PdhC_2_488_low/G6PdhC_2_568_low)/(G6PdhC_2_488_peak/G6PdhC_2_568_peak)))
G6PdhC_2_btl<-c((G6PdhC_2_488_base/G6PdhC_2_568_base)/(G6PdhC_2_488_low/G6PdhC_2_568_low))
G6PdhC_2_btp<-c((G6PdhC_2_488_base/G6PdhC_2_568_base)/(G6PdhC_2_488_peak/G6PdhC_2_568_peak))

pHerry_G6PdhC_2_base<-c(mean(G6PdhC_2_488_base/G6PdhC_2_568_base)) 
pHerry_G6PdhC_2_bpl<-c(mean(G6PdhC_2_bpl))
pHerry_G6PdhC_2_blp<-c(mean(G6PdhC_2_blp))
pHerry_G6PdhC_2_btl<-c(mean(G6PdhC_2_btl))
pHerry_G6PdhC_2_btp<-c(mean(G6PdhC_2_btp))

a3<-c(G6Pdh[,9])
b3<-c(G6Pdh[,10])
c3<-c(G6Pdh[,11])
d3<-c(G6Pdh[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
G6PdhC_eyedisc_3<-c(aa3/bb3)


slope_G6PdhC_3_488<-c(aa3[60]-aa3[59],
                    aa3[59]-aa3[58],
                    aa3[58]-aa3[57],
                    aa3[57]-aa3[56],
                    aa3[56]-aa3[55],
                    aa3[55]-aa3[54],
                    aa3[54]-aa3[53],
                    aa3[53]-aa3[52],
                    aa3[52]-aa3[51],
                    aa3[51]-aa3[50])
S_G6PdhC_3_488<-c(mean(slope_G6PdhC_3_488))
n_G6PdhC_3_488_base<-c(aa3[60]-(60*S_G6PdhC_3_488))
G6PdhC_3_488_base<-0
for(i in 51:60)
{G6PdhC_3_488_base<- S_G6PdhC_3_488*aa3[51:60]+n_G6PdhC_3_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_3_488_low<-c(aa3[85]-(85*S_G6PdhC_3_488))
G6PdhC_3_488_low<-0
for(i in 111:120)
{G6PdhC_3_488_low<- S_G6PdhC_3_488*aa3[111:120]+n_G6PdhC_3_488_low}       # corrects all ten low values with the slope

n_G6PdhC_3_488_peak<-c(aa3[120]-(120*S_G6PdhC_3_488))
G6PdhC_3_488_peak<-0
for(i in 76:85)
{G6PdhC_3_488_peak<- S_G6PdhC_3_488*aa3[76:85]+n_G6PdhC_3_488_peak}


slope_G6PdhC_3_568<-c(bb3[60]-bb3[59],
                    bb3[59]-bb3[58],
                    bb3[58]-bb3[57],
                    bb3[57]-bb3[56],
                    bb3[56]-bb3[55],
                    bb3[55]-bb3[54],
                    bb3[54]-bb3[53],
                    bb3[53]-bb3[52],
                    bb3[52]-bb3[51],
                    bb3[51]-bb3[50])
S_G6PdhC_3_568<-c(mean(slope_G6PdhC_3_568))
n_G6PdhC_3_568<-c(bb3[60]-(60*S_G6PdhC_3_568))
G6PdhC_3_568_base<-0
for(i in 51:60)
{G6PdhC_3_568_base<- S_G6PdhC_3_568*bb3[51:60]+n_G6PdhC_3_568}

G6PdhC_3_568_low<-0
for(i in 111:120)
{G6PdhC_3_568_low<- S_G6PdhC_3_568*bb3[111:120]+n_G6PdhC_3_568}

G6PdhC_3_568_peak<-0
for(i in 76:85)
{G6PdhC_3_568_peak<- S_G6PdhC_3_568*bb3[76:85]+n_G6PdhC_3_568}

G6PdhC_3_bpl<-c((G6PdhC_3_488_base/G6PdhC_3_568_base)/((G6PdhC_3_488_peak/G6PdhC_3_568_peak)/(G6PdhC_3_488_low/G6PdhC_3_568_low)))
G6PdhC_3_blp<-c((G6PdhC_3_488_base/G6PdhC_3_568_base)/((G6PdhC_3_488_low/G6PdhC_3_568_low)/(G6PdhC_3_488_peak/G6PdhC_3_568_peak)))
G6PdhC_3_btl<-c((G6PdhC_3_488_base/G6PdhC_3_568_base)/(G6PdhC_3_488_low/G6PdhC_3_568_low))
G6PdhC_3_btp<-c((G6PdhC_3_488_base/G6PdhC_3_568_base)/(G6PdhC_3_488_peak/G6PdhC_3_568_peak))

pHerry_G6PdhC_3_base<-c(mean(G6PdhC_3_488_base/G6PdhC_3_568_base)) 
pHerry_G6PdhC_3_bpl<-c(mean(G6PdhC_3_bpl))
pHerry_G6PdhC_3_blp<-c(mean(G6PdhC_3_blp))
pHerry_G6PdhC_3_btl<-c(mean(G6PdhC_3_btl))
pHerry_G6PdhC_3_btp<-c(mean(G6PdhC_3_btp))


a4<-c(G6Pdh[,13])
b4<-c(G6Pdh[,14])
c4<-c(G6Pdh[,15])
d4<-c(G6Pdh[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
G6PdhC_eyedisc_4<-c(aa4/bb4)


slope_G6PdhC_4_488<-c(aa4[60]-aa4[59],
                     aa4[59]-aa4[58],
                     aa4[58]-aa4[57],
                     aa4[57]-aa4[56],
                     aa4[56]-aa4[55],
                     aa4[55]-aa4[54],
                     aa4[54]-aa4[53],
                     aa4[53]-aa4[52],
                     aa4[52]-aa4[51],
                     aa4[51]-aa4[50])
S_G6PdhC_4_488<-c(mean(slope_G6PdhC_4_488))
n_G6PdhC_4_488_base<-c(aa4[60]-(60*S_G6PdhC_4_488))
G6PdhC_4_488_base<-0
for(i in 51:60)
{G6PdhC_4_488_base<- S_G6PdhC_4_488*aa4[51:60]+n_G6PdhC_4_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_4_488_low<-c(aa4[85]-(85*S_G6PdhC_4_488))
G6PdhC_4_488_low<-0
for(i in 111:120)
{G6PdhC_4_488_low<- S_G6PdhC_4_488*aa4[111:120]+n_G6PdhC_4_488_low}       # corrects all ten low values with the slope

n_G6PdhC_4_488_peak<-c(aa4[120]-(120*S_G6PdhC_4_488))
G6PdhC_4_488_peak<-0
for(i in 76:85)
{G6PdhC_4_488_peak<- S_G6PdhC_4_488*aa4[76:85]+n_G6PdhC_4_488_peak}


slope_G6PdhC_4_568<-c(bb4[60]-bb4[59],
                     bb4[59]-bb4[58],
                     bb4[58]-bb4[57],
                     bb4[57]-bb4[56],
                     bb4[56]-bb4[55],
                     bb4[55]-bb4[54],
                     bb4[54]-bb4[53],
                     bb4[53]-bb4[52],
                     bb4[52]-bb4[51],
                     bb4[51]-bb4[50])
S_G6PdhC_4_568<-c(mean(slope_G6PdhC_4_568))
n_G6PdhC_4_568<-c(bb4[60]-(60*S_G6PdhC_4_568))
G6PdhC_4_568_base<-0
for(i in 51:60)
{G6PdhC_4_568_base<- S_G6PdhC_4_568*bb4[51:60]+n_G6PdhC_4_568}

G6PdhC_4_568_low<-0
for(i in 111:120)
{G6PdhC_4_568_low<- S_G6PdhC_4_568*bb4[111:120]+n_G6PdhC_4_568}

G6PdhC_4_568_peak<-0
for(i in 76:85)
{G6PdhC_4_568_peak<- S_G6PdhC_4_568*bb4[76:85]+n_G6PdhC_4_568}

G6PdhC_4_bpl<-c((G6PdhC_4_488_base/G6PdhC_4_568_base)/((G6PdhC_4_488_peak/G6PdhC_4_568_peak)/(G6PdhC_4_488_low/G6PdhC_4_568_low)))
G6PdhC_4_blp<-c((G6PdhC_4_488_base/G6PdhC_4_568_base)/((G6PdhC_4_488_low/G6PdhC_4_568_low)/(G6PdhC_4_488_peak/G6PdhC_4_568_peak)))
G6PdhC_4_btl<-c((G6PdhC_4_488_base/G6PdhC_4_568_base)/(G6PdhC_4_488_low/G6PdhC_4_568_low))
G6PdhC_4_btp<-c((G6PdhC_4_488_base/G6PdhC_4_568_base)/(G6PdhC_4_488_peak/G6PdhC_4_568_peak))

pHerry_G6PdhC_4_base<-c(mean(G6PdhC_4_488_base/G6PdhC_4_568_base)) 
pHerry_G6PdhC_4_bpl<-c(mean(G6PdhC_4_bpl))
pHerry_G6PdhC_4_blp<-c(mean(G6PdhC_4_blp))
pHerry_G6PdhC_4_btl<-c(mean(G6PdhC_4_btl))
pHerry_G6PdhC_4_btp<-c(mean(G6PdhC_4_btp))


a5<-c(G6Pdh[,17])
b5<-c(G6Pdh[,18])
c5<-c(G6Pdh[,19])
d5<-c(G6Pdh[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
G6PdhC_eyedisc_5<-c(aa5/bb5)


slope_G6PdhC_5_488<-c(aa5[60]-aa5[59],
                    aa5[59]-aa5[58],
                    aa5[58]-aa5[57],
                    aa5[57]-aa5[56],
                    aa5[56]-aa5[55],
                    aa5[55]-aa5[54],
                    aa5[54]-aa5[53],
                    aa5[53]-aa5[52],
                    aa5[52]-aa5[51],
                    aa5[51]-aa5[50])
S_G6PdhC_5_488<-c(mean(slope_G6PdhC_5_488))
n_G6PdhC_5_488_base<-c(aa5[60]-(60*S_G6PdhC_5_488))
G6PdhC_5_488_base<-0
for(i in 51:60)
{G6PdhC_5_488_base<- S_G6PdhC_5_488*aa5[51:60]+n_G6PdhC_5_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_5_488_low<-c(aa5[85]-(85*S_G6PdhC_5_488))
G6PdhC_5_488_low<-0
for(i in 111:120)
{G6PdhC_5_488_low<- S_G6PdhC_5_488*aa5[111:120]+n_G6PdhC_5_488_low}       # corrects all ten low values with the slope

n_G6PdhC_5_488_peak<-c(aa5[120]-(120*S_G6PdhC_5_488))
G6PdhC_5_488_peak<-0
for(i in 76:85)
{G6PdhC_5_488_peak<- S_G6PdhC_5_488*aa5[76:85]+n_G6PdhC_5_488_peak}


slope_G6PdhC_5_568<-c(bb5[60]-bb5[59],
                    bb5[59]-bb5[58],
                    bb5[58]-bb5[57],
                    bb5[57]-bb5[56],
                    bb5[56]-bb5[55],
                    bb5[55]-bb5[54],
                    bb5[54]-bb5[53],
                    bb5[53]-bb5[52],
                    bb5[52]-bb5[51],
                    bb5[51]-bb5[50])
S_G6PdhC_5_568<-c(mean(slope_G6PdhC_5_568))
n_G6PdhC_5_568<-c(bb5[60]-(60*S_G6PdhC_5_568))
G6PdhC_5_568_base<-0
for(i in 51:60)
{G6PdhC_5_568_base<- S_G6PdhC_5_568*bb5[51:60]+n_G6PdhC_5_568}

G6PdhC_5_568_low<-0
for(i in 111:120)
{G6PdhC_5_568_low<- S_G6PdhC_5_568*bb5[111:120]+n_G6PdhC_5_568}

G6PdhC_5_568_peak<-0
for(i in 76:85)
{G6PdhC_5_568_peak<- S_G6PdhC_5_568*bb5[76:85]+n_G6PdhC_5_568}

G6PdhC_5_bpl<-c((G6PdhC_5_488_base/G6PdhC_5_568_base)/((G6PdhC_5_488_peak/G6PdhC_5_568_peak)/(G6PdhC_5_488_low/G6PdhC_5_568_low)))
G6PdhC_5_blp<-c((G6PdhC_5_488_base/G6PdhC_5_568_base)/((G6PdhC_5_488_low/G6PdhC_5_568_low)/(G6PdhC_5_488_peak/G6PdhC_5_568_peak)))
G6PdhC_5_btl<-c((G6PdhC_5_488_base/G6PdhC_5_568_base)/(G6PdhC_5_488_low/G6PdhC_5_568_low))
G6PdhC_5_btp<-c((G6PdhC_5_488_base/G6PdhC_5_568_base)/(G6PdhC_5_488_peak/G6PdhC_5_568_peak))

pHerry_G6PdhC_5_base<-c(mean(G6PdhC_5_488_base/G6PdhC_5_568_base)) 
pHerry_G6PdhC_5_bpl<-c(mean(G6PdhC_5_bpl))
pHerry_G6PdhC_5_blp<-c(mean(G6PdhC_5_blp))
pHerry_G6PdhC_5_btl<-c(mean(G6PdhC_5_btl))
pHerry_G6PdhC_5_btp<-c(mean(G6PdhC_5_btp))

a6<-c(G6Pdh[,21])
b6<-c(G6Pdh[,22])
c6<-c(G6Pdh[,23])
d6<-c(G6Pdh[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
G6PdhC_eyedisc_6<-c(aa6/bb6)


slope_G6PdhC_6_488<-c(aa6[60]-aa6[59],
                    aa6[59]-aa6[58],
                    aa6[58]-aa6[57],
                    aa6[57]-aa6[56],
                    aa6[56]-aa6[55],
                    aa6[55]-aa6[54],
                    aa6[54]-aa6[53],
                    aa6[53]-aa6[52],
                    aa6[52]-aa6[51],
                    aa6[51]-aa6[50])
S_G6PdhC_6_488<-c(mean(slope_G6PdhC_6_488))
n_G6PdhC_6_488_base<-c(aa6[60]-(60*S_G6PdhC_6_488))
G6PdhC_6_488_base<-0
for(i in 51:60)
{G6PdhC_6_488_base<- S_G6PdhC_6_488*aa6[51:60]+n_G6PdhC_6_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_6_488_low<-c(aa6[85]-(85*S_G6PdhC_6_488))
G6PdhC_6_488_low<-0
for(i in 111:120)
{G6PdhC_6_488_low<- S_G6PdhC_6_488*aa6[111:120]+n_G6PdhC_6_488_low}       # corrects all ten low values with the slope

n_G6PdhC_6_488_peak<-c(aa6[120]-(120*S_G6PdhC_6_488))
G6PdhC_6_488_peak<-0
for(i in 76:85)
{G6PdhC_6_488_peak<- S_G6PdhC_6_488*aa6[76:85]+n_G6PdhC_6_488_peak}


slope_G6PdhC_6_568<-c(bb6[60]-bb6[59],
                    bb6[59]-bb6[58],
                    bb6[58]-bb6[57],
                    bb6[57]-bb6[56],
                    bb6[56]-bb6[55],
                    bb6[55]-bb6[54],
                    bb6[54]-bb6[53],
                    bb6[53]-bb6[52],
                    bb6[52]-bb6[51],
                    bb6[51]-bb6[50])
S_G6PdhC_6_568<-c(mean(slope_G6PdhC_6_568))
n_G6PdhC_6_568<-c(bb6[60]-(60*S_G6PdhC_6_568))
G6PdhC_6_568_base<-0
for(i in 51:60)
{G6PdhC_6_568_base<- S_G6PdhC_6_568*bb6[51:60]+n_G6PdhC_6_568}

G6PdhC_6_568_low<-0
for(i in 111:120)
{G6PdhC_6_568_low<- S_G6PdhC_6_568*bb6[111:120]+n_G6PdhC_6_568}

G6PdhC_6_568_peak<-0
for(i in 76:85)
{G6PdhC_6_568_peak<- S_G6PdhC_6_568*bb6[76:85]+n_G6PdhC_6_568}

G6PdhC_6_bpl<-c((G6PdhC_6_488_base/G6PdhC_6_568_base)/((G6PdhC_6_488_peak/G6PdhC_6_568_peak)/(G6PdhC_6_488_low/G6PdhC_6_568_low)))
G6PdhC_6_blp<-c((G6PdhC_6_488_base/G6PdhC_6_568_base)/((G6PdhC_6_488_low/G6PdhC_6_568_low)/(G6PdhC_6_488_peak/G6PdhC_6_568_peak)))
G6PdhC_6_btl<-c((G6PdhC_6_488_base/G6PdhC_6_568_base)/(G6PdhC_6_488_low/G6PdhC_6_568_low))
G6PdhC_6_btp<-c((G6PdhC_6_488_base/G6PdhC_6_568_base)/(G6PdhC_6_488_peak/G6PdhC_6_568_peak))

pHerry_G6PdhC_6_base<-c(mean(G6PdhC_6_488_base/G6PdhC_6_568_base)) 
pHerry_G6PdhC_6_bpl<-c(mean(G6PdhC_6_bpl))
pHerry_G6PdhC_6_blp<-c(mean(G6PdhC_6_blp))
pHerry_G6PdhC_6_btl<-c(mean(G6PdhC_6_btl))
pHerry_G6PdhC_6_btp<-c(mean(G6PdhC_6_btp))

a7<-c(G6Pdh[,25])
b7<-c(G6Pdh[,26])
c7<-c(G6Pdh[,27])
d7<-c(G6Pdh[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
G6PdhC_eyedisc_7<-c(aa7/bb7)


slope_G6PdhC_7_488<-c(aa7[60]-aa7[59],
                    aa7[59]-aa7[58],
                    aa7[58]-aa7[57],
                    aa7[57]-aa7[56],
                    aa7[56]-aa7[55],
                    aa7[55]-aa7[54],
                    aa7[54]-aa7[53],
                    aa7[53]-aa7[52],
                    aa7[52]-aa7[51],
                    aa7[51]-aa7[50])
S_G6PdhC_7_488<-c(mean(slope_G6PdhC_7_488))
n_G6PdhC_7_488_base<-c(aa7[60]-(60*S_G6PdhC_7_488))
G6PdhC_7_488_base<-0
for(i in 51:60)
{G6PdhC_7_488_base<- S_G6PdhC_7_488*aa7[51:60]+n_G6PdhC_7_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_7_488_low<-c(aa7[85]-(85*S_G6PdhC_7_488))
G6PdhC_7_488_low<-0
for(i in 111:120)
{G6PdhC_7_488_low<- S_G6PdhC_7_488*aa7[111:120]+n_G6PdhC_7_488_low}       # corrects all ten low values with the slope

n_G6PdhC_7_488_peak<-c(aa7[120]-(120*S_G6PdhC_7_488))
G6PdhC_7_488_peak<-0
for(i in 76:85)
{G6PdhC_7_488_peak<- S_G6PdhC_7_488*aa7[76:85]+n_G6PdhC_7_488_peak}


slope_G6PdhC_7_568<-c(bb7[60]-bb7[59],
                    bb7[59]-bb7[58],
                    bb7[58]-bb7[57],
                    bb7[57]-bb7[56],
                    bb7[56]-bb7[55],
                    bb7[55]-bb7[54],
                    bb7[54]-bb7[53],
                    bb7[53]-bb7[52],
                    bb7[52]-bb7[51],
                    bb7[51]-bb7[50])
S_G6PdhC_7_568<-c(mean(slope_G6PdhC_7_568))
n_G6PdhC_7_568<-c(bb7[60]-(60*S_G6PdhC_7_568))
G6PdhC_7_568_base<-0
for(i in 51:60)
{G6PdhC_7_568_base<- S_G6PdhC_7_568*bb7[51:60]+n_G6PdhC_7_568}

G6PdhC_7_568_low<-0
for(i in 111:120)
{G6PdhC_7_568_low<- S_G6PdhC_7_568*bb7[111:120]+n_G6PdhC_7_568}

G6PdhC_7_568_peak<-0
for(i in 76:85)
{G6PdhC_7_568_peak<- S_G6PdhC_7_568*bb7[76:85]+n_G6PdhC_7_568}

G6PdhC_7_bpl<-c((G6PdhC_7_488_base/G6PdhC_7_568_base)/((G6PdhC_7_488_peak/G6PdhC_7_568_peak)/(G6PdhC_7_488_low/G6PdhC_7_568_low)))
G6PdhC_7_blp<-c((G6PdhC_7_488_base/G6PdhC_7_568_base)/((G6PdhC_7_488_low/G6PdhC_7_568_low)/(G6PdhC_7_488_peak/G6PdhC_7_568_peak)))
G6PdhC_7_btl<-c((G6PdhC_7_488_base/G6PdhC_7_568_base)/(G6PdhC_7_488_low/G6PdhC_7_568_low))
G6PdhC_7_btp<-c((G6PdhC_7_488_base/G6PdhC_7_568_base)/(G6PdhC_7_488_peak/G6PdhC_7_568_peak))

pHerry_G6PdhC_7_base<-c(mean(G6PdhC_7_488_base/G6PdhC_7_568_base)) 
pHerry_G6PdhC_7_bpl<-c(mean(G6PdhC_7_bpl))
pHerry_G6PdhC_7_blp<-c(mean(G6PdhC_7_blp))
pHerry_G6PdhC_7_btl<-c(mean(G6PdhC_7_btl))
pHerry_G6PdhC_7_btp<-c(mean(G6PdhC_7_btp))


a8<-c(G6Pdh[,29])
b8<-c(G6Pdh[,30])
c8<-c(G6Pdh[,31])
d8<-c(G6Pdh[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
G6PdhC_eyedisc_8<-c(aa8/bb8)


slope_G6PdhC_8_488<-c(aa8[60]-aa8[59],
                    aa8[59]-aa8[58],
                    aa8[58]-aa8[57],
                    aa8[57]-aa8[56],
                    aa8[56]-aa8[55],
                    aa8[55]-aa8[54],
                    aa8[54]-aa8[53],
                    aa8[53]-aa8[52],
                    aa8[52]-aa8[51],
                    aa8[51]-aa8[50])
S_G6PdhC_8_488<-c(mean(slope_G6PdhC_8_488))
n_G6PdhC_8_488_base<-c(aa8[60]-(60*S_G6PdhC_8_488))
G6PdhC_8_488_base<-0
for(i in 51:60)
{G6PdhC_8_488_base<- S_G6PdhC_8_488*aa8[51:60]+n_G6PdhC_8_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_8_488_low<-c(aa8[85]-(85*S_G6PdhC_8_488))
G6PdhC_8_488_low<-0
for(i in 111:120)
{G6PdhC_8_488_low<- S_G6PdhC_8_488*aa8[111:120]+n_G6PdhC_8_488_low}       # corrects all ten low values with the slope

n_G6PdhC_8_488_peak<-c(aa8[120]-(120*S_G6PdhC_8_488))
G6PdhC_8_488_peak<-0
for(i in 76:85)
{G6PdhC_8_488_peak<- S_G6PdhC_8_488*aa8[76:85]+n_G6PdhC_8_488_peak}


slope_G6PdhC_8_568<-c(bb8[60]-bb8[59],
                    bb8[59]-bb8[58],
                    bb8[58]-bb8[57],
                    bb8[57]-bb8[56],
                    bb8[56]-bb8[55],
                    bb8[55]-bb8[54],
                    bb8[54]-bb8[53],
                    bb8[53]-bb8[52],
                    bb8[52]-bb8[51],
                    bb8[51]-bb8[50])
S_G6PdhC_8_568<-c(mean(slope_G6PdhC_8_568))
n_G6PdhC_8_568<-c(bb8[60]-(60*S_G6PdhC_8_568))
G6PdhC_8_568_base<-0
for(i in 51:60)
{G6PdhC_8_568_base<- S_G6PdhC_8_568*bb8[51:60]+n_G6PdhC_8_568}

G6PdhC_8_568_low<-0
for(i in 111:120)
{G6PdhC_8_568_low<- S_G6PdhC_8_568*bb8[111:120]+n_G6PdhC_8_568}

G6PdhC_8_568_peak<-0
for(i in 76:85)
{G6PdhC_8_568_peak<- S_G6PdhC_8_568*bb8[76:85]+n_G6PdhC_8_568}

G6PdhC_8_bpl<-c((G6PdhC_8_488_base/G6PdhC_8_568_base)/((G6PdhC_8_488_peak/G6PdhC_8_568_peak)/(G6PdhC_8_488_low/G6PdhC_8_568_low)))
G6PdhC_8_blp<-c((G6PdhC_8_488_base/G6PdhC_8_568_base)/((G6PdhC_8_488_low/G6PdhC_8_568_low)/(G6PdhC_8_488_peak/G6PdhC_8_568_peak)))
G6PdhC_8_btl<-c((G6PdhC_8_488_base/G6PdhC_8_568_base)/(G6PdhC_8_488_low/G6PdhC_8_568_low))
G6PdhC_8_btp<-c((G6PdhC_8_488_base/G6PdhC_8_568_base)/(G6PdhC_8_488_peak/G6PdhC_8_568_peak))

pHerry_G6PdhC_8_base<-c(mean(G6PdhC_8_488_base/G6PdhC_8_568_base)) 
pHerry_G6PdhC_8_bpl<-c(mean(G6PdhC_8_bpl))
pHerry_G6PdhC_8_blp<-c(mean(G6PdhC_8_blp))
pHerry_G6PdhC_8_btl<-c(mean(G6PdhC_8_btl))
pHerry_G6PdhC_8_btp<-c(mean(G6PdhC_8_btp))


a9<-c(G6Pdh[,33])
b9<-c(G6Pdh[,34])
c9<-c(G6Pdh[,35])
d9<-c(G6Pdh[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
G6PdhC_eyedisc_9<-c(aa9/bb9)


slope_G6PdhC_9_488<-c(aa9[60]-aa9[59],
                    aa9[59]-aa9[58],
                    aa9[58]-aa9[57],
                    aa9[57]-aa9[56],
                    aa9[56]-aa9[55],
                    aa9[55]-aa9[54],
                    aa9[54]-aa9[53],
                    aa9[53]-aa9[52],
                    aa9[52]-aa9[51],
                    aa9[51]-aa9[50])
S_G6PdhC_9_488<-c(mean(slope_G6PdhC_9_488))
n_G6PdhC_9_488_base<-c(aa9[60]-(60*S_G6PdhC_9_488))
G6PdhC_9_488_base<-0
for(i in 51:60)
{G6PdhC_9_488_base<- S_G6PdhC_9_488*aa9[51:60]+n_G6PdhC_9_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_9_488_low<-c(aa9[85]-(85*S_G6PdhC_9_488))
G6PdhC_9_488_low<-0
for(i in 111:120)
{G6PdhC_9_488_low<- S_G6PdhC_9_488*aa9[111:120]+n_G6PdhC_9_488_low}       # corrects all ten low values with the slope

n_G6PdhC_9_488_peak<-c(aa9[120]-(120*S_G6PdhC_9_488))
G6PdhC_9_488_peak<-0
for(i in 76:85)
{G6PdhC_9_488_peak<- S_G6PdhC_9_488*aa9[76:85]+n_G6PdhC_9_488_peak}


slope_G6PdhC_9_568<-c(bb9[60]-bb9[59],
                    bb9[59]-bb9[58],
                    bb9[58]-bb9[57],
                    bb9[57]-bb9[56],
                    bb9[56]-bb9[55],
                    bb9[55]-bb9[54],
                    bb9[54]-bb9[53],
                    bb9[53]-bb9[52],
                    bb9[52]-bb9[51],
                    bb9[51]-bb9[50])
S_G6PdhC_9_568<-c(mean(slope_G6PdhC_9_568))
n_G6PdhC_9_568<-c(bb9[60]-(60*S_G6PdhC_9_568))
G6PdhC_9_568_base<-0
for(i in 51:60)
{G6PdhC_9_568_base<- S_G6PdhC_9_568*bb9[51:60]+n_G6PdhC_9_568}

G6PdhC_9_568_low<-0
for(i in 111:120)
{G6PdhC_9_568_low<- S_G6PdhC_9_568*bb9[111:120]+n_G6PdhC_9_568}

G6PdhC_9_568_peak<-0
for(i in 76:85)
{G6PdhC_9_568_peak<- S_G6PdhC_9_568*bb9[76:85]+n_G6PdhC_9_568}

G6PdhC_9_bpl<-c((G6PdhC_9_488_base/G6PdhC_9_568_base)/((G6PdhC_9_488_peak/G6PdhC_9_568_peak)/(G6PdhC_9_488_low/G6PdhC_9_568_low)))
G6PdhC_9_blp<-c((G6PdhC_9_488_base/G6PdhC_9_568_base)/((G6PdhC_9_488_low/G6PdhC_9_568_low)/(G6PdhC_9_488_peak/G6PdhC_9_568_peak)))
G6PdhC_9_btl<-c((G6PdhC_9_488_base/G6PdhC_9_568_base)/(G6PdhC_9_488_low/G6PdhC_9_568_low))
G6PdhC_9_btp<-c((G6PdhC_9_488_base/G6PdhC_9_568_base)/(G6PdhC_9_488_peak/G6PdhC_9_568_peak))

pHerry_G6PdhC_9_base<-c(mean(G6PdhC_9_488_base/G6PdhC_9_568_base)) 
pHerry_G6PdhC_9_bpl<-c(mean(G6PdhC_9_bpl))
pHerry_G6PdhC_9_blp<-c(mean(G6PdhC_9_blp))
pHerry_G6PdhC_9_btl<-c(mean(G6PdhC_9_btl))
pHerry_G6PdhC_9_btp<-c(mean(G6PdhC_9_btp))

a10<-c(G6Pdh[,37])
b10<-c(G6Pdh[,38])
c10<-c(G6Pdh[,39])
d10<-c(G6Pdh[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
G6PdhC_eyedisc_10<-c(aa10/bb10)


slope_G6PdhC_10_488<-c(aa10[60]-aa10[59],
                     aa10[59]-aa10[58],
                     aa10[58]-aa10[57],
                     aa10[57]-aa10[56],
                     aa10[56]-aa10[55],
                     aa10[55]-aa10[54],
                     aa10[54]-aa10[53],
                     aa10[53]-aa10[52],
                     aa10[52]-aa10[51],
                     aa10[51]-aa10[50])
S_G6PdhC_10_488<-c(mean(slope_G6PdhC_10_488))
n_G6PdhC_10_488_base<-c(aa10[60]-(60*S_G6PdhC_10_488))
G6PdhC_10_488_base<-0
for(i in 51:60)
{G6PdhC_10_488_base<- S_G6PdhC_10_488*aa10[51:60]+n_G6PdhC_10_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_10_488_low<-c(aa10[85]-(85*S_G6PdhC_10_488))
G6PdhC_10_488_low<-0
for(i in 111:120)
{G6PdhC_10_488_low<- S_G6PdhC_10_488*aa10[111:120]+n_G6PdhC_10_488_low}       # corrects all ten low values with the slope

n_G6PdhC_10_488_peak<-c(aa10[120]-(120*S_G6PdhC_10_488))
G6PdhC_10_488_peak<-0
for(i in 76:85)
{G6PdhC_10_488_peak<- S_G6PdhC_10_488*aa10[76:85]+n_G6PdhC_10_488_peak}


slope_G6PdhC_10_568<-c(bb10[60]-bb10[59],
                     bb10[59]-bb10[58],
                     bb10[58]-bb10[57],
                     bb10[57]-bb10[56],
                     bb10[56]-bb10[55],
                     bb10[55]-bb10[54],
                     bb10[54]-bb10[53],
                     bb10[53]-bb10[52],
                     bb10[52]-bb10[51],
                     bb10[51]-bb10[50])
S_G6PdhC_10_568<-c(mean(slope_G6PdhC_10_568))
n_G6PdhC_10_568<-c(bb10[60]-(60*S_G6PdhC_10_568))
G6PdhC_10_568_base<-0
for(i in 51:60)
{G6PdhC_10_568_base<- S_G6PdhC_10_568*bb10[51:60]+n_G6PdhC_10_568}

G6PdhC_10_568_low<-0
for(i in 111:120)
{G6PdhC_10_568_low<- S_G6PdhC_10_568*bb10[111:120]+n_G6PdhC_10_568}

G6PdhC_10_568_peak<-0
for(i in 76:85)
{G6PdhC_10_568_peak<- S_G6PdhC_10_568*bb10[76:85]+n_G6PdhC_10_568}

G6PdhC_10_bpl<-c((G6PdhC_10_488_base/G6PdhC_10_568_base)/((G6PdhC_10_488_peak/G6PdhC_10_568_peak)/(G6PdhC_10_488_low/G6PdhC_10_568_low)))
G6PdhC_10_blp<-c((G6PdhC_10_488_base/G6PdhC_10_568_base)/((G6PdhC_10_488_low/G6PdhC_10_568_low)/(G6PdhC_10_488_peak/G6PdhC_10_568_peak)))
G6PdhC_10_btl<-c((G6PdhC_10_488_base/G6PdhC_10_568_base)/(G6PdhC_10_488_low/G6PdhC_10_568_low))
G6PdhC_10_btp<-c((G6PdhC_10_488_base/G6PdhC_10_568_base)/(G6PdhC_10_488_peak/G6PdhC_10_568_peak))

pHerry_G6PdhC_10_base<-c(mean(G6PdhC_10_488_base/G6PdhC_10_568_base)) 
pHerry_G6PdhC_10_bpl<-c(mean(G6PdhC_10_bpl))
pHerry_G6PdhC_10_blp<-c(mean(G6PdhC_10_blp))
pHerry_G6PdhC_10_btl<-c(mean(G6PdhC_10_btl))
pHerry_G6PdhC_10_btp<-c(mean(G6PdhC_10_btp))

a11<-c(G6Pdh[,41])
b11<-c(G6Pdh[,42])
c11<-c(G6Pdh[,43])
d11<-c(G6Pdh[,44])
aa11<-c(a11-b11)
bb11<-c(c11-d11)
G6PdhC_eyedisc_11<-c(aa11/bb11)


slope_G6PdhC_11_488<-c(aa11[60]-aa11[59],
                     aa11[59]-aa11[58],
                     aa11[58]-aa11[57],
                     aa11[57]-aa11[56],
                     aa11[56]-aa11[55],
                     aa11[55]-aa11[54],
                     aa11[54]-aa11[53],
                     aa11[53]-aa11[52],
                     aa11[52]-aa11[51],
                     aa11[51]-aa11[50])
S_G6PdhC_11_488<-c(mean(slope_G6PdhC_11_488))
n_G6PdhC_11_488_base<-c(aa11[60]-(60*S_G6PdhC_11_488))
G6PdhC_11_488_base<-0
for(i in 51:60)
{G6PdhC_11_488_base<- S_G6PdhC_11_488*aa11[51:60]+n_G6PdhC_11_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_11_488_low<-c(aa11[85]-(85*S_G6PdhC_11_488))
G6PdhC_11_488_low<-0
for(i in 111:120)
{G6PdhC_11_488_low<- S_G6PdhC_11_488*aa11[111:120]+n_G6PdhC_11_488_low}       # corrects all ten low values with the slope

n_G6PdhC_11_488_peak<-c(aa11[120]-(120*S_G6PdhC_11_488))
G6PdhC_11_488_peak<-0
for(i in 76:85)
{G6PdhC_11_488_peak<- S_G6PdhC_11_488*aa11[76:85]+n_G6PdhC_11_488_peak}


slope_G6PdhC_11_568<-c(bb11[60]-bb11[59],
                     bb11[59]-bb11[58],
                     bb11[58]-bb11[57],
                     bb11[57]-bb11[56],
                     bb11[56]-bb11[55],
                     bb11[55]-bb11[54],
                     bb11[54]-bb11[53],
                     bb11[53]-bb11[52],
                     bb11[52]-bb11[51],
                     bb11[51]-bb11[50])
S_G6PdhC_11_568<-c(mean(slope_G6PdhC_11_568))
n_G6PdhC_11_568<-c(bb11[60]-(60*S_G6PdhC_11_568))
G6PdhC_11_568_base<-0
for(i in 51:60)
{G6PdhC_11_568_base<- S_G6PdhC_11_568*bb11[51:60]+n_G6PdhC_11_568}

G6PdhC_11_568_low<-0
for(i in 111:120)
{G6PdhC_11_568_low<- S_G6PdhC_11_568*bb11[111:120]+n_G6PdhC_11_568}

G6PdhC_11_568_peak<-0
for(i in 76:85)
{G6PdhC_11_568_peak<- S_G6PdhC_11_568*bb1[76:85]+n_G6PdhC_11_568}

G6PdhC_11_bpl<-c((G6PdhC_11_488_base/G6PdhC_11_568_base)/((G6PdhC_11_488_peak/G6PdhC_11_568_peak)/(G6PdhC_11_488_low/G6PdhC_11_568_low)))
G6PdhC_11_blp<-c((G6PdhC_11_488_base/G6PdhC_11_568_base)/((G6PdhC_11_488_low/G6PdhC_11_568_low)/(G6PdhC_11_488_peak/G6PdhC_11_568_peak)))
G6PdhC_11_btl<-c((G6PdhC_11_488_base/G6PdhC_11_568_base)/(G6PdhC_11_488_low/G6PdhC_11_568_low))
G6PdhC_11_btp<-c((G6PdhC_11_488_base/G6PdhC_11_568_base)/(G6PdhC_11_488_peak/G6PdhC_11_568_peak))

pHerry_G6PdhC_11_base<-c(mean(G6PdhC_11_488_base/G6PdhC_11_568_base)) 
pHerry_G6PdhC_11_bpl<-c(mean(G6PdhC_11_bpl))
pHerry_G6PdhC_11_blp<-c(mean(G6PdhC_11_blp))
pHerry_G6PdhC_11_btl<-c(mean(G6PdhC_11_btl))
pHerry_G6PdhC_11_btp<-c(mean(G6PdhC_11_btp))



a15<-c(G6Pdh[,57])
b15<-c(G6Pdh[,58])
c15<-c(G6Pdh[,59])
d15<-c(G6Pdh[,60])
aa15<-c(a15-b15)
bb15<-c(c15-d15)
G6PdhC_eyedisc_15<-c(aa15/bb15)


slope_G6PdhC_15_488<-c(aa15[60]-aa15[59],
                     aa15[59]-aa15[58],
                     aa15[58]-aa15[57],
                     aa15[57]-aa15[56],
                     aa15[56]-aa15[55],
                     aa15[55]-aa15[54],
                     aa15[54]-aa15[53],
                     aa15[53]-aa15[52],
                     aa15[52]-aa15[51],
                     aa15[51]-aa15[50])
S_G6PdhC_15_488<-c(mean(slope_G6PdhC_15_488))
n_G6PdhC_15_488_base<-c(aa15[60]-(60*S_G6PdhC_15_488))
G6PdhC_15_488_base<-0
for(i in 51:60)
{G6PdhC_15_488_base<- S_G6PdhC_15_488*aa15[51:60]+n_G6PdhC_15_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_15_488_low<-c(aa15[85]-(85*S_G6PdhC_15_488))
G6PdhC_15_488_low<-0
for(i in 111:120)
{G6PdhC_15_488_low<- S_G6PdhC_15_488*aa15[111:120]+n_G6PdhC_15_488_low}       # corrects all ten low values with the slope

n_G6PdhC_15_488_peak<-c(aa15[120]-(120*S_G6PdhC_15_488))
G6PdhC_15_488_peak<-0
for(i in 76:85)
{G6PdhC_15_488_peak<- S_G6PdhC_15_488*aa15[76:85]+n_G6PdhC_15_488_peak}


slope_G6PdhC_15_568<-c(bb15[60]-bb15[59],
                     bb15[59]-bb15[58],
                     bb15[58]-bb15[57],
                     bb15[57]-bb15[56],
                     bb15[56]-bb15[55],
                     bb15[55]-bb15[54],
                     bb15[54]-bb15[53],
                     bb15[53]-bb15[52],
                     bb15[52]-bb15[51],
                     bb15[51]-bb15[50])
S_G6PdhC_15_568<-c(mean(slope_G6PdhC_15_568))
n_G6PdhC_15_568<-c(bb15[60]-(60*S_G6PdhC_15_568))
G6PdhC_15_568_base<-0
for(i in 51:60)
{G6PdhC_15_568_base<- S_G6PdhC_15_568*bb15[51:60]+n_G6PdhC_15_568}

G6PdhC_15_568_low<-0
for(i in 111:120)
{G6PdhC_15_568_low<- S_G6PdhC_15_568*bb15[111:120]+n_G6PdhC_15_568}

G6PdhC_15_568_peak<-0
for(i in 76:85)
{G6PdhC_15_568_peak<- S_G6PdhC_15_568*bb15[76:85]+n_G6PdhC_15_568}

G6PdhC_15_bpl<-c((G6PdhC_15_488_base/G6PdhC_15_568_base)/((G6PdhC_15_488_peak/G6PdhC_15_568_peak)/(G6PdhC_15_488_low/G6PdhC_15_568_low)))
G6PdhC_15_blp<-c((G6PdhC_15_488_base/G6PdhC_15_568_base)/((G6PdhC_15_488_low/G6PdhC_15_568_low)/(G6PdhC_15_488_peak/G6PdhC_15_568_peak)))
G6PdhC_15_btl<-c((G6PdhC_15_488_base/G6PdhC_15_568_base)/(G6PdhC_15_488_low/G6PdhC_15_568_low))
G6PdhC_15_btp<-c((G6PdhC_15_488_base/G6PdhC_15_568_base)/(G6PdhC_15_488_peak/G6PdhC_15_568_peak))

pHerry_G6PdhC_15_base<-c(mean(G6PdhC_15_488_base/G6PdhC_15_568_base)) 
pHerry_G6PdhC_15_bpl<-c(mean(G6PdhC_15_bpl))
pHerry_G6PdhC_15_blp<-c(mean(G6PdhC_15_blp))
pHerry_G6PdhC_15_btl<-c(mean(G6PdhC_15_btl))
pHerry_G6PdhC_15_btp<-c(mean(G6PdhC_15_btp))

a16<-c(G6Pdh[,61])
b16<-c(G6Pdh[,62])
c16<-c(G6Pdh[,63])
d16<-c(G6Pdh[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
G6PdhC_eyedisc_16<-c(aa16/bb16)


slope_G6PdhC_16_488<-c(aa16[60]-aa16[59],
                      aa16[59]-aa16[58],
                      aa16[58]-aa16[57],
                      aa16[57]-aa16[56],
                      aa16[56]-aa16[55],
                      aa16[55]-aa16[54],
                      aa16[54]-aa16[53],
                      aa16[53]-aa16[52],
                      aa16[52]-aa16[51],
                      aa16[51]-aa16[50])
S_G6PdhC_16_488<-c(mean(slope_G6PdhC_16_488))
n_G6PdhC_16_488_base<-c(aa16[60]-(60*S_G6PdhC_16_488))
G6PdhC_16_488_base<-0
for(i in 51:60)
{G6PdhC_16_488_base<- S_G6PdhC_16_488*aa16[51:60]+n_G6PdhC_16_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_16_488_low<-c(aa16[85]-(85*S_G6PdhC_16_488))
G6PdhC_16_488_low<-0
for(i in 111:120)
{G6PdhC_16_488_low<- S_G6PdhC_16_488*aa16[111:120]+n_G6PdhC_16_488_low}       # corrects all ten low values with the slope

n_G6PdhC_16_488_peak<-c(aa16[120]-(120*S_G6PdhC_16_488))
G6PdhC_16_488_peak<-0
for(i in 76:85)
{G6PdhC_16_488_peak<- S_G6PdhC_16_488*aa16[76:85]+n_G6PdhC_16_488_peak}


slope_G6PdhC_16_568<-c(bb16[60]-bb16[59],
                      bb16[59]-bb16[58],
                      bb16[58]-bb16[57],
                      bb16[57]-bb16[56],
                      bb16[56]-bb16[55],
                      bb16[55]-bb16[54],
                      bb16[54]-bb16[53],
                      bb16[53]-bb16[52],
                      bb16[52]-bb16[51],
                      bb16[51]-bb16[50])
S_G6PdhC_16_568<-c(mean(slope_G6PdhC_16_568))
n_G6PdhC_16_568<-c(bb16[60]-(60*S_G6PdhC_16_568))
G6PdhC_16_568_base<-0
for(i in 51:60)
{G6PdhC_16_568_base<- S_G6PdhC_16_568*bb16[51:60]+n_G6PdhC_16_568}

G6PdhC_16_568_low<-0
for(i in 111:120)
{G6PdhC_16_568_low<- S_G6PdhC_16_568*bb16[111:120]+n_G6PdhC_16_568}

G6PdhC_16_568_peak<-0
for(i in 76:85)
{G6PdhC_16_568_peak<- S_G6PdhC_16_568*bb16[76:85]+n_G6PdhC_16_568}

G6PdhC_16_bpl<-c((G6PdhC_16_488_base/G6PdhC_16_568_base)/((G6PdhC_16_488_peak/G6PdhC_16_568_peak)/(G6PdhC_16_488_low/G6PdhC_16_568_low)))
G6PdhC_16_blp<-c((G6PdhC_16_488_base/G6PdhC_16_568_base)/((G6PdhC_16_488_low/G6PdhC_16_568_low)/(G6PdhC_16_488_peak/G6PdhC_16_568_peak)))
G6PdhC_16_btl<-c((G6PdhC_16_488_base/G6PdhC_16_568_base)/(G6PdhC_16_488_low/G6PdhC_16_568_low))
G6PdhC_16_btp<-c((G6PdhC_16_488_base/G6PdhC_16_568_base)/(G6PdhC_16_488_peak/G6PdhC_16_568_peak))

pHerry_G6PdhC_16_base<-c(mean(G6PdhC_16_488_base/G6PdhC_16_568_base)) 
pHerry_G6PdhC_16_bpl<-c(mean(G6PdhC_16_bpl))
pHerry_G6PdhC_16_blp<-c(mean(G6PdhC_16_blp))
pHerry_G6PdhC_16_btl<-c(mean(G6PdhC_16_btl))
pHerry_G6PdhC_16_btp<-c(mean(G6PdhC_16_btp))

a17<-c(G6Pdh[,65])
b17<-c(G6Pdh[,66])
c17<-c(G6Pdh[,67])
d17<-c(G6Pdh[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
G6PdhC_eyedisc_17<-c(aa17/bb17)


slope_G6PdhC_17_488<-c(aa17[60]-aa17[59],
                      aa17[59]-aa17[58],
                      aa17[58]-aa17[57],
                      aa17[57]-aa17[56],
                      aa17[56]-aa17[55],
                      aa17[55]-aa17[54],
                      aa17[54]-aa17[53],
                      aa17[53]-aa17[52],
                      aa17[52]-aa17[51],
                      aa17[51]-aa17[50])
S_G6PdhC_17_488<-c(mean(slope_G6PdhC_17_488))
n_G6PdhC_17_488_base<-c(aa17[60]-(60*S_G6PdhC_17_488))
G6PdhC_17_488_base<-0
for(i in 51:60)
{G6PdhC_17_488_base<- S_G6PdhC_17_488*aa17[51:60]+n_G6PdhC_17_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_17_488_low<-c(aa17[85]-(85*S_G6PdhC_17_488))
G6PdhC_17_488_low<-0
for(i in 111:120)
{G6PdhC_17_488_low<- S_G6PdhC_17_488*aa17[111:120]+n_G6PdhC_17_488_low}       # corrects all ten low values with the slope

n_G6PdhC_17_488_peak<-c(aa17[120]-(120*S_G6PdhC_17_488))
G6PdhC_17_488_peak<-0
for(i in 76:85)
{G6PdhC_17_488_peak<- S_G6PdhC_17_488*aa17[76:85]+n_G6PdhC_17_488_peak}


slope_G6PdhC_17_568<-c(bb17[60]-bb17[59],
                      bb17[59]-bb17[58],
                      bb17[58]-bb17[57],
                      bb17[57]-bb17[56],
                      bb17[56]-bb17[55],
                      bb17[55]-bb17[54],
                      bb17[54]-bb17[53],
                      bb17[53]-bb17[52],
                      bb17[52]-bb17[51],
                      bb17[51]-bb17[50])
S_G6PdhC_17_568<-c(mean(slope_G6PdhC_17_568))
n_G6PdhC_17_568<-c(bb17[60]-(60*S_G6PdhC_17_568))
G6PdhC_17_568_base<-0
for(i in 51:60)
{G6PdhC_17_568_base<- S_G6PdhC_17_568*bb17[51:60]+n_G6PdhC_17_568}

G6PdhC_17_568_low<-0
for(i in 111:120)
{G6PdhC_17_568_low<- S_G6PdhC_17_568*bb17[111:120]+n_G6PdhC_17_568}

G6PdhC_17_568_peak<-0
for(i in 76:85)
{G6PdhC_17_568_peak<- S_G6PdhC_17_568*bb17[76:85]+n_G6PdhC_17_568}

G6PdhC_17_bpl<-c((G6PdhC_17_488_base/G6PdhC_17_568_base)/((G6PdhC_17_488_peak/G6PdhC_17_568_peak)/(G6PdhC_17_488_low/G6PdhC_17_568_low)))
G6PdhC_17_blp<-c((G6PdhC_17_488_base/G6PdhC_17_568_base)/((G6PdhC_17_488_low/G6PdhC_17_568_low)/(G6PdhC_17_488_peak/G6PdhC_17_568_peak)))
G6PdhC_17_btl<-c((G6PdhC_17_488_base/G6PdhC_17_568_base)/(G6PdhC_17_488_low/G6PdhC_17_568_low))
G6PdhC_17_btp<-c((G6PdhC_17_488_base/G6PdhC_17_568_base)/(G6PdhC_17_488_peak/G6PdhC_17_568_peak))

pHerry_G6PdhC_17_base<-c(mean(G6PdhC_17_488_base/G6PdhC_17_568_base)) 
pHerry_G6PdhC_17_bpl<-c(mean(G6PdhC_17_bpl))
pHerry_G6PdhC_17_blp<-c(mean(G6PdhC_17_blp))
pHerry_G6PdhC_17_btl<-c(mean(G6PdhC_17_btl))
pHerry_G6PdhC_17_btp<-c(mean(G6PdhC_17_btp))

a18<-c(G6Pdh[,69])
b18<-c(G6Pdh[,70])
c18<-c(G6Pdh[,71])
d18<-c(G6Pdh[,72])
aa18<-c(a18-b18)
bb18<-c(c18-d18)
G6PdhC_eyedisc_18<-c(aa18/bb18)


slope_G6PdhC_18_488<-c(aa18[60]-aa18[59],
                      aa18[59]-aa18[58],
                      aa18[58]-aa18[57],
                      aa18[57]-aa18[56],
                      aa18[56]-aa18[55],
                      aa18[55]-aa18[54],
                      aa18[54]-aa18[53],
                      aa18[53]-aa18[52],
                      aa18[52]-aa18[51],
                      aa18[51]-aa18[50])
S_G6PdhC_18_488<-c(mean(slope_G6PdhC_18_488))
n_G6PdhC_18_488_base<-c(aa18[60]-(60*S_G6PdhC_18_488))
G6PdhC_18_488_base<-0
for(i in 51:60)
{G6PdhC_18_488_base<- S_G6PdhC_18_488*aa18[51:60]+n_G6PdhC_18_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_18_488_low<-c(aa18[85]-(85*S_G6PdhC_18_488))
G6PdhC_18_488_low<-0
for(i in 111:120)
{G6PdhC_18_488_low<- S_G6PdhC_18_488*aa18[111:120]+n_G6PdhC_18_488_low}       # corrects all ten low values with the slope

n_G6PdhC_18_488_peak<-c(aa18[120]-(120*S_G6PdhC_18_488))
G6PdhC_18_488_peak<-0
for(i in 76:85)
{G6PdhC_18_488_peak<- S_G6PdhC_18_488*aa18[76:85]+n_G6PdhC_18_488_peak}


slope_G6PdhC_18_568<-c(bb18[60]-bb18[59],
                      bb18[59]-bb18[58],
                      bb18[58]-bb18[57],
                      bb18[57]-bb18[56],
                      bb18[56]-bb18[55],
                      bb18[55]-bb18[54],
                      bb18[54]-bb18[53],
                      bb18[53]-bb18[52],
                      bb18[52]-bb18[51],
                      bb18[51]-bb18[50])
S_G6PdhC_18_568<-c(mean(slope_G6PdhC_18_568))
n_G6PdhC_18_568<-c(bb18[60]-(60*S_G6PdhC_18_568))
G6PdhC_18_568_base<-0
for(i in 51:60)
{G6PdhC_18_568_base<- S_G6PdhC_18_568*bb18[51:60]+n_G6PdhC_18_568}

G6PdhC_18_568_low<-0
for(i in 111:120)
{G6PdhC_18_568_low<- S_G6PdhC_18_568*bb18[111:120]+n_G6PdhC_18_568}

G6PdhC_18_568_peak<-0
for(i in 76:85)
{G6PdhC_18_568_peak<- S_G6PdhC_18_568*bb18[76:85]+n_G6PdhC_18_568}

G6PdhC_18_bpl<-c((G6PdhC_18_488_base/G6PdhC_18_568_base)/((G6PdhC_18_488_peak/G6PdhC_18_568_peak)/(G6PdhC_18_488_low/G6PdhC_18_568_low)))
G6PdhC_18_blp<-c((G6PdhC_18_488_base/G6PdhC_18_568_base)/((G6PdhC_18_488_low/G6PdhC_18_568_low)/(G6PdhC_18_488_peak/G6PdhC_18_568_peak)))
G6PdhC_18_btl<-c((G6PdhC_18_488_base/G6PdhC_18_568_base)/(G6PdhC_18_488_low/G6PdhC_18_568_low))
G6PdhC_18_btp<-c((G6PdhC_18_488_base/G6PdhC_18_568_base)/(G6PdhC_18_488_peak/G6PdhC_18_568_peak))

pHerry_G6PdhC_18_base<-c(mean(G6PdhC_18_488_base/G6PdhC_18_568_base)) 
pHerry_G6PdhC_18_bpl<-c(mean(G6PdhC_18_bpl))
pHerry_G6PdhC_18_blp<-c(mean(G6PdhC_18_blp))
pHerry_G6PdhC_18_btl<-c(mean(G6PdhC_18_btl))
pHerry_G6PdhC_18_btp<-c(mean(G6PdhC_18_btp))


a19<-c(G6Pdh[,73])
b19<-c(G6Pdh[,74])
c19<-c(G6Pdh[,75])
d19<-c(G6Pdh[,76])
aa19<-c(a19-b19)
bb19<-c(c19-d19)
G6PdhC_eyedisc_19<-c(aa19/bb19)


slope_G6PdhC_19_488<-c(aa19[60]-aa19[59],
                      aa19[59]-aa19[58],
                      aa19[58]-aa19[57],
                      aa19[57]-aa19[56],
                      aa19[56]-aa19[55],
                      aa19[55]-aa19[54],
                      aa19[54]-aa19[53],
                      aa19[53]-aa19[52],
                      aa19[52]-aa19[51],
                      aa19[51]-aa19[50])
S_G6PdhC_19_488<-c(mean(slope_G6PdhC_19_488))
n_G6PdhC_19_488_base<-c(aa19[60]-(60*S_G6PdhC_19_488))
G6PdhC_19_488_base<-0
for(i in 51:60)
{G6PdhC_19_488_base<- S_G6PdhC_19_488*aa19[51:60]+n_G6PdhC_19_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_19_488_low<-c(aa19[85]-(85*S_G6PdhC_19_488))
G6PdhC_19_488_low<-0
for(i in 111:120)
{G6PdhC_19_488_low<- S_G6PdhC_19_488*aa19[111:120]+n_G6PdhC_19_488_low}       # corrects all ten low values with the slope

n_G6PdhC_19_488_peak<-c(aa19[120]-(120*S_G6PdhC_19_488))
G6PdhC_19_488_peak<-0
for(i in 76:85)
{G6PdhC_19_488_peak<- S_G6PdhC_19_488*aa19[76:85]+n_G6PdhC_19_488_peak}


slope_G6PdhC_19_568<-c(bb19[60]-bb19[59],
                      bb19[59]-bb19[58],
                      bb19[58]-bb19[57],
                      bb19[57]-bb19[56],
                      bb19[56]-bb19[55],
                      bb19[55]-bb19[54],
                      bb19[54]-bb19[53],
                      bb19[53]-bb19[52],
                      bb19[52]-bb19[51],
                      bb19[51]-bb19[50])
S_G6PdhC_19_568<-c(mean(slope_G6PdhC_19_568))
n_G6PdhC_19_568<-c(bb19[60]-(60*S_G6PdhC_19_568))
G6PdhC_19_568_base<-0
for(i in 51:60)
{G6PdhC_19_568_base<- S_G6PdhC_19_568*bb19[51:60]+n_G6PdhC_19_568}

G6PdhC_19_568_low<-0
for(i in 111:120)
{G6PdhC_19_568_low<- S_G6PdhC_19_568*bb19[111:120]+n_G6PdhC_19_568}

G6PdhC_19_568_peak<-0
for(i in 76:85)
{G6PdhC_19_568_peak<- S_G6PdhC_19_568*bb19[76:85]+n_G6PdhC_19_568}

G6PdhC_19_bpl<-c((G6PdhC_19_488_base/G6PdhC_19_568_base)/((G6PdhC_19_488_peak/G6PdhC_19_568_peak)/(G6PdhC_19_488_low/G6PdhC_19_568_low)))
G6PdhC_19_blp<-c((G6PdhC_19_488_base/G6PdhC_19_568_base)/((G6PdhC_19_488_low/G6PdhC_19_568_low)/(G6PdhC_19_488_peak/G6PdhC_19_568_peak)))
G6PdhC_19_btl<-c((G6PdhC_19_488_base/G6PdhC_19_568_base)/(G6PdhC_19_488_low/G6PdhC_19_568_low))
G6PdhC_19_btp<-c((G6PdhC_19_488_base/G6PdhC_19_568_base)/(G6PdhC_19_488_peak/G6PdhC_19_568_peak))

pHerry_G6PdhC_19_base<-c(mean(G6PdhC_19_488_base/G6PdhC_19_568_base)) 
pHerry_G6PdhC_19_bpl<-c(mean(G6PdhC_19_bpl))
pHerry_G6PdhC_19_blp<-c(mean(G6PdhC_19_blp))
pHerry_G6PdhC_19_btl<-c(mean(G6PdhC_19_btl))
pHerry_G6PdhC_19_btp<-c(mean(G6PdhC_19_btp))

a20<-c(G6Pdh[,77])
b20<-c(G6Pdh[,78])
c20<-c(G6Pdh[,79])
d20<-c(G6Pdh[,80])
aa20<-c(a20-b20)
bb20<-c(c20-d20)
G6PdhC_eyedisc_20<-c(aa20/bb20)


slope_G6PdhC_20_488<-c(aa20[60]-aa20[59],
                     aa20[59]-aa20[58],
                     aa20[58]-aa20[57],
                     aa20[57]-aa20[56],
                     aa20[56]-aa20[55],
                     aa20[55]-aa20[54],
                     aa20[54]-aa20[53],
                     aa20[53]-aa20[52],
                     aa20[52]-aa20[51],
                     aa20[51]-aa20[50])
S_G6PdhC_20_488<-c(mean(slope_G6PdhC_20_488))
n_G6PdhC_20_488_base<-c(aa20[60]-(60*S_G6PdhC_20_488))
G6PdhC_20_488_base<-0
for(i in 51:60)
{G6PdhC_20_488_base<- S_G6PdhC_20_488*aa20[51:60]+n_G6PdhC_20_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_20_488_low<-c(aa20[85]-(85*S_G6PdhC_20_488))
G6PdhC_20_488_low<-0
for(i in 111:120)
{G6PdhC_20_488_low<- S_G6PdhC_20_488*aa20[111:120]+n_G6PdhC_20_488_low}       # corrects all ten low values with the slope

n_G6PdhC_20_488_peak<-c(aa20[120]-(120*S_G6PdhC_20_488))
G6PdhC_20_488_peak<-0
for(i in 76:85)
{G6PdhC_20_488_peak<- S_G6PdhC_20_488*aa20[76:85]+n_G6PdhC_20_488_peak}


slope_G6PdhC_20_568<-c(bb20[60]-bb20[59],
                     bb20[59]-bb20[58],
                     bb20[58]-bb20[57],
                     bb20[57]-bb20[56],
                     bb20[56]-bb20[55],
                     bb20[55]-bb20[54],
                     bb20[54]-bb20[53],
                     bb20[53]-bb20[52],
                     bb20[52]-bb20[51],
                     bb20[51]-bb20[50])
S_G6PdhC_20_568<-c(mean(slope_G6PdhC_20_568))
n_G6PdhC_20_568<-c(bb20[60]-(60*S_G6PdhC_20_568))
G6PdhC_20_568_base<-0
for(i in 51:60)
{G6PdhC_20_568_base<- S_G6PdhC_20_568*bb20[51:60]+n_G6PdhC_20_568}

G6PdhC_20_568_low<-0
for(i in 111:120)
{G6PdhC_20_568_low<- S_G6PdhC_20_568*bb20[111:120]+n_G6PdhC_20_568}

G6PdhC_20_568_peak<-0
for(i in 76:85)
{G6PdhC_20_568_peak<- S_G6PdhC_20_568*bb20[76:85]+n_G6PdhC_20_568}

G6PdhC_20_bpl<-c((G6PdhC_20_488_base/G6PdhC_20_568_base)/((G6PdhC_20_488_peak/G6PdhC_20_568_peak)/(G6PdhC_20_488_low/G6PdhC_20_568_low)))
G6PdhC_20_blp<-c((G6PdhC_20_488_base/G6PdhC_20_568_base)/((G6PdhC_20_488_low/G6PdhC_20_568_low)/(G6PdhC_20_488_peak/G6PdhC_20_568_peak)))
G6PdhC_20_btl<-c((G6PdhC_20_488_base/G6PdhC_20_568_base)/(G6PdhC_20_488_low/G6PdhC_20_568_low))
G6PdhC_20_btp<-c((G6PdhC_20_488_base/G6PdhC_20_568_base)/(G6PdhC_20_488_peak/G6PdhC_20_568_peak))

pHerry_G6PdhC_20_base<-c(mean(G6PdhC_20_488_base/G6PdhC_20_568_base)) 
pHerry_G6PdhC_20_bpl<-c(mean(G6PdhC_20_bpl))
pHerry_G6PdhC_20_blp<-c(mean(G6PdhC_20_blp))
pHerry_G6PdhC_20_btl<-c(mean(G6PdhC_20_btl))
pHerry_G6PdhC_20_btp<-c(mean(G6PdhC_20_btp))

a21<-c(G6Pdh[,81])
b21<-c(G6Pdh[,82])
c21<-c(G6Pdh[,83])
d21<-c(G6Pdh[,84])
aa21<-c(a21-b21)
bb21<-c(c21-d21)
G6PdhC_eyedisc_21<-c(aa21/bb21)


slope_G6PdhC_21_488<-c(aa21[60]-aa21[59],
                      aa21[59]-aa21[58],
                      aa21[58]-aa21[57],
                      aa21[57]-aa21[56],
                      aa21[56]-aa21[55],
                      aa21[55]-aa21[54],
                      aa21[54]-aa21[53],
                      aa21[53]-aa21[52],
                      aa21[52]-aa21[51],
                      aa21[51]-aa21[50])
S_G6PdhC_21_488<-c(mean(slope_G6PdhC_21_488))
n_G6PdhC_21_488_base<-c(aa21[60]-(60*S_G6PdhC_21_488))
G6PdhC_21_488_base<-0
for(i in 51:60)
{G6PdhC_21_488_base<- S_G6PdhC_21_488*aa21[51:60]+n_G6PdhC_21_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_21_488_low<-c(aa21[85]-(85*S_G6PdhC_21_488))
G6PdhC_21_488_low<-0
for(i in 111:120)
{G6PdhC_21_488_low<- S_G6PdhC_21_488*aa21[111:120]+n_G6PdhC_21_488_low}       # corrects all ten low values with the slope

n_G6PdhC_21_488_peak<-c(aa21[120]-(120*S_G6PdhC_21_488))
G6PdhC_21_488_peak<-0
for(i in 76:85)
{G6PdhC_21_488_peak<- S_G6PdhC_21_488*aa21[76:85]+n_G6PdhC_21_488_peak}


slope_G6PdhC_21_568<-c(bb21[60]-bb21[59],
                      bb21[59]-bb21[58],
                      bb21[58]-bb21[57],
                      bb21[57]-bb21[56],
                      bb21[56]-bb21[55],
                      bb21[55]-bb21[54],
                      bb21[54]-bb21[53],
                      bb21[53]-bb21[52],
                      bb21[52]-bb21[51],
                      bb21[51]-bb21[50])
S_G6PdhC_21_568<-c(mean(slope_G6PdhC_21_568))
n_G6PdhC_21_568<-c(bb21[60]-(60*S_G6PdhC_21_568))
G6PdhC_21_568_base<-0
for(i in 51:60)
{G6PdhC_21_568_base<- S_G6PdhC_21_568*bb21[51:60]+n_G6PdhC_21_568}

G6PdhC_21_568_low<-0
for(i in 111:120)
{G6PdhC_21_568_low<- S_G6PdhC_21_568*bb21[111:120]+n_G6PdhC_21_568}

G6PdhC_21_568_peak<-0
for(i in 76:85)
{G6PdhC_21_568_peak<- S_G6PdhC_21_568*bb21[76:85]+n_G6PdhC_21_568}

G6PdhC_21_bpl<-c((G6PdhC_21_488_base/G6PdhC_21_568_base)/((G6PdhC_21_488_peak/G6PdhC_21_568_peak)/(G6PdhC_21_488_low/G6PdhC_21_568_low)))
G6PdhC_21_blp<-c((G6PdhC_21_488_base/G6PdhC_21_568_base)/((G6PdhC_21_488_low/G6PdhC_21_568_low)/(G6PdhC_21_488_peak/G6PdhC_21_568_peak)))
G6PdhC_21_btl<-c((G6PdhC_21_488_base/G6PdhC_21_568_base)/(G6PdhC_21_488_low/G6PdhC_21_568_low))
G6PdhC_21_btp<-c((G6PdhC_21_488_base/G6PdhC_21_568_base)/(G6PdhC_21_488_peak/G6PdhC_21_568_peak))

pHerry_G6PdhC_21_base<-c(mean(G6PdhC_21_488_base/G6PdhC_21_568_base)) 
pHerry_G6PdhC_21_bpl<-c(mean(G6PdhC_21_bpl))
pHerry_G6PdhC_21_blp<-c(mean(G6PdhC_21_blp))
pHerry_G6PdhC_21_btl<-c(mean(G6PdhC_21_btl))
pHerry_G6PdhC_21_btp<-c(mean(G6PdhC_21_btp))


a22<-c(G6Pdh[,85])
b22<-c(G6Pdh[,86])
c22<-c(G6Pdh[,87])
d22<-c(G6Pdh[,88])
aa22<-c(a22-b22)
bb22<-c(c22-d22)
G6PdhC_eyedisc_22<-c(aa22/bb22)


slope_G6PdhC_22_488<-c(aa22[60]-aa22[59],
                     aa22[59]-aa22[58],
                     aa22[58]-aa22[57],
                     aa22[57]-aa22[56],
                     aa22[56]-aa22[55],
                     aa22[55]-aa22[54],
                     aa22[54]-aa22[53],
                     aa22[53]-aa22[52],
                     aa22[52]-aa22[51],
                     aa22[51]-aa22[50])
S_G6PdhC_22_488<-c(mean(slope_G6PdhC_22_488))
n_G6PdhC_22_488_base<-c(aa22[60]-(60*S_G6PdhC_22_488))
G6PdhC_22_488_base<-0
for(i in 51:60)
{G6PdhC_22_488_base<- S_G6PdhC_22_488*aa22[51:60]+n_G6PdhC_22_488_base}       # corrects all ten baseline values with the slope

n_G6PdhC_22_488_low<-c(aa22[85]-(85*S_G6PdhC_22_488))
G6PdhC_22_488_low<-0
for(i in 111:120)
{G6PdhC_22_488_low<- S_G6PdhC_22_488*aa22[111:120]+n_G6PdhC_22_488_low}       # corrects all ten low values with the slope

n_G6PdhC_22_488_peak<-c(aa22[120]-(120*S_G6PdhC_22_488))
G6PdhC_22_488_peak<-0
for(i in 76:85)
{G6PdhC_22_488_peak<- S_G6PdhC_22_488*aa22[76:85]+n_G6PdhC_22_488_peak}


slope_G6PdhC_22_568<-c(bb22[60]-bb22[59],
                     bb22[59]-bb22[58],
                     bb22[58]-bb22[57],
                     bb22[57]-bb22[56],
                     bb22[56]-bb22[55],
                     bb22[55]-bb22[54],
                     bb22[54]-bb22[53],
                     bb22[53]-bb22[52],
                     bb22[52]-bb22[51],
                     bb22[51]-bb22[50])
S_G6PdhC_22_568<-c(mean(slope_G6PdhC_22_568))
n_G6PdhC_22_568<-c(bb22[60]-(60*S_G6PdhC_22_568))
G6PdhC_22_568_base<-0
for(i in 51:60)
{G6PdhC_22_568_base<- S_G6PdhC_22_568*bb22[51:60]+n_G6PdhC_22_568}

G6PdhC_22_568_low<-0
for(i in 111:120)
{G6PdhC_22_568_low<- S_G6PdhC_22_568*bb22[111:120]+n_G6PdhC_22_568}

G6PdhC_22_568_peak<-0
for(i in 76:85)
{G6PdhC_22_568_peak<- S_G6PdhC_22_568*bb22[76:85]+n_G6PdhC_22_568}

G6PdhC_22_bpl<-c((G6PdhC_22_488_base/G6PdhC_22_568_base)/((G6PdhC_22_488_peak/G6PdhC_22_568_peak)/(G6PdhC_22_488_low/G6PdhC_22_568_low)))
G6PdhC_22_blp<-c((G6PdhC_22_488_base/G6PdhC_22_568_base)/((G6PdhC_22_488_low/G6PdhC_22_568_low)/(G6PdhC_22_488_peak/G6PdhC_22_568_peak)))
G6PdhC_22_btl<-c((G6PdhC_22_488_base/G6PdhC_22_568_base)/(G6PdhC_22_488_low/G6PdhC_22_568_low))
G6PdhC_22_btp<-c((G6PdhC_22_488_base/G6PdhC_22_568_base)/(G6PdhC_22_488_peak/G6PdhC_22_568_peak))

pHerry_G6PdhC_22_base<-c(mean(G6PdhC_22_488_base/G6PdhC_22_568_base)) 
pHerry_G6PdhC_22_bpl<-c(mean(G6PdhC_22_bpl))
pHerry_G6PdhC_22_blp<-c(mean(G6PdhC_22_blp))
pHerry_G6PdhC_22_btl<-c(mean(G6PdhC_22_btl))
pHerry_G6PdhC_22_btp<-c(mean(G6PdhC_22_btp))



pHerry_G6PdhC_time_course<-c(G6PdhC_eyedisc_1,G6PdhC_eyedisc_2,G6PdhC_eyedisc_3,G6PdhC_eyedisc_4,G6PdhC_eyedisc_5,G6PdhC_eyedisc_6,G6PdhC_eyedisc_7,G6PdhC_eyedisc_8,G6PdhC_eyedisc_9,G6PdhC_eyedisc_10,G6PdhC_eyedisc_11,G6PdhC_eyedisc_15,G6PdhC_eyedisc_16,G6PdhC_eyedisc_17,G6PdhC_eyedisc_18,G6PdhC_eyedisc_19,G6PdhC_eyedisc_20,G6PdhC_eyedisc_21,G6PdhC_eyedisc_22)
matpHerry_G6PdhC_time_course<-matrix(pHerry_G6PdhC_time_course,nrow=120,ncol=19)
mean_pHerry_G6PdhC_time_course<-c(rowMeans(matpHerry_G6PdhC_time_course))

pHerry_G6PdhC_base<-c(pHerry_G6PdhC_1_base,pHerry_G6PdhC_2_base,pHerry_G6PdhC_3_base,pHerry_G6PdhC_4_base,pHerry_G6PdhC_5_base,pHerry_G6PdhC_6_base,pHerry_G6PdhC_7_base,pHerry_G6PdhC_8_base,pHerry_G6PdhC_9_base,pHerry_G6PdhC_10_base,pHerry_G6PdhC_11_base,pHerry_G6PdhC_15_base,pHerry_G6PdhC_16_base,pHerry_G6PdhC_17_base,pHerry_G6PdhC_18_base,pHerry_G6PdhC_19_base,pHerry_G6PdhC_20_base,pHerry_G6PdhC_21_base,pHerry_G6PdhC_22_base)
