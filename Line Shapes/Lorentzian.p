load "config.p"
set key off 
set samples 10000
plot [-10:10] 1/(1+4*1*(x**2)),1/(1+4*0.5*(x**2)),1/(1+4*0.1*(x**2))
set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'Lorentzian.pdf'
replot
unset output
unset terminal



