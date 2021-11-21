load "config.p"

set title "Gaussian Curve" 
set key left box
set samples 10000
plot [-10:10] exp(-4*log(2)*1*x**2),exp(-4*log(2)*0.5*x**2), exp(-4*log(2)*0.9*(x)**2)

set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'Gaussian.pdf'
replot
unset output
unset terminal



