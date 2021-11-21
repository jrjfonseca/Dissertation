load "config.p"
set key off
set samples 10000
plot [-10:10] exp(-4*log(2)*1*x**2),1/(1+4*1*(x**2))
set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'GaussianLorentzian.pdf'
replot
unset output
unset terminal



