set terminal png
set output 'poli_reali2_2.png'
set encoding utf8
load 'config.plt'
#
set xlabel 't'
set xzeroaxis
set yzeroaxis
unset ytics
unset xtics
#
set title "{/Symbol s} = 0"
set label "0" at 0,0 right
set label "1" at 0,1 right
set label "1" at 1,-.1 center
plot [-.25:2][-.25:2] x >= 0 ? x : 1/0 notitle w l ls 1
