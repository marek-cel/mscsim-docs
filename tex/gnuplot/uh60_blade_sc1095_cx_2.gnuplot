set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/uh60_blade_sc1095_cx_2.eps"
set xlabel "Angle of Attack [deg]"
set ylabel "Drag Coefficient [-]"
set xrange [-30: 30]
set yrange [0.0: 0.65]
set xtics 10
set ytics nomirror
set key right bottom
set grid
set zeroaxis lw 2
set style line  1 lc rgb '#4573a7' lw 4 pt 1 ps 0
set style line  2 lc rgb '#aa4644' lw 4 pt 1 ps 0
set style line  3 lc rgb '#89a54e' lw 4 pt 1 ps 0
set style line  4 lc rgb '#71588f' lw 4 pt 1 ps 0
set style line  5 lc rgb '#4298af' lw 4 pt 1 ps 0
set style line  6 lc rgb '#db843d' lw 4 pt 1 ps 0
set style line  7 lc rgb '#ff0000' lw 4 pt 1 ps 0
set style line  8 lc rgb '#000088' lw 4 pt 1 ps 0
set style line  9 lc rgb '#ff00ff' lw 4 pt 1 ps 0
set style line 10 lc rgb '#00ff00' lw 4 pt 1 ps 0
set style line 11 lc rgb '#00ffff' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/SC1095_CR-166309_cx.csv" using 1:2  with linespoints ls 1  title "Ma=0.0", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:3  with linespoints ls 2  title "Ma=0.1", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:4  with linespoints ls 3  title "Ma=0.2", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:5  with linespoints ls 4  title "Ma=0.3", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:6  with linespoints ls 5  title "Ma=0.4", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:7  with linespoints ls 6  title "Ma=0.5", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:8  with linespoints ls 7  title "Ma=0.6", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:9  with linespoints ls 8  title "Ma=0.7", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:10 with linespoints ls 9  title "Ma=0.8", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:11 with linespoints ls 10 title "Ma=0.9", \
  "../csv/SC1095_CR-166309_cx.csv" using 1:12 with linespoints ls 11 title "Ma=1.0"
