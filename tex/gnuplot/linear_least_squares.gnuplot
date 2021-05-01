set terminal postscript eps size 5.5,3.5 enhanced color font 'Helvetica,18'
set output "../eps/linear_least_squares.eps"
set xlabel "x"
set ylabel "y"
set xrange [0: 10]
set yrange [0: 10]
set xtics 1
set ytics nomirror
set key right bottom
set grid
set zeroaxis lw 2
set style line 1 lc rgb '#4573a7' lw 4 pt 7 ps 2
set style line 2 lc rgb '#aa4644' lw 4 pt 1 ps 0
set style line 3 lc rgb '#89a54e' lw 4 pt 1 ps 0
set style line 4 lc rgb '#71588f' lw 4 pt 1 ps 0
set style line 5 lc rgb '#4298af' lw 4 pt 1 ps 0
set style line 6 lc rgb '#db843d' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/linear_least_squares.csv" using 1:2 with points ls 1 notitle, \
  "../csv/linear_least_squares.csv" using 1:3 with linespoints ls 2 notitle
