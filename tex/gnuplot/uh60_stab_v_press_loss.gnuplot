set terminal postscript eps size 5.5,3.2 enhanced color font 'Helvetica,18'
set output "../eps/uh60_stab_v_press_loss.eps"
set xlabel "Sideslip Angle [deg]"
set ylabel "Dynamic Pressure Loss [-]"
set xrange [-30: 30]
set yrange [0.6: 1.0]
set xtics 10
set ytics 0.1
set key right bottom
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_stab_v_press_loss.csv" using 1:2 with linespoints ls 1 notitle
