set terminal epslatex color colortext
set output 'derivata_funzione_def_tratti.tex'

f_1(x) = 2*x
f_2(x) = 2
f_3(x) = x - 4

set xzeroaxis
set xtics axis
set xrange[-1:7]

set yzeroaxis
set ytics axis
set yrange [-1:3]

set border 0

set sample 1000

plot	x <= 0 ? 0 : 1/0 notitle lt rgb "red",\
		x >= 0 && x <= 1 ? f_1(x) : 1/0 notitle lt rgb "red",\
		x > 1 && x <= 3 ? f_2(x) : 1/0 notitle lt rgb "red",\
		x >= 3 && x <= 7 ? f_3(x) : 1/0 notitle lt rgb "red"