set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_fuselage_psiwf_dmqfmp.eps"
set xlabel "PSIWF {/Symbol y}_{WF} [deg]"
set ylabel "Incremental Pitching Moment {/Symbol D}M/q [m^3]"
set xrange [-30: 30]
set yrange [0.0: 180.0]
set xtics 10
set ytics 20 nomirror
set key right top
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_aero_fuselage_psiwf2.csv" using 1:3 with linespoints ls 1 notitle
