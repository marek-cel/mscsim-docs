set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_fuselage_alfwf_lqfmp.eps"
set xlabel "ALFWF {/Symbol a}_{WF} [deg]"
set ylabel "Lift L/q [m^2]"
set xrange [-90: 90]
set yrange [-100.0: 60.0]
set xtics 30
set ytics 20 nomirror
set key right top
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_aero_fuselage_alfwf.csv" using 1:3 with linespoints ls 1 notitle
