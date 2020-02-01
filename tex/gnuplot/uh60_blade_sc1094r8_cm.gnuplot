set terminal postscript eps size 5.5,2.8 enhanced color font 'Helvetica,18'
set output "../eps/uh60_blade_sc1094r8_cm.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Pitching Moment Coefficient [-]"
set xrange [-8: 20]
set yrange [-0.05: 0.05]
set xtics 5
set ytics nomirror
set key right top
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set style line 2 lc rgb '#aa4644' lw 4 pt 1 ps 0
set style line 3 lc rgb '#89a54e' lw 4 pt 1 ps 0
set style line 4 lc rgb '#71588f' lw 4 pt 1 ps 0
set style line 5 lc rgb '#4298af' lw 4 pt 1 ps 0
set style line 6 lc rgb '#db843d' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/xfoil_out_sc1094r8.csv" using 1:4 with linespoints ls 1 title "XFOIL"
