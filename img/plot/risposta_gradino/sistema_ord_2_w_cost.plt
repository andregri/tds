set encoding utf8
#
set title 'w_0 fissato, k = 1'
set xrange [0:50]
#set ytics add ("k" 1)
#
w0 = .6
k = 1
#
set samples 3000
f(x, k, xi, w) = k*(1 - ((exp(-w*xi*x))/(sqrt(1-xi**2)))*sin(w*sqrt(1-xi**2)*x+atan((sqrt(1-xi**2))/(xi))))
plot	f(x, 1, .1, w0) w l title '{/Symbol x} = 0.1', \
		f(x, 1, .69, w0) w l title '{/Symbol x} = 0.69', \
		f(x, 1, .8, w0) w l lt 20 title '{/Symbol x} = 0.8', \
		k w l dt 3 lc 'red', \
		k - 0.05*k w l dt 3 lc '#58828B' title 'k {/Symbol \261} 0.05*k', \
		k + 0.05*k w l dt 3 lc '#58828B' notitle