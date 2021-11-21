load "config.p"
set key off
set samples 10000
plot [-10:10] 0*(1/(1+4*x**2))+(1)*exp(-4*log(2)*x**2), 0.1*(1/(1+4*x**2))+(0.9)*exp(-4*log(2)*x**2), 0.2*(1/(1+4*x**2))+(0.8)*exp(-4*log(2)*x**2),0.3*(1/(1+4*x**2))+(0.7)*exp(-4*log(2)*x**2), 0.4*(1/(1+4*x**2))+(0.6)*exp(-4*log(2)*x**2), 0.5*(1/(1+4*x**2))+(0.5)*exp(-4*log(2)*x**2),0.6*(1/(1+4*x**2))+(0.4)*exp(-4*log(2)*x**2),0.7*(1/(1+4*x**2))+(0.3)*exp(-4*log(2)*x**2),0.8*(1/(1+4*x**2))+(0.2)*exp(-4*log(2)*x**2),0.9*(1/(1+4*x**2))+(0.1)*exp(-4*log(2)*x**2), 1*(1/(1+4*x**2))+(0)*exp(-4*log(2)*x**2)

set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'SGL.pdf'
replot
unset output
unset terminal



