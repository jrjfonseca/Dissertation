
# Improved gnuplot defaults

unset key
set encoding utf8
set samples 3000
set isosamples 30
set hidden3d
unset key

set loadpath "/home/joao/.config/gnuplot/:/usr/share/doc/gnuplot/examples/"

hsv( h, s, v ) = hsv2rgb( h - floor(h), s, v )
pack( r, g, b ) = 2**16*r +2**8*g + b

# Set plot defaults
set term wxt size 600,500           # Set the standard size for the window size
set size ratio 0.9                  # Define the plot ratio
set xtics font "Arial, 14"          # Define the x and ytics font
set ytics font "Arial, 14"
set cbtics font "Arial, 14"
set xlabel offset 0,0.5             # Define the offset for the axis labels
#set ylabel offset 1,0
set xlabel font "Arial, 17"
set ylabel font "Arial, 17"
set cblabel offset 1,0
set cblabel font "Arial, 17"
set key font "Arial, 17"
set border lw 2                     # Define the plot border thickness
set mxtics                          # Use minor tics
set mytics
set ytics format "%.1tx10^%T"
set ytics add("0" 0)

# Aliases
pdf_opts="size 8.5cm, 8.5cm"        # Alias for the standard graphic size for export
pi="{/Times π}"
# Palette aliase
# Black  DarkMagenta Blue Cyan Green Yellow Red DarkRed
#rainbow="model RGB defined ( 0 'black', 1 'dark-magenta', 2 'blue', 3 'cyan', 4 'green', 5 'yellow', 6 'red', 7 'dark-red', 8 'dark-plum')"
#rev_rainbow="model RGB defined ( 0 'dark-plum', 1 'dark-red', 2 'red, 3 'yellow', 4 'green', 5 'cyan', 6 'blue', 7 'dark-magenta', 8 'black')"
#std_rainbow= "model RGB defined ( 0 'blue', 1 'cyan', 2 'green', 3 'yellow', 4 'red', 5 'magenta' )"
#cmd="load 'copy_history.gp'"





