set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_main_rotor_twstmr.eps"
set xlabel "XSEGMR [-]"
set ylabel "TWSTMR [deg]"
set xrange [0.0: 1.0]
set yrange [-15.0: 5.0]
set xtics 0.1
set ytics 5 nomirror
set key right top
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_main_rotor_twstmr.csv" using 1:2 with linespoints ls 1 notitle
