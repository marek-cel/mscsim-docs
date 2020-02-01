set terminal postscript eps size 5.5,2.8 enhanced color font 'Helvetica,18'
set output "../eps/uh60_stab_v_cy.eps"
set xlabel "Angle of Sideslip [deg]"
set ylabel "Side Force Coefficient [-]"
set xrange [-90: 90]
set yrange [-1.2: 1.2]
set xtics 30
set ytics nomirror
set key right top
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_aero_empennage.csv" using 1:5 with linespoints ls 1 notitle
