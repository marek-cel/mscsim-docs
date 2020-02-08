set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_main_rotor_fldmr.eps"
set xlabel "Axial Rate of Lag Damper LD.MR [m/s]"
set ylabel "Axial Force Output from Lag Damper FLD.MR [N]"
set xrange [-0.18: 0.18]
set yrange [-20000.0: 20000.0]
set xtics 0.05
set ytics 10000 nomirror
set key right top
set grid
set yzeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/uh60_main_rotor_fldmr_2.csv" using 1:2 with linespoints ls 1 notitle
