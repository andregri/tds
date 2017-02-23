set terminal latex
set output 'impulso.tex'
load 'config.plt'
#
set xlabel 't'
set yrange [-0.1:1]
set xrange [-2:2]
unset ytics
set xtics ("0" 0)
#plot dirac delta
set arrow 4 from 0, 0 to 0,1 head back filled linecolor rgb 'red' linewidth 2 dashtype solid size screen  0.030,15,90
plot 0 title '$\\delta (t)$' with lines ls 1