set terminal png
set output 'doppietto.png'
load 'config.plt'
#
set xlabel 't'
set yrange [-1.1:1.1]
set xrange [-2:2]
unset ytics
set xtics -1,1,1
#plot dirac delta
set arrow 4 from -0.01,0 to -.01,1 head back filled linecolor rgb 'red' linewidth 2 dashtype solid size screen  0.030,15,90
set arrow 5 from .01,0 to .01,-1 head back filled linecolor rgb 'red' linewidth 2 dashtype solid size screen  0.030,15,90
plot 0 notitle with lines ls 1