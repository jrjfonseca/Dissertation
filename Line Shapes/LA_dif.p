load "config.p"
set xrange[-20:20]
set key off
plot "LA_dif_m's.txt" using 1:2 w l, \
 "LA_dif_m's.txt" using 1:3 w l ,\
 "LA_dif_m's.txt" using 1:4 w l ,\
 "LA_dif_m's.txt" using 1:5 w l ,\
 "LA_dif_m's.txt" using 1:6 w l ,\
 "LA_dif_m's.txt" using 1:7 w l ,\


set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'La_dif.pdf'
replot
unset output
unset terminal




