set terminal postscript eps size 5.5,2.8 enhanced color font 'Helvetica,18'
set output "../eps/uh60_fuselage_alpha_cm.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Pitching Moment M_Y/q [m^3]"
set xrange [-90: 90]
set yrange [-1000.0: 1000.0]
set xtics 30
set ytics 200 nomirror
set key right top
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_aero_fuselage.csv" using 1:6 with linespoints ls 1 notitle
