set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_fuselage_psiwf_dlqfmp.eps"
set xlabel "PSIWF {/Symbol y}_{WF} [deg]"
set ylabel "Incremental Lift {/Symbol D}L/q [m^2]"
set xrange [-30: 30]
set yrange [0.0: 30.0]
set xtics 10
set ytics 5 nomirror
set key right top
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_aero_fuselage_psiwf2.csv" using 1:2 with linespoints ls 1 notitle
