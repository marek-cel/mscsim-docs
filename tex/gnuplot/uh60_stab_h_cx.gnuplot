set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_stab_h_cx.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Drag Coefficient [-]"
set xrange [-90: 90]
set yrange [0.0: 1.3]
set xtics 30
set ytics nomirror
set key right bottom
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_aero_stab_h.csv" using 1:2 with linespoints ls 1 notitle
