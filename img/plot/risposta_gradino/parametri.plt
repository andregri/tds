set encoding utf8
# variables
#
y_m = 1.52667
t_m = 6.4
t_r = .93
t_s = 3.337
t_a = 27.95
#
# x
#
set title '{/Symbol x} = 0.2, w_0 = 0.5'
set xrange [0:50]
set xtics add ("" 0)
set xtics add ("T_r" t_r)
set xtics add ("T_m" t_m)
set xtics add ("T_a" t_a)
#
# y
#
set yrange [0:1.6]
set ytics 0,1,1.6
set ytics add ("y_m" y_m)
set ytics add ("0.9 k" 0.9)
set ytics add ("k" 1)
set ytics add ("0.1 k" 0.1)
set ytics add ("1.6" 1.6)
set ytics add ("0" 0)
#
# constant
#
w0 = .5
k = 1
#
# function
#
set samples 3000
f(x, k, xi, w) = k*(1 - ((exp(-w*xi*x))/(sqrt(1-xi**2)))*sin(w*sqrt(1-xi**2)*x+atan((sqrt(1-xi**2))/(xi))))
#
#
set arrow from t_r,.1 to t_s,.1 arrowstyle 3
set arrow from t_s,.1 to t_r,.1 arrowstyle 3
set label "T_s" at 1.8,.17
#
# vertical lines
#
set arrow from t_m,0 to t_m,y_m nohead dt 3 lt 2 lc rgb "#EC9454"
set arrow from t_s,0 to t_s,.9 nohead dt 3 lt 2 lc rgb "#22B2DA"
set arrow from t_r,0 to t_r,.1 nohead dt 3 lt 2 lc rgb "#3B4A6B"
set arrow from t_a,0 to t_a,.95 nohead dt 3 lt 2 lc rgb "#3B4A6B"
#
# points
#
set label "" at t_m,y_m point pt 7 lc rgb "#EC9454"
set label "" at t_s,.9 point pt 7 lc rgb "#22B2DA"
set label "" at t_r,.1 point pt 7 lc rgb "#3B4A6B"
#
#
plot	f(x, 1, .2, w0) w l lt 2 title 'y_f (t)', \
		x < t_m ? y_m : 1/0 w l dt 3 lc rgb "#EC9454" notitle, \
		x < t_s ? 0.9 : 1/0 w l dt 3 lc rgb "#22B2DA" notitle, \
		x < t_r ? 0.1 : 1/0 w l dt 3 lc rgb "#3B4A6B" notitle, \
		k w l dt 2 lc 'red' notitle, \
		x > t_a ? k - 0.05*k : 1/0 w l dt 3 lc '#58828B' title 'k {/Symbol \261} 0.05*k', \
		x > t_a ? k + 0.05*k : 1/0 w l dt 3 lc '#58828B' notitle