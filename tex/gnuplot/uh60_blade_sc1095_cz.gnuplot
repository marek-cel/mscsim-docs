set terminal postscript eps size 5.5,2.8 enhanced color font 'Helvetica,18'
set output "../eps/uh60_blade_sc1095_cz.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Lift Coefficient [-]"
set xrange [-8: 20]
set yrange [-1.0: 2.0]
set xtics 5
set ytics nomirror
set key right top
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/xfoil_out_sc1095.csv" using 1:2 with linespoints ls 1 notitle
