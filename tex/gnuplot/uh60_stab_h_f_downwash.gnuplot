set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_stab_h_f_downwash.eps"
set xlabel "Fuselage Angle of Attack [deg]"
set ylabel "Fuselage Downwash at the Horizontal Tail [deg]"
set xrange [-90.0: 90.0]
set yrange [-1.0: 2.0]
set xtics 30.0
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
  "../csv/uh60_stab_h_f_downwash.csv" using 1:2 with linespoints ls 1 notitle
