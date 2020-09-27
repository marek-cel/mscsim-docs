set terminal postscript eps size 5.0,0.9 enhanced color font 'Helvetica,18'
set output "../eps/airfoil_NACA64012.eps"
# set term png size 800,150 enhanced
# set output "airfoil_NACA64012.png"

set xrange [0.0: 1.0]

unset border

unset xtics 
unset ytics 

set size ratio -1

set style line 1 lc rgb '#000000' lw 4 pt 1 ps 0
set datafile separator ","
plot \
  "../csv/airfoil_NACA64012.csv" using 1:2 with linespoints ls 1 notitle, \
  "../csv/airfoil_NACA64012.csv" using 3:4 with linespoints ls 1 notitle
