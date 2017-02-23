set terminal png
set output 'poli_reali1_2.png'
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
plot [-.25:1][-.25:4] x >= 0 ? 1 : 1/0 notitle w l ls 1
