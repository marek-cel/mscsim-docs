set terminal postscript eps size 5.5,2.8 enhanced color font 'Helvetica,18'
set output "../eps/uh60_blade_sc1095_cz.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Lift Coefficient [-]"
set xrange [-8: 20]
set yrange [-1.0: 2.0]
set xtics 5
set ytics nomirror
set key left top
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set style line 2 lc rgb '#aa4644' lw 4 pt 1 ps 0
set style line 3 lc rgb '#89a54e' lw 4 pt 1 ps 0
set style line 4 lc rgb '#71588f' lw 4 pt 1 ps 0
set style line 5 lc rgb '#4298af' lw 4 pt 1 ps 0
set style line 6 lc rgb '#db843d' lw 4 pt 1 ps 0
set key autotitle columnhead
set datafile separator ","
plot \
  "../csv/xfoil_out_sc1095.csv" using 1:2 with linespoints ls 1 title "XFOIL", \
  "../csv/SC1095_CR-166309_cz.csv" using 1:4 with linespoints ls 2 title "[NASA-CR-166309]" , \
  "../csv/SC1095_TM-86719.csv" using 1:2 with linespoints ls 3 title "[NASA-TM-86719]"
