load "config.p"

set samples 10000
plot [-10:10] exp(( -4*log(2)*(1-0.5))*(((x-0)/1)**2))/(1+ ((4*1*((x-0)**2))/1) ),exp(( -4*log(2)*(1-0.5))*(((x-0)/1)**2))/(1+ ((4*0.1*((x-0)**2))/1) ) 
set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'ProductGaussiandifms.pdf'
replot
unset output
unset terminal



