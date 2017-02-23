set encoding utf8
#
set title '{/Symbol x} fissato, k = 1'
set xrange [0:50]
#set ytics add ("k" 1)
#
xi0 = .2
k = 1
#
set samples 3000
f(x, k, xi, w) = k*(1 - ((exp(-w*xi*x))/(sqrt(1-xi**2)))*sin(w*sqrt(1-xi**2)*x+atan((sqrt(1-xi**2))/(xi))))
plot	f(x, 1, xi0, .1) w l title 'w_0 = 0.1', \
		f(x, 1, xi0, .5) w l title 'w_0 = 0.69', \
		f(x, 1, xi0, 1) w l lt 12 title 'w_0 = 0.8', \
		k w l dt 3 lc 'red'