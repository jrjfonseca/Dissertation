load "config.p"
set key off
set samples 10000
set yrange [0:1]
plot [-10:10] cos((3.14*0.00)/2 + (1-0.00) *atan((x-0)/1))/(1**2 + (x-0)**2)**((1-0.00)/2), cos((3.14*0.05)/2 + (1-0.05) *atan((x-0)/1))/(1**2 + (x-0)**2)**((1-0.05)/2), cos((3.14*0.1)/2 + (1-0.1) *atan((x-0)/1))/(1**2 + (x-0)**2)**((1-0.1)/2), cos((3.14*0.15)/2 + (1-0.15) *atan((x-0)/1))/(1**2 + (x-0)**2)**((1-0.15)/2), cos((3.14*0.2)/2 + (1-0.2) *atan((x-0)/1))/(1**2 + (x-0)**2)**((1-0.2)/2)          

set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'DS.pdf'
replot
unset output
unset terminal



