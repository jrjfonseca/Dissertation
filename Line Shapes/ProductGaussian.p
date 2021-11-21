load "config.p"

set samples 10000
plot [-10:10] exp(-4*log(2)*1*x**2)/(1+4*0*x**2),exp(-4*log(2)*0.9*x**2)/(1+4*0.1*x**2), exp(-4*log(2)*0.8*x**2)/(1+4*0.2*x**2),exp(-4*log(2)*0.7*x**2)/(1+4*0.3*x**2),exp(-4*log(2)*0.6*x**2)/(1+4*0.4*x**2),exp(-4*log(2)*0.5*x**2)/(1+4*0.5*x**2), exp(-4*log(2)*0.4*x**2)/(1+4*0.6*x**2),exp(-4*log(2)*0.3*x**2)/(1+4*0.7*x**2),exp(-4*log(2)*0.2*x**2)/(1+4*0.8*x**2),exp(-4*log(2)*0.1*x**2)/(1+4*0.9*x**2),exp(-4*log(2)*0*x**2)/(1+4*1*x**2)

set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'ProductGaussian.pdf'
replot
unset output
unset terminal



