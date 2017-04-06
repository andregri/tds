set terminal epslatex color colortext
set output 'double_rc.tex'

u1 = 5
u2 = 3
tau1 = .01
tau2 = .002

bound1 = .07
bound2 = .17

set yrange [0:6]
set xrange [0:bound2]
set samples 5000

plot	x >= 0 && x <= bound1 ? u1*(1-exp(-x/tau1)) : 1/0 lt rgb "#280B45" title "v1",\
		x >= 0 && x <= bound1 ? u1*(1-exp(-x/tau2)) : 1/0 lt rgb "#2F9296" title "v2",\
		x >= 0 && x <= bound1 ? u1	: 1/0 lt rgb "red" title "u",\
		x >= bound1 && x <= bound2 ? (u1-u2)*exp(-(x-bound1)/tau1)+u2 : 1/0 lt rgb "#280B45" notitle,\
		x >= bound1 && x <= bound2 ? (u1-u2)*exp(-(x-bound1)/tau2)+u2 : 1/0 lt rgb "#2F9296" notitle,\
		x >= bound1 && x <= bound2 ? u2	: 1/0 lt rgb "red" notitle