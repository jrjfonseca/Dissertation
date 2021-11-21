load "config.p"
set xrange[-10:10]

plot "LAtest.txt" using 1:2 w l, \
 "LAtest.txt" using 1:3 w l ,\
 "LAtest.txt" using 1:4 w l ,\
 "LAtest.txt" using 1:5 w l ,\
 "LAtest.txt" using 1:6 w l ,\


set terminal pdfcairo enhanced color notransparent size 16cm,12cm 
set output 'La_equalms.pdf'
replot
unset output
unset terminal



