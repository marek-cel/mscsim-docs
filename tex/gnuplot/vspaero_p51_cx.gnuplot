set terminal postscript eps size 5.5,2.8 enhanced color font 'Helvetica,18'
set output "../eps/vspaero_p51_cx.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Drag Coefficient [-]"
set xrange [-5: 10]
set yrange [0.0: 0.1]
set xtics 5
set ytics nomirror
set key right bottom
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
  "../csv/p51_vspaero.csv" using 1:3 with linespoints ls 1 title "VSPAERO", \
  "../csv/p51_openfoam.csv" using 1:3 with linespoints ls 2 title "OpenFOAM"
