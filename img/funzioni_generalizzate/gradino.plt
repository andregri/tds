set terminal png
set output 'gradino.png'
load 'config.plt'
#
unset xtics
set yrange [-0.1:1.2]
set ytics 0,1
plot x>=0 ? 1 : 0 notitle with lines ls 1
