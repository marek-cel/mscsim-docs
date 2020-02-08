set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_stab_h_mr_downwash.eps"
set xlabel "Rotor Wake Skew Angle [deg]"
set ylabel "Main Rotor Downwash at the Horizontal Tail [-]"
set xrange [0.0: 100.0]
set yrange [-0.5: 2.5]
set xtics 10.0
set ytics 0.5 nomirror
set key left top
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set style line 2 lc rgb '#aa4644' lw 4 pt 1 ps 0
set style line 3 lc rgb '#89a54e' lw 4 pt 1 ps 0
set style line 4 lc rgb '#71588f' lw 4 pt 1 ps 0
set style line 5 lc rgb '#4298af' lw 4 pt 1 ps 0
set style line 6 lc rgb '#db843d' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_stab_h_mr_downwash.csv" using 1:2 with linespoints ls 1 title "AA1FMR=-6.0", \
  "../csv/uh60_stab_h_mr_downwash.csv" using 1:3 with linespoints ls 2 title "AA1FMR=0.0", \
  "../csv/uh60_stab_h_mr_downwash.csv" using 1:4 with linespoints ls 3 title "AA1FMR=6.0"
