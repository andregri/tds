set terminal png
set output 'rampa.png'
load 'config.plt'
#
set grid
set xrange [-2:2]
set yrange [0:2]
set ytics -1,1,1
set xtics -1,1,1
plot x>=0 ? x : 0 notitle with lines ls 1