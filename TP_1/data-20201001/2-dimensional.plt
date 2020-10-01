# set the terminal, i.e., the figure format (eps) and font (Helvetica, 20pt)
set term postscript eps enhanced "Helvetica" 20 

# reset all options to default, just for precaution
reset

# set the figure size
set size 0.9,0.9

# set the figure name
set output "figure.eps"

# set the x axis
set xrange [0:1]
set xlabel "x_{n-1}"
set xtics 0,0.2
set mxtics 2

# set the y axis
set yrange [0:1]
set ylabel "x_{n}"
set ytics 0,0.2
set mytics 2

# set no legend
unset key

# set no grid (grid lines start from tics on both x and y axis)
unset grid

# plot the points from the data file
plot "a65539m2pow31.log" using 1:2 title "" with points pt 5 ps 0.1 lc rgb "#AAAAAA"

