set terminal png
set output 'poli_complessi3_1.png'
set encoding utf8
load 'config.plt'
#
set xlabel 't'
set xzeroaxis
set yzeroaxis
unset ytics
unset xtics
#
set title "{/Symbol s} < 0"
set label "0" at 0,0 right
#
a = 0.9
f(x) = 3*x**2*exp(-a*x)
#
plot [-.25:4][-4:4] x >= 0 ? f(x) : 1/0 notitle w l ls 2,\
	x >= 0 ? f(x)*cos(6*x) : 1/0 notitle w l ls 1,\
	x >= 0 ? -f(x) : 1/0 notitle w l ls 2
