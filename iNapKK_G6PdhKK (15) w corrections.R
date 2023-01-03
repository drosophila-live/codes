a1<-c(G6Pdh[,1])  # creates a vector containing all 405 values for first eyedisc
b1<-c(G6Pdh[,2])  # creates a vector containing all 405 background values for first eyedisc
c1<-c(G6Pdh[,3])  # creates a vector containing all 568 values for first eyedisc
d1<-c(G6Pdh[,4])  # creates a vector containing all 568 background values for first eyedisc
aa1<-c(a1-b1)   # creates a BG subtracted vector for 405 channel
bb1<-c(c1-d1)   # creates a BG subtracted vector for 568 channel
G6PdhC_eyedisc_1<-c(aa1/bb1) # creates a first vector as a ratio, only important for time courses

slope_G6PdhC_1_405<-c(aa1[60]-aa1[59],
                    aa1[59]-aa1[58],
                    aa1[58]-aa1[57],
                    aa1[57]-aa1[56],
                    aa1[56]-aa1[55],
                    aa1[55]-aa1[54],
                    aa1[54]-aa1[53],
                    aa1[53]-aa1[52],
                    aa1[52]-aa1[51],
                    aa1[51]-aa1[50])                               # creates a vector containing last ten values after last condition(i.e.buffer change) to be considered linear bleaching
S_G6PdhC_1_405<-c(mean(slope_G6PdhC_1_405))                             # calculates the mean slope resulting from these ten values
n_G6PdhC_1_405_base<-c(aa1[60]-(60*S_G6PdhC_1_405))                     # calculates a theoretical linear zero time point value to use for linear correction
G6PdhC_1_405_base<-0
for(i in 51:60)
{G6PdhC_1_405_base<- S_G6PdhC_1_405*aa1[51:60]+n_G6PdhC_1_405_base}        # corrects all ten baseline values with the slope of a theoretical linear fluorescence decay

n_G6PdhC_1_405_low<-c(aa1[85]-(85*S_G6PdhC_1_405))
G6PdhC_1_405_low<-0
for(i in 123:132)
{G6PdhC_1_405_low<- S_G6PdhC_1_405*aa1[123:132]+n_G6PdhC_1_405_low}          # corrects all ten low values with the slope of theoretical linear fluorescence decay

n_G6PdhC_1_405_peak<-c(aa1[132]-(132*S_G6PdhC_1_405))
G6PdhC_1_405_peak<-0
for(i in 76:85)
{G6PdhC_1_405_peak<- S_G6PdhC_1_405*aa1[76:85]+n_G6PdhC_1_405_peak}      # corrects all ten peak values with the slope of theoretical linear fluorescence decay


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
for(i in 123:132)
{G6PdhC_1_568_low<- S_G6PdhC_1_568*bb1[123:132]+n_G6PdhC_1_568}

G6PdhC_1_568_peak<-0
for(i in 76:85)
{G6PdhC_1_568_peak<- S_G6PdhC_1_568*bb1[76:85]+n_G6PdhC_1_568}

G6PdhC_1_bpl<-c((G6PdhC_1_405_base/G6PdhC_1_568_base)/((G6PdhC_1_405_peak/G6PdhC_1_568_peak)/(G6PdhC_1_405_low/G6PdhC_1_568_low)))   # see below
G6PdhC_1_blp<-c((G6PdhC_1_405_base/G6PdhC_1_568_base)/((G6PdhC_1_405_low/G6PdhC_1_568_low)/(G6PdhC_1_405_peak/G6PdhC_1_568_peak)))
G6PdhC_1_btl<-c((G6PdhC_1_405_base/G6PdhC_1_568_base)/(G6PdhC_1_405_low/G6PdhC_1_568_low))
G6PdhC_1_btp<-c((G6PdhC_1_405_base/G6PdhC_1_568_base)/(G6PdhC_1_405_peak/G6PdhC_1_568_peak))

iNap_G6PdhC_1_base<-c(mean(G6PdhC_1_405_base/G6PdhC_1_568_base))       # creates a vector containing deltaF to F of calculated from the ten baseline values
iNap_G6PdhC_1_bpl<-c(mean(G6PdhC_1_bpl))                            # baseline in relation to peak divided by low
iNap_G6PdhC_1_blp<-c(mean(G6PdhC_1_blp))                            # baseline in relation to low divided by peak
iNap_G6PdhC_1_btl<-c(mean(G6PdhC_1_btl))                            # baseline in relation to peak indicating a potentially altered baseline by a maximum that can be reached
iNap_G6PdhC_1_btp<-c(mean(G6PdhC_1_btp))                            # baseline in realation to low indicating a potentially altered baseline by how well the cells can recover

a2<-c(G6Pdh[,5])
b2<-c(G6Pdh[,6])
c2<-c(G6Pdh[,7])
d2<-c(G6Pdh[,8])
aa2<-c(a2-b2)
bb2<-c(c2-d2)
G6PdhC_eyedisc_2<-c(aa2/bb2)


slope_G6PdhC_2_405<-c(aa2[60]-aa2[59],
                    aa2[59]-aa2[58],
                    aa2[58]-aa2[57],
                    aa2[57]-aa2[56],
                    aa2[56]-aa2[55],
                    aa2[55]-aa2[54],
                    aa2[54]-aa2[53],
                    aa2[53]-aa2[52],
                    aa2[52]-aa2[51],
                    aa2[51]-aa2[50])
S_G6PdhC_2_405<-c(mean(slope_G6PdhC_2_405))
n_G6PdhC_2_405_base<-c(aa2[60]-(60*S_G6PdhC_2_405))
G6PdhC_2_405_base<-0
for(i in 51:60)
{G6PdhC_2_405_base<- S_G6PdhC_2_405*aa2[51:60]+n_G6PdhC_2_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_2_405_low<-c(aa2[85]-(85*S_G6PdhC_2_405))
G6PdhC_2_405_low<-0
for(i in 123:132)
{G6PdhC_2_405_low<- S_G6PdhC_2_405*aa2[123:132]+n_G6PdhC_2_405_low}       # corrects all ten low values with the slope

n_G6PdhC_2_405_peak<-c(aa2[132]-(132*S_G6PdhC_2_405))
G6PdhC_2_405_peak<-0
for(i in 76:85)
{G6PdhC_2_405_peak<- S_G6PdhC_2_405*aa2[76:85]+n_G6PdhC_2_405_peak}


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
for(i in 123:132)
{G6PdhC_2_568_low<- S_G6PdhC_2_568*bb2[123:132]+n_G6PdhC_2_568}

G6PdhC_2_568_peak<-0
for(i in 76:85)
{G6PdhC_2_568_peak<- S_G6PdhC_2_568*bb2[76:85]+n_G6PdhC_2_568}

G6PdhC_2_bpl<-c((G6PdhC_2_405_base/G6PdhC_2_568_base)/((G6PdhC_2_405_peak/G6PdhC_2_568_peak)/(G6PdhC_2_405_low/G6PdhC_2_568_low)))
G6PdhC_2_blp<-c((G6PdhC_2_405_base/G6PdhC_2_568_base)/((G6PdhC_2_405_low/G6PdhC_2_568_low)/(G6PdhC_2_405_peak/G6PdhC_2_568_peak)))
G6PdhC_2_btl<-c((G6PdhC_2_405_base/G6PdhC_2_568_base)/(G6PdhC_2_405_low/G6PdhC_2_568_low))
G6PdhC_2_btp<-c((G6PdhC_2_405_base/G6PdhC_2_568_base)/(G6PdhC_2_405_peak/G6PdhC_2_568_peak))

iNap_G6PdhC_2_base<-c(mean(G6PdhC_2_405_base/G6PdhC_2_568_base)) 
iNap_G6PdhC_2_bpl<-c(mean(G6PdhC_2_bpl))
iNap_G6PdhC_2_blp<-c(mean(G6PdhC_2_blp))
iNap_G6PdhC_2_btl<-c(mean(G6PdhC_2_btl))
iNap_G6PdhC_2_btp<-c(mean(G6PdhC_2_btp))

a3<-c(G6Pdh[,9])
b3<-c(G6Pdh[,10])
c3<-c(G6Pdh[,11])
d3<-c(G6Pdh[,12])
aa3<-c(a3-b3)
bb3<-c(c3-d3)
G6PdhC_eyedisc_3<-c(aa3/bb3)


slope_G6PdhC_3_405<-c(aa3[60]-aa3[59],
                    aa3[59]-aa3[58],
                    aa3[58]-aa3[57],
                    aa3[57]-aa3[56],
                    aa3[56]-aa3[55],
                    aa3[55]-aa3[54],
                    aa3[54]-aa3[53],
                    aa3[53]-aa3[52],
                    aa3[52]-aa3[51],
                    aa3[51]-aa3[50])
S_G6PdhC_3_405<-c(mean(slope_G6PdhC_3_405))
n_G6PdhC_3_405_base<-c(aa3[60]-(60*S_G6PdhC_3_405))
G6PdhC_3_405_base<-0
for(i in 51:60)
{G6PdhC_3_405_base<- S_G6PdhC_3_405*aa3[51:60]+n_G6PdhC_3_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_3_405_low<-c(aa3[85]-(85*S_G6PdhC_3_405))
G6PdhC_3_405_low<-0
for(i in 123:132)
{G6PdhC_3_405_low<- S_G6PdhC_3_405*aa3[123:132]+n_G6PdhC_3_405_low}       # corrects all ten low values with the slope

n_G6PdhC_3_405_peak<-c(aa3[132]-(132*S_G6PdhC_3_405))
G6PdhC_3_405_peak<-0
for(i in 76:85)
{G6PdhC_3_405_peak<- S_G6PdhC_3_405*aa3[76:85]+n_G6PdhC_3_405_peak}


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
for(i in 123:132)
{G6PdhC_3_568_low<- S_G6PdhC_3_568*bb3[123:132]+n_G6PdhC_3_568}

G6PdhC_3_568_peak<-0
for(i in 76:85)
{G6PdhC_3_568_peak<- S_G6PdhC_3_568*bb3[76:85]+n_G6PdhC_3_568}

G6PdhC_3_bpl<-c((G6PdhC_3_405_base/G6PdhC_3_568_base)/((G6PdhC_3_405_peak/G6PdhC_3_568_peak)/(G6PdhC_3_405_low/G6PdhC_3_568_low)))
G6PdhC_3_blp<-c((G6PdhC_3_405_base/G6PdhC_3_568_base)/((G6PdhC_3_405_low/G6PdhC_3_568_low)/(G6PdhC_3_405_peak/G6PdhC_3_568_peak)))
G6PdhC_3_btl<-c((G6PdhC_3_405_base/G6PdhC_3_568_base)/(G6PdhC_3_405_low/G6PdhC_3_568_low))
G6PdhC_3_btp<-c((G6PdhC_3_405_base/G6PdhC_3_568_base)/(G6PdhC_3_405_peak/G6PdhC_3_568_peak))

iNap_G6PdhC_3_base<-c(mean(G6PdhC_3_405_base/G6PdhC_3_568_base)) 
iNap_G6PdhC_3_bpl<-c(mean(G6PdhC_3_bpl))
iNap_G6PdhC_3_blp<-c(mean(G6PdhC_3_blp))
iNap_G6PdhC_3_btl<-c(mean(G6PdhC_3_btl))
iNap_G6PdhC_3_btp<-c(mean(G6PdhC_3_btp))

a4<-c(G6Pdh[,13])
b4<-c(G6Pdh[,14])
c4<-c(G6Pdh[,15])
d4<-c(G6Pdh[,16])
aa4<-c(a4-b4)
bb4<-c(c4-d4)
G6PdhC_eyedisc_4<-c(aa4/bb4)


slope_G6PdhC_4_405<-c(aa4[60]-aa4[59],
                    aa4[59]-aa4[58],
                    aa4[58]-aa4[57],
                    aa4[57]-aa4[56],
                    aa4[56]-aa4[55],
                    aa4[55]-aa4[54],
                    aa4[54]-aa4[53],
                    aa4[53]-aa4[52],
                    aa4[52]-aa4[51],
                    aa4[51]-aa4[50])
S_G6PdhC_4_405<-c(mean(slope_G6PdhC_4_405))
n_G6PdhC_4_405_base<-c(aa4[60]-(60*S_G6PdhC_4_405))
G6PdhC_4_405_base<-0
for(i in 51:60)
{G6PdhC_4_405_base<- S_G6PdhC_4_405*aa4[51:60]+n_G6PdhC_4_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_4_405_low<-c(aa4[85]-(85*S_G6PdhC_4_405))
G6PdhC_4_405_low<-0
for(i in 123:132)
{G6PdhC_4_405_low<- S_G6PdhC_4_405*aa4[123:132]+n_G6PdhC_4_405_low}       # corrects all ten low values with the slope

n_G6PdhC_4_405_peak<-c(aa4[132]-(132*S_G6PdhC_4_405))
G6PdhC_4_405_peak<-0
for(i in 76:85)
{G6PdhC_4_405_peak<- S_G6PdhC_4_405*aa4[76:85]+n_G6PdhC_4_405_peak}


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
for(i in 123:132)
{G6PdhC_4_568_low<- S_G6PdhC_4_568*bb4[123:132]+n_G6PdhC_4_568}

G6PdhC_4_568_peak<-0
for(i in 76:85)
{G6PdhC_4_568_peak<- S_G6PdhC_4_568*bb4[76:85]+n_G6PdhC_4_568}

G6PdhC_4_bpl<-c((G6PdhC_4_405_base/G6PdhC_4_568_base)/((G6PdhC_4_405_peak/G6PdhC_4_568_peak)/(G6PdhC_4_405_low/G6PdhC_4_568_low)))
G6PdhC_4_blp<-c((G6PdhC_4_405_base/G6PdhC_4_568_base)/((G6PdhC_4_405_low/G6PdhC_4_568_low)/(G6PdhC_4_405_peak/G6PdhC_4_568_peak)))
G6PdhC_4_btl<-c((G6PdhC_4_405_base/G6PdhC_4_568_base)/(G6PdhC_4_405_low/G6PdhC_4_568_low))
G6PdhC_4_btp<-c((G6PdhC_4_405_base/G6PdhC_4_568_base)/(G6PdhC_4_405_peak/G6PdhC_4_568_peak))

iNap_G6PdhC_4_base<-c(mean(G6PdhC_4_405_base/G6PdhC_4_568_base)) 
iNap_G6PdhC_4_bpl<-c(mean(G6PdhC_4_bpl))
iNap_G6PdhC_4_blp<-c(mean(G6PdhC_4_blp))
iNap_G6PdhC_4_btl<-c(mean(G6PdhC_4_btl))
iNap_G6PdhC_4_btp<-c(mean(G6PdhC_4_btp))

a5<-c(G6Pdh[,17])
b5<-c(G6Pdh[,18])
c5<-c(G6Pdh[,19])
d5<-c(G6Pdh[,20])
aa5<-c(a5-b5)
bb5<-c(c5-d5)
G6PdhC_eyedisc_5<-c(aa5/bb5)


slope_G6PdhC_5_405<-c(aa5[60]-aa5[59],
                    aa5[59]-aa5[58],
                    aa5[58]-aa5[57],
                    aa5[57]-aa5[56],
                    aa5[56]-aa5[55],
                    aa5[55]-aa5[54],
                    aa5[54]-aa5[53],
                    aa5[53]-aa5[52],
                    aa5[52]-aa5[51],
                    aa5[51]-aa5[50])
S_G6PdhC_5_405<-c(mean(slope_G6PdhC_5_405))
n_G6PdhC_5_405_base<-c(aa5[60]-(60*S_G6PdhC_5_405))
G6PdhC_5_405_base<-0
for(i in 51:60)
{G6PdhC_5_405_base<- S_G6PdhC_5_405*aa5[51:60]+n_G6PdhC_5_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_5_405_low<-c(aa5[85]-(85*S_G6PdhC_5_405))
G6PdhC_5_405_low<-0
for(i in 123:132)
{G6PdhC_5_405_low<- S_G6PdhC_5_405*aa5[123:132]+n_G6PdhC_5_405_low}       # corrects all ten low values with the slope

n_G6PdhC_5_405_peak<-c(aa5[132]-(132*S_G6PdhC_5_405))
G6PdhC_5_405_peak<-0
for(i in 76:85)
{G6PdhC_5_405_peak<- S_G6PdhC_5_405*aa5[76:85]+n_G6PdhC_5_405_peak}


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
for(i in 123:132)
{G6PdhC_5_568_low<- S_G6PdhC_5_568*bb5[123:132]+n_G6PdhC_5_568}

G6PdhC_5_568_peak<-0
for(i in 76:85)
{G6PdhC_5_568_peak<- S_G6PdhC_5_568*bb5[76:85]+n_G6PdhC_5_568}

G6PdhC_5_bpl<-c((G6PdhC_5_405_base/G6PdhC_5_568_base)/((G6PdhC_5_405_peak/G6PdhC_5_568_peak)/(G6PdhC_5_405_low/G6PdhC_5_568_low)))
G6PdhC_5_blp<-c((G6PdhC_5_405_base/G6PdhC_5_568_base)/((G6PdhC_5_405_low/G6PdhC_5_568_low)/(G6PdhC_5_405_peak/G6PdhC_5_568_peak)))
G6PdhC_5_btl<-c((G6PdhC_5_405_base/G6PdhC_5_568_base)/(G6PdhC_5_405_low/G6PdhC_5_568_low))
G6PdhC_5_btp<-c((G6PdhC_5_405_base/G6PdhC_5_568_base)/(G6PdhC_5_405_peak/G6PdhC_5_568_peak))

iNap_G6PdhC_5_base<-c(mean(G6PdhC_5_405_base/G6PdhC_5_568_base)) 
iNap_G6PdhC_5_bpl<-c(mean(G6PdhC_5_bpl))
iNap_G6PdhC_5_blp<-c(mean(G6PdhC_5_blp))
iNap_G6PdhC_5_btl<-c(mean(G6PdhC_5_btl))
iNap_G6PdhC_5_btp<-c(mean(G6PdhC_5_btp))

a6<-c(G6Pdh[,21])
b6<-c(G6Pdh[,22])
c6<-c(G6Pdh[,23])
d6<-c(G6Pdh[,24])
aa6<-c(a6-b6)
bb6<-c(c6-d6)
G6PdhC_eyedisc_6<-c(aa6/bb6)


slope_G6PdhC_6_405<-c(aa6[60]-aa6[59],
                    aa6[59]-aa6[58],
                    aa6[58]-aa6[57],
                    aa6[57]-aa6[56],
                    aa6[56]-aa6[55],
                    aa6[55]-aa6[54],
                    aa6[54]-aa6[53],
                    aa6[53]-aa6[52],
                    aa6[52]-aa6[51],
                    aa6[51]-aa6[50])
S_G6PdhC_6_405<-c(mean(slope_G6PdhC_6_405))
n_G6PdhC_6_405_base<-c(aa6[60]-(60*S_G6PdhC_6_405))
G6PdhC_6_405_base<-0
for(i in 51:60)
{G6PdhC_6_405_base<- S_G6PdhC_6_405*aa6[51:60]+n_G6PdhC_6_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_6_405_low<-c(aa6[85]-(85*S_G6PdhC_6_405))
G6PdhC_6_405_low<-0
for(i in 123:132)
{G6PdhC_6_405_low<- S_G6PdhC_6_405*aa6[123:132]+n_G6PdhC_6_405_low}       # corrects all ten low values with the slope

n_G6PdhC_6_405_peak<-c(aa6[132]-(132*S_G6PdhC_6_405))
G6PdhC_6_405_peak<-0
for(i in 76:85)
{G6PdhC_6_405_peak<- S_G6PdhC_6_405*aa6[76:85]+n_G6PdhC_6_405_peak}


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
for(i in 123:132)
{G6PdhC_6_568_low<- S_G6PdhC_6_568*bb6[123:132]+n_G6PdhC_6_568}

G6PdhC_6_568_peak<-0
for(i in 76:85)
{G6PdhC_6_568_peak<- S_G6PdhC_6_568*bb6[76:85]+n_G6PdhC_6_568}

G6PdhC_6_bpl<-c((G6PdhC_6_405_base/G6PdhC_6_568_base)/((G6PdhC_6_405_peak/G6PdhC_6_568_peak)/(G6PdhC_6_405_low/G6PdhC_6_568_low)))
G6PdhC_6_blp<-c((G6PdhC_6_405_base/G6PdhC_6_568_base)/((G6PdhC_6_405_low/G6PdhC_6_568_low)/(G6PdhC_6_405_peak/G6PdhC_6_568_peak)))
G6PdhC_6_btl<-c((G6PdhC_6_405_base/G6PdhC_6_568_base)/(G6PdhC_6_405_low/G6PdhC_6_568_low))
G6PdhC_6_btp<-c((G6PdhC_6_405_base/G6PdhC_6_568_base)/(G6PdhC_6_405_peak/G6PdhC_6_568_peak))

iNap_G6PdhC_6_base<-c(mean(G6PdhC_6_405_base/G6PdhC_6_568_base)) 
iNap_G6PdhC_6_bpl<-c(mean(G6PdhC_6_bpl))
iNap_G6PdhC_6_blp<-c(mean(G6PdhC_6_blp))
iNap_G6PdhC_6_btl<-c(mean(G6PdhC_6_btl))
iNap_G6PdhC_6_btp<-c(mean(G6PdhC_6_btp))

a7<-c(G6Pdh[,25])
b7<-c(G6Pdh[,26])
c7<-c(G6Pdh[,27])
d7<-c(G6Pdh[,28])
aa7<-c(a7-b7)
bb7<-c(c7-d7)
G6PdhC_eyedisc_7<-c(aa7/bb7)


slope_G6PdhC_7_405<-c(aa7[60]-aa7[59],
                    aa7[59]-aa7[58],
                    aa7[58]-aa7[57],
                    aa7[57]-aa7[56],
                    aa7[56]-aa7[55],
                    aa7[55]-aa7[54],
                    aa7[54]-aa7[53],
                    aa7[53]-aa7[52],
                    aa7[52]-aa7[51],
                    aa7[51]-aa7[50])
S_G6PdhC_7_405<-c(mean(slope_G6PdhC_7_405))
n_G6PdhC_7_405_base<-c(aa7[60]-(60*S_G6PdhC_7_405))
G6PdhC_7_405_base<-0
for(i in 51:60)
{G6PdhC_7_405_base<- S_G6PdhC_7_405*aa7[51:60]+n_G6PdhC_7_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_7_405_low<-c(aa7[85]-(85*S_G6PdhC_7_405))
G6PdhC_7_405_low<-0
for(i in 123:132)
{G6PdhC_7_405_low<- S_G6PdhC_7_405*aa7[123:132]+n_G6PdhC_7_405_low}       # corrects all ten low values with the slope

n_G6PdhC_7_405_peak<-c(aa7[132]-(132*S_G6PdhC_7_405))
G6PdhC_7_405_peak<-0
for(i in 76:85)
{G6PdhC_7_405_peak<- S_G6PdhC_7_405*aa7[76:85]+n_G6PdhC_7_405_peak}


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
for(i in 123:132)
{G6PdhC_7_568_low<- S_G6PdhC_7_568*bb7[123:132]+n_G6PdhC_7_568}

G6PdhC_7_568_peak<-0
for(i in 76:85)
{G6PdhC_7_568_peak<- S_G6PdhC_7_568*bb7[76:85]+n_G6PdhC_7_568}

G6PdhC_7_bpl<-c((G6PdhC_7_405_base/G6PdhC_7_568_base)/((G6PdhC_7_405_peak/G6PdhC_7_568_peak)/(G6PdhC_7_405_low/G6PdhC_7_568_low)))
G6PdhC_7_blp<-c((G6PdhC_7_405_base/G6PdhC_7_568_base)/((G6PdhC_7_405_low/G6PdhC_7_568_low)/(G6PdhC_7_405_peak/G6PdhC_7_568_peak)))
G6PdhC_7_btl<-c((G6PdhC_7_405_base/G6PdhC_7_568_base)/(G6PdhC_7_405_low/G6PdhC_7_568_low))
G6PdhC_7_btp<-c((G6PdhC_7_405_base/G6PdhC_7_568_base)/(G6PdhC_7_405_peak/G6PdhC_7_568_peak))

iNap_G6PdhC_7_base<-c(mean(G6PdhC_7_405_base/G6PdhC_7_568_base)) 
iNap_G6PdhC_7_bpl<-c(mean(G6PdhC_7_bpl))
iNap_G6PdhC_7_blp<-c(mean(G6PdhC_7_blp))
iNap_G6PdhC_7_btl<-c(mean(G6PdhC_7_btl))
iNap_G6PdhC_7_btp<-c(mean(G6PdhC_7_btp))


a8<-c(G6Pdh[,29])
b8<-c(G6Pdh[,30])
c8<-c(G6Pdh[,31])
d8<-c(G6Pdh[,32])
aa8<-c(a8-b8)
bb8<-c(c8-d8)
G6PdhC_eyedisc_8<-c(aa8/bb8)


slope_G6PdhC_8_405<-c(aa8[60]-aa8[59],
                    aa8[59]-aa8[58],
                    aa8[58]-aa8[57],
                    aa8[57]-aa8[56],
                    aa8[56]-aa8[55],
                    aa8[55]-aa8[54],
                    aa8[54]-aa8[53],
                    aa8[53]-aa8[52],
                    aa8[52]-aa8[51],
                    aa8[51]-aa8[50])
S_G6PdhC_8_405<-c(mean(slope_G6PdhC_8_405))
n_G6PdhC_8_405_base<-c(aa8[60]-(60*S_G6PdhC_8_405))
G6PdhC_8_405_base<-0
for(i in 51:60)
{G6PdhC_8_405_base<- S_G6PdhC_8_405*aa8[51:60]+n_G6PdhC_8_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_8_405_low<-c(aa8[85]-(85*S_G6PdhC_8_405))
G6PdhC_8_405_low<-0
for(i in 123:132)
{G6PdhC_8_405_low<- S_G6PdhC_8_405*aa8[123:132]+n_G6PdhC_8_405_low}       # corrects all ten low values with the slope

n_G6PdhC_8_405_peak<-c(aa8[132]-(132*S_G6PdhC_8_405))
G6PdhC_8_405_peak<-0
for(i in 76:85)
{G6PdhC_8_405_peak<- S_G6PdhC_8_405*aa8[76:85]+n_G6PdhC_8_405_peak}


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
for(i in 123:132)
{G6PdhC_8_568_low<- S_G6PdhC_8_568*bb8[123:132]+n_G6PdhC_8_568}

G6PdhC_8_568_peak<-0
for(i in 76:85)
{G6PdhC_8_568_peak<- S_G6PdhC_8_568*bb8[76:85]+n_G6PdhC_8_568}

G6PdhC_8_bpl<-c((G6PdhC_8_405_base/G6PdhC_8_568_base)/((G6PdhC_8_405_peak/G6PdhC_8_568_peak)/(G6PdhC_8_405_low/G6PdhC_8_568_low)))
G6PdhC_8_blp<-c((G6PdhC_8_405_base/G6PdhC_8_568_base)/((G6PdhC_8_405_low/G6PdhC_8_568_low)/(G6PdhC_8_405_peak/G6PdhC_8_568_peak)))
G6PdhC_8_btl<-c((G6PdhC_8_405_base/G6PdhC_8_568_base)/(G6PdhC_8_405_low/G6PdhC_8_568_low))
G6PdhC_8_btp<-c((G6PdhC_8_405_base/G6PdhC_8_568_base)/(G6PdhC_8_405_peak/G6PdhC_8_568_peak))

iNap_G6PdhC_8_base<-c(mean(G6PdhC_8_405_base/G6PdhC_8_568_base)) 
iNap_G6PdhC_8_bpl<-c(mean(G6PdhC_8_bpl))
iNap_G6PdhC_8_blp<-c(mean(G6PdhC_8_blp))
iNap_G6PdhC_8_btl<-c(mean(G6PdhC_8_btl))
iNap_G6PdhC_8_btp<-c(mean(G6PdhC_8_btp))


a9<-c(G6Pdh[,33])
b9<-c(G6Pdh[,34])
c9<-c(G6Pdh[,35])
d9<-c(G6Pdh[,36])
aa9<-c(a9-b9)
bb9<-c(c9-d9)
G6PdhC_eyedisc_9<-c(aa9/bb9)


slope_G6PdhC_9_405<-c(aa9[60]-aa9[59],
                    aa9[59]-aa9[58],
                    aa9[58]-aa9[57],
                    aa9[57]-aa9[56],
                    aa9[56]-aa9[55],
                    aa9[55]-aa9[54],
                    aa9[54]-aa9[53],
                    aa9[53]-aa9[52],
                    aa9[52]-aa9[51],
                    aa9[51]-aa9[50])
S_G6PdhC_9_405<-c(mean(slope_G6PdhC_9_405))
n_G6PdhC_9_405_base<-c(aa9[60]-(60*S_G6PdhC_9_405))
G6PdhC_9_405_base<-0
for(i in 51:60)
{G6PdhC_9_405_base<- S_G6PdhC_9_405*aa9[51:60]+n_G6PdhC_9_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_9_405_low<-c(aa9[85]-(85*S_G6PdhC_9_405))
G6PdhC_9_405_low<-0
for(i in 123:132)
{G6PdhC_9_405_low<- S_G6PdhC_9_405*aa9[123:132]+n_G6PdhC_9_405_low}       # corrects all ten low values with the slope

n_G6PdhC_9_405_peak<-c(aa9[132]-(132*S_G6PdhC_9_405))
G6PdhC_9_405_peak<-0
for(i in 76:85)
{G6PdhC_9_405_peak<- S_G6PdhC_9_405*aa9[76:85]+n_G6PdhC_9_405_peak}


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
for(i in 123:132)
{G6PdhC_9_568_low<- S_G6PdhC_9_568*bb9[123:132]+n_G6PdhC_9_568}

G6PdhC_9_568_peak<-0
for(i in 76:85)
{G6PdhC_9_568_peak<- S_G6PdhC_9_568*bb9[76:85]+n_G6PdhC_9_568}

G6PdhC_9_bpl<-c((G6PdhC_9_405_base/G6PdhC_9_568_base)/((G6PdhC_9_405_peak/G6PdhC_9_568_peak)/(G6PdhC_9_405_low/G6PdhC_9_568_low)))
G6PdhC_9_blp<-c((G6PdhC_9_405_base/G6PdhC_9_568_base)/((G6PdhC_9_405_low/G6PdhC_9_568_low)/(G6PdhC_9_405_peak/G6PdhC_9_568_peak)))
G6PdhC_9_btl<-c((G6PdhC_9_405_base/G6PdhC_9_568_base)/(G6PdhC_9_405_low/G6PdhC_9_568_low))
G6PdhC_9_btp<-c((G6PdhC_9_405_base/G6PdhC_9_568_base)/(G6PdhC_9_405_peak/G6PdhC_9_568_peak))

iNap_G6PdhC_9_base<-c(mean(G6PdhC_9_405_base/G6PdhC_9_568_base)) 
iNap_G6PdhC_9_bpl<-c(mean(G6PdhC_9_bpl))
iNap_G6PdhC_9_blp<-c(mean(G6PdhC_9_blp))
iNap_G6PdhC_9_btl<-c(mean(G6PdhC_9_btl))
iNap_G6PdhC_9_btp<-c(mean(G6PdhC_9_btp))

a10<-c(G6Pdh[,37])
b10<-c(G6Pdh[,38])
c10<-c(G6Pdh[,39])
d10<-c(G6Pdh[,40])
aa10<-c(a10-b10)
bb10<-c(c10-d10)
G6PdhC_eyedisc_10<-c(aa10/bb10)


slope_G6PdhC_10_405<-c(aa10[60]-aa10[59],
                     aa10[59]-aa10[58],
                     aa10[58]-aa10[57],
                     aa10[57]-aa10[56],
                     aa10[56]-aa10[55],
                     aa10[55]-aa10[54],
                     aa10[54]-aa10[53],
                     aa10[53]-aa10[52],
                     aa10[52]-aa10[51],
                     aa10[51]-aa10[50])
S_G6PdhC_10_405<-c(mean(slope_G6PdhC_10_405))
n_G6PdhC_10_405_base<-c(aa10[60]-(60*S_G6PdhC_10_405))
G6PdhC_10_405_base<-0
for(i in 51:60)
{G6PdhC_10_405_base<- S_G6PdhC_10_405*aa10[51:60]+n_G6PdhC_10_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_10_405_low<-c(aa10[85]-(85*S_G6PdhC_10_405))
G6PdhC_10_405_low<-0
for(i in 123:132)
{G6PdhC_10_405_low<- S_G6PdhC_10_405*aa10[123:132]+n_G6PdhC_10_405_low}       # corrects all ten low values with the slope

n_G6PdhC_10_405_peak<-c(aa10[132]-(132*S_G6PdhC_10_405))
G6PdhC_10_405_peak<-0
for(i in 76:85)
{G6PdhC_10_405_peak<- S_G6PdhC_10_405*aa10[76:85]+n_G6PdhC_10_405_peak}


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
for(i in 123:132)
{G6PdhC_10_568_low<- S_G6PdhC_10_568*bb10[123:132]+n_G6PdhC_10_568}

G6PdhC_10_568_peak<-0
for(i in 76:85)
{G6PdhC_10_568_peak<- S_G6PdhC_10_568*bb10[76:85]+n_G6PdhC_10_568}

G6PdhC_10_bpl<-c((G6PdhC_10_405_base/G6PdhC_10_568_base)/((G6PdhC_10_405_peak/G6PdhC_10_568_peak)/(G6PdhC_10_405_low/G6PdhC_10_568_low)))
G6PdhC_10_blp<-c((G6PdhC_10_405_base/G6PdhC_10_568_base)/((G6PdhC_10_405_low/G6PdhC_10_568_low)/(G6PdhC_10_405_peak/G6PdhC_10_568_peak)))
G6PdhC_10_btl<-c((G6PdhC_10_405_base/G6PdhC_10_568_base)/(G6PdhC_10_405_low/G6PdhC_10_568_low))
G6PdhC_10_btp<-c((G6PdhC_10_405_base/G6PdhC_10_568_base)/(G6PdhC_10_405_peak/G6PdhC_10_568_peak))

iNap_G6PdhC_10_base<-c(mean(G6PdhC_10_405_base/G6PdhC_10_568_base)) 
iNap_G6PdhC_10_bpl<-c(mean(G6PdhC_10_bpl))
iNap_G6PdhC_10_blp<-c(mean(G6PdhC_10_blp))
iNap_G6PdhC_10_btl<-c(mean(G6PdhC_10_btl))
iNap_G6PdhC_10_btp<-c(mean(G6PdhC_10_btp))



a12<-c(G6Pdh[,45])
b12<-c(G6Pdh[,46])
c12<-c(G6Pdh[,47])
d12<-c(G6Pdh[,48])
aa12<-c(a12-b12)
bb12<-c(c12-d12)
G6PdhC_eyedisc_12<-c(aa12/bb12)

slope_G6PdhC_12_405<-c(aa12[60]-aa12[59],
                     aa12[59]-aa12[58],
                     aa12[58]-aa12[57],
                     aa12[57]-aa12[56],
                     aa12[56]-aa12[55],
                     aa12[55]-aa12[54],
                     aa12[54]-aa12[53],
                     aa12[53]-aa12[52],
                     aa12[52]-aa12[51],
                     aa12[51]-aa12[50])
S_G6PdhC_12_405<-c(mean(slope_G6PdhC_12_405))
n_G6PdhC_12_405_base<-c(aa12[60]-(60*S_G6PdhC_12_405))
G6PdhC_12_405_base<-0
for(i in 51:60)
{G6PdhC_12_405_base<- S_G6PdhC_12_405*aa12[51:60]+n_G6PdhC_12_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_12_405_low<-c(aa12[85]-(85*S_G6PdhC_12_405))
G6PdhC_12_405_low<-0
for(i in 123:132)
{G6PdhC_12_405_low<- S_G6PdhC_12_405*aa12[123:132]+n_G6PdhC_12_405_low}       # corrects all ten low values with the slope

n_G6PdhC_12_405_peak<-c(aa12[132]-(132*S_G6PdhC_12_405))
G6PdhC_12_405_peak<-0
for(i in 76:85)
{G6PdhC_12_405_peak<- S_G6PdhC_12_405*aa12[76:85]+n_G6PdhC_12_405_peak}


slope_G6PdhC_12_568<-c(bb12[60]-bb12[59],
                     bb12[59]-bb12[58],
                     bb12[58]-bb12[57],
                     bb12[57]-bb12[56],
                     bb12[56]-bb12[55],
                     bb12[55]-bb12[54],
                     bb12[54]-bb12[53],
                     bb12[53]-bb12[52],
                     bb12[52]-bb12[51],
                     bb12[51]-bb12[50])
S_G6PdhC_12_568<-c(mean(slope_G6PdhC_12_568))
n_G6PdhC_12_568<-c(bb12[60]-(60*S_G6PdhC_12_568))
G6PdhC_12_568_base<-0
for(i in 51:60)
{G6PdhC_12_568_base<- S_G6PdhC_12_568*bb12[51:60]+n_G6PdhC_12_568}

G6PdhC_12_568_low<-0
for(i in 123:132)
{G6PdhC_12_568_low<- S_G6PdhC_12_568*bb12[123:132]+n_G6PdhC_12_568}

G6PdhC_12_568_peak<-0
for(i in 76:85)
{G6PdhC_12_568_peak<- S_G6PdhC_12_568*bb12[76:85]+n_G6PdhC_12_568}

G6PdhC_12_bpl<-c((G6PdhC_12_405_base/G6PdhC_12_568_base)/((G6PdhC_12_405_peak/G6PdhC_12_568_peak)/(G6PdhC_12_405_low/G6PdhC_12_568_low)))
G6PdhC_12_blp<-c((G6PdhC_12_405_base/G6PdhC_12_568_base)/((G6PdhC_12_405_low/G6PdhC_12_568_low)/(G6PdhC_12_405_peak/G6PdhC_12_568_peak)))
G6PdhC_12_btl<-c((G6PdhC_12_405_base/G6PdhC_12_568_base)/(G6PdhC_12_405_low/G6PdhC_12_568_low))
G6PdhC_12_btp<-c((G6PdhC_12_405_base/G6PdhC_12_568_base)/(G6PdhC_12_405_peak/G6PdhC_12_568_peak))

iNap_G6PdhC_12_base<-c(mean(G6PdhC_12_405_base/G6PdhC_12_568_base)) 
iNap_G6PdhC_12_bpl<-c(mean(G6PdhC_12_bpl))
iNap_G6PdhC_12_blp<-c(mean(G6PdhC_12_blp))
iNap_G6PdhC_12_btl<-c(mean(G6PdhC_12_btl))
iNap_G6PdhC_12_btp<-c(mean(G6PdhC_12_btp))

a13<-c(G6Pdh[,49])
b13<-c(G6Pdh[,50])
c13<-c(G6Pdh[,51])
d13<-c(G6Pdh[,52])
aa13<-c(a13-b13)
bb13<-c(c13-d13)
G6PdhC_eyedisc_13<-c(aa13/bb13)


slope_G6PdhC_13_405<-c(aa13[60]-aa13[59],
                     aa13[59]-aa13[58],
                     aa13[58]-aa13[57],
                     aa13[57]-aa13[56],
                     aa13[56]-aa13[55],
                     aa13[55]-aa13[54],
                     aa13[54]-aa13[53],
                     aa13[53]-aa13[52],
                     aa13[52]-aa13[51],
                     aa13[51]-aa13[50])
S_G6PdhC_13_405<-c(mean(slope_G6PdhC_13_405))
n_G6PdhC_13_405_base<-c(aa13[60]-(60*S_G6PdhC_13_405))
G6PdhC_13_405_base<-0
for(i in 51:60)
{G6PdhC_13_405_base<- S_G6PdhC_13_405*aa13[51:60]+n_G6PdhC_13_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_13_405_low<-c(aa13[85]-(85*S_G6PdhC_13_405))
G6PdhC_13_405_low<-0
for(i in 123:132)
{G6PdhC_13_405_low<- S_G6PdhC_13_405*aa13[123:132]+n_G6PdhC_13_405_low}       # corrects all ten low values with the slope

n_G6PdhC_13_405_peak<-c(aa13[132]-(132*S_G6PdhC_13_405))
G6PdhC_13_405_peak<-0
for(i in 76:85)
{G6PdhC_13_405_peak<- S_G6PdhC_13_405*aa13[76:85]+n_G6PdhC_13_405_peak}


slope_G6PdhC_13_568<-c(bb13[60]-bb13[59],
                     bb13[59]-bb13[58],
                     bb13[58]-bb13[57],
                     bb13[57]-bb13[56],
                     bb13[56]-bb13[55],
                     bb13[55]-bb13[54],
                     bb13[54]-bb13[53],
                     bb13[53]-bb13[52],
                     bb13[52]-bb13[51],
                     bb13[51]-bb13[50])
S_G6PdhC_13_568<-c(mean(slope_G6PdhC_13_568))
n_G6PdhC_13_568<-c(bb13[60]-(60*S_G6PdhC_13_568))
G6PdhC_13_568_base<-0
for(i in 51:60)
{G6PdhC_13_568_base<- S_G6PdhC_13_568*bb13[51:60]+n_G6PdhC_13_568}

G6PdhC_13_568_low<-0
for(i in 123:132)
{G6PdhC_13_568_low<- S_G6PdhC_13_568*bb13[123:132]+n_G6PdhC_13_568}

G6PdhC_13_568_peak<-0
for(i in 76:85)
{G6PdhC_13_568_peak<- S_G6PdhC_13_568*bb13[76:85]+n_G6PdhC_13_568}


G6PdhC_13_bpl<-c((G6PdhC_13_405_base/G6PdhC_13_568_base)/((G6PdhC_13_405_peak/G6PdhC_13_568_peak)/(G6PdhC_13_405_low/G6PdhC_13_568_low)))
G6PdhC_13_blp<-c((G6PdhC_13_405_base/G6PdhC_13_568_base)/((G6PdhC_13_405_low/G6PdhC_13_568_low)/(G6PdhC_13_405_peak/G6PdhC_13_568_peak)))
G6PdhC_13_btl<-c((G6PdhC_13_405_base/G6PdhC_13_568_base)/(G6PdhC_13_405_low/G6PdhC_13_568_low))
G6PdhC_13_btp<-c((G6PdhC_13_405_base/G6PdhC_13_568_base)/(G6PdhC_13_405_peak/G6PdhC_13_568_peak))

iNap_G6PdhC_13_base<-c(mean(G6PdhC_13_405_base/G6PdhC_13_568_base)) 
iNap_G6PdhC_13_bpl<-c(mean(G6PdhC_13_bpl))
iNap_G6PdhC_13_blp<-c(mean(G6PdhC_13_blp))
iNap_G6PdhC_13_btl<-c(mean(G6PdhC_13_btl))
iNap_G6PdhC_13_btp<-c(mean(G6PdhC_13_btp))


a14<-c(G6Pdh[,53])
b14<-c(G6Pdh[,54])
c14<-c(G6Pdh[,55])
d14<-c(G6Pdh[,56])
aa14<-c(a14-b14)
bb14<-c(c14-d14)
G6PdhC_eyedisc_14<-c(aa14/bb14)


slope_G6PdhC_14_405<-c(aa14[60]-aa14[59],
                     aa14[59]-aa14[58],
                     aa14[58]-aa14[57],
                     aa14[57]-aa14[56],
                     aa14[56]-aa14[55],
                     aa14[55]-aa14[54],
                     aa14[54]-aa14[53],
                     aa14[53]-aa14[52],
                     aa14[52]-aa14[51],
                     aa14[51]-aa14[50])
S_G6PdhC_14_405<-c(mean(slope_G6PdhC_14_405))
n_G6PdhC_14_405_base<-c(aa14[60]-(60*S_G6PdhC_14_405))
G6PdhC_14_405_base<-0
for(i in 51:60)
{G6PdhC_14_405_base<- S_G6PdhC_14_405*aa14[51:60]+n_G6PdhC_14_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_14_405_low<-c(aa14[85]-(85*S_G6PdhC_14_405))
G6PdhC_14_405_low<-0
for(i in 123:132)
{G6PdhC_14_405_low<- S_G6PdhC_14_405*aa14[123:132]+n_G6PdhC_14_405_low}       # corrects all ten low values with the slope

n_G6PdhC_14_405_peak<-c(aa14[132]-(132*S_G6PdhC_14_405))
G6PdhC_14_405_peak<-0
for(i in 76:85)
{G6PdhC_14_405_peak<- S_G6PdhC_14_405*aa14[76:85]+n_G6PdhC_14_405_peak}


slope_G6PdhC_14_568<-c(bb14[60]-bb14[59],
                     bb14[59]-bb14[58],
                     bb14[58]-bb14[57],
                     bb14[57]-bb14[56],
                     bb14[56]-bb14[55],
                     bb14[55]-bb14[54],
                     bb14[54]-bb14[53],
                     bb14[53]-bb14[52],
                     bb14[52]-bb14[51],
                     bb14[51]-bb14[50])
S_G6PdhC_14_568<-c(mean(slope_G6PdhC_14_568))
n_G6PdhC_14_568<-c(bb14[60]-(60*S_G6PdhC_14_568))
G6PdhC_14_568_base<-0
for(i in 51:60)
{G6PdhC_14_568_base<- S_G6PdhC_14_568*bb14[51:60]+n_G6PdhC_14_568}

G6PdhC_14_568_low<-0
for(i in 123:132)
{G6PdhC_14_568_low<- S_G6PdhC_14_568*bb14[123:132]+n_G6PdhC_14_568}

G6PdhC_14_568_peak<-0
for(i in 76:85)
{G6PdhC_14_568_peak<- S_G6PdhC_14_568*bb14[76:85]+n_G6PdhC_14_568}

G6PdhC_14_bpl<-c((G6PdhC_14_405_base/G6PdhC_14_568_base)/((G6PdhC_14_405_peak/G6PdhC_14_568_peak)/(G6PdhC_14_405_low/G6PdhC_14_568_low)))
G6PdhC_14_blp<-c((G6PdhC_14_405_base/G6PdhC_14_568_base)/((G6PdhC_14_405_low/G6PdhC_14_568_low)/(G6PdhC_14_405_peak/G6PdhC_14_568_peak)))
G6PdhC_14_btl<-c((G6PdhC_14_405_base/G6PdhC_14_568_base)/(G6PdhC_14_405_low/G6PdhC_14_568_low))
G6PdhC_14_btp<-c((G6PdhC_14_405_base/G6PdhC_14_568_base)/(G6PdhC_14_405_peak/G6PdhC_14_568_peak))

iNap_G6PdhC_14_base<-c(mean(G6PdhC_14_405_base/G6PdhC_14_568_base)) 
iNap_G6PdhC_14_bpl<-c(mean(G6PdhC_14_bpl))
iNap_G6PdhC_14_blp<-c(mean(G6PdhC_14_blp))
iNap_G6PdhC_14_btl<-c(mean(G6PdhC_14_btl))
iNap_G6PdhC_14_btp<-c(mean(G6PdhC_14_btp))



a16<-c(G6Pdh[,61])
b16<-c(G6Pdh[,62])
c16<-c(G6Pdh[,63])
d16<-c(G6Pdh[,64])
aa16<-c(a16-b16)
bb16<-c(c16-d16)
G6PdhC_eyedisc_16<-c(aa16/bb16)


slope_G6PdhC_16_405<-c(aa16[60]-aa16[59],
                     aa16[59]-aa16[58],
                     aa16[58]-aa16[57],
                     aa16[57]-aa16[56],
                     aa16[56]-aa16[55],
                     aa16[55]-aa16[54],
                     aa16[54]-aa16[53],
                     aa16[53]-aa16[52],
                     aa16[52]-aa16[51],
                     aa16[51]-aa16[50])
S_G6PdhC_16_405<-c(mean(slope_G6PdhC_16_405))
n_G6PdhC_16_405_base<-c(aa16[60]-(60*S_G6PdhC_16_405))
G6PdhC_16_405_base<-0
for(i in 51:60)
{G6PdhC_16_405_base<- S_G6PdhC_16_405*aa16[51:60]+n_G6PdhC_16_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_16_405_low<-c(aa16[85]-(85*S_G6PdhC_16_405))
G6PdhC_16_405_low<-0
for(i in 123:132)
{G6PdhC_16_405_low<- S_G6PdhC_16_405*aa16[123:132]+n_G6PdhC_16_405_low}       # corrects all ten low values with the slope

n_G6PdhC_16_405_peak<-c(aa16[132]-(132*S_G6PdhC_16_405))
G6PdhC_16_405_peak<-0
for(i in 76:85)
{G6PdhC_16_405_peak<- S_G6PdhC_16_405*aa16[76:85]+n_G6PdhC_16_405_peak}


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
for(i in 123:132)
{G6PdhC_16_568_low<- S_G6PdhC_16_568*bb16[123:132]+n_G6PdhC_16_568}

G6PdhC_16_568_peak<-0
for(i in 76:85)
{G6PdhC_16_568_peak<- S_G6PdhC_16_568*bb16[76:85]+n_G6PdhC_16_568}

G6PdhC_16_bpl<-c((G6PdhC_16_405_base/G6PdhC_16_568_base)/((G6PdhC_16_405_peak/G6PdhC_16_568_peak)/(G6PdhC_16_405_low/G6PdhC_16_568_low)))
G6PdhC_16_blp<-c((G6PdhC_16_405_base/G6PdhC_16_568_base)/((G6PdhC_16_405_low/G6PdhC_16_568_low)/(G6PdhC_16_405_peak/G6PdhC_16_568_peak)))
G6PdhC_16_btl<-c((G6PdhC_16_405_base/G6PdhC_16_568_base)/(G6PdhC_16_405_low/G6PdhC_16_568_low))
G6PdhC_16_btp<-c((G6PdhC_16_405_base/G6PdhC_16_568_base)/(G6PdhC_16_405_peak/G6PdhC_16_568_peak))

iNap_G6PdhC_16_base<-c(mean(G6PdhC_16_405_base/G6PdhC_16_568_base)) 
iNap_G6PdhC_16_bpl<-c(mean(G6PdhC_16_bpl))
iNap_G6PdhC_16_blp<-c(mean(G6PdhC_16_blp))
iNap_G6PdhC_16_btl<-c(mean(G6PdhC_16_btl))
iNap_G6PdhC_16_btp<-c(mean(G6PdhC_16_btp))

a17<-c(G6Pdh[,65])
b17<-c(G6Pdh[,66])
c17<-c(G6Pdh[,67])
d17<-c(G6Pdh[,68])
aa17<-c(a17-b17)
bb17<-c(c17-d17)
G6PdhC_eyedisc_17<-c(aa17/bb17)


slope_G6PdhC_17_405<-c(aa17[60]-aa17[59],
                     aa17[59]-aa17[58],
                     aa17[58]-aa17[57],
                     aa17[57]-aa17[56],
                     aa17[56]-aa17[55],
                     aa17[55]-aa17[54],
                     aa17[54]-aa17[53],
                     aa17[53]-aa17[52],
                     aa17[52]-aa17[51],
                     aa17[51]-aa17[50])
S_G6PdhC_17_405<-c(mean(slope_G6PdhC_17_405))
n_G6PdhC_17_405_base<-c(aa17[60]-(60*S_G6PdhC_17_405))
G6PdhC_17_405_base<-0
for(i in 51:60)
{G6PdhC_17_405_base<- S_G6PdhC_17_405*aa17[51:60]+n_G6PdhC_17_405_base}       # corrects all ten baseline values with the slope

n_G6PdhC_17_405_low<-c(aa17[85]-(85*S_G6PdhC_17_405))
G6PdhC_17_405_low<-0
for(i in 123:132)
{G6PdhC_17_405_low<- S_G6PdhC_17_405*aa17[123:132]+n_G6PdhC_17_405_low}       # corrects all ten low values with the slope

n_G6PdhC_17_405_peak<-c(aa17[132]-(132*S_G6PdhC_17_405))
G6PdhC_17_405_peak<-0
for(i in 76:85)
{G6PdhC_17_405_peak<- S_G6PdhC_17_405*aa17[76:85]+n_G6PdhC_17_405_peak}


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
for(i in 123:132)
{G6PdhC_17_568_low<- S_G6PdhC_17_568*bb17[123:132]+n_G6PdhC_17_568}

G6PdhC_17_568_peak<-0
for(i in 76:85)
{G6PdhC_17_568_peak<- S_G6PdhC_17_568*bb17[76:85]+n_G6PdhC_17_568}

G6PdhC_17_bpl<-c((G6PdhC_17_405_base/G6PdhC_17_568_base)/((G6PdhC_17_405_peak/G6PdhC_17_568_peak)/(G6PdhC_17_405_low/G6PdhC_17_568_low)))
G6PdhC_17_blp<-c((G6PdhC_17_405_base/G6PdhC_17_568_base)/((G6PdhC_17_405_low/G6PdhC_17_568_low)/(G6PdhC_17_405_peak/G6PdhC_17_568_peak)))
G6PdhC_17_btl<-c((G6PdhC_17_405_base/G6PdhC_17_568_base)/(G6PdhC_17_405_low/G6PdhC_17_568_low))
G6PdhC_17_btp<-c((G6PdhC_17_405_base/G6PdhC_17_568_base)/(G6PdhC_17_405_peak/G6PdhC_17_568_peak))

iNap_G6PdhC_17_base<-c(mean(G6PdhC_17_405_base/G6PdhC_17_568_base)) 
iNap_G6PdhC_17_bpl<-c(mean(G6PdhC_17_bpl))
iNap_G6PdhC_17_blp<-c(mean(G6PdhC_17_blp))
iNap_G6PdhC_17_btl<-c(mean(G6PdhC_17_btl))
iNap_G6PdhC_17_btp<-c(mean(G6PdhC_17_btp))



iNap_G6PdhC_time_course<-c(G6PdhC_eyedisc_1,G6PdhC_eyedisc_2,G6PdhC_eyedisc_3,G6PdhC_eyedisc_4,G6PdhC_eyedisc_5,G6PdhC_eyedisc_6,G6PdhC_eyedisc_7,G6PdhC_eyedisc_8,G6PdhC_eyedisc_9,G6PdhC_eyedisc_10,G6PdhC_eyedisc_12,G6PdhC_eyedisc_13,G6PdhC_eyedisc_14,G6PdhC_eyedisc_16,G6PdhC_eyedisc_17)
matiNap_G6PdhC_time_course<-matrix(iNap_G6PdhC_time_course,nrow=132,ncol=15)
mean_iNap_G6PdhC_time_course<-c(rowMeans(matiNap_G6PdhC_time_course))


iNap_G6PdhC_base<-c(iNap_G6PdhC_1_base,iNap_G6PdhC_2_base,iNap_G6PdhC_3_base,iNap_G6PdhC_4_base,iNap_G6PdhC_5_base,iNap_G6PdhC_6_base,iNap_G6PdhC_7_base,iNap_G6PdhC_8_base,iNap_G6PdhC_9_base,iNap_G6PdhC_10_base,iNap_G6PdhC_12_base,iNap_G6PdhC_13_base,iNap_G6PdhC_14_base,iNap_G6PdhC_16_base,iNap_G6PdhC_17_base)





