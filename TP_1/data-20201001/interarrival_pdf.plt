set term postscript eps enhanced "Helvetica" 20 

reset

set size 0.7,0.7

set output "interarrival_pdf.eps"

set xrange [0:10]
set xlabel "Interarrival time (ms)"
set xtics 0,1,10
set mxtics 2

set yrange [0:1]
set ylabel "Probability density function"
set ytics 0,0.1,1
set mytics 2

set key box width -3 height 0.5

set grid xtics ytics

plot "interarrival_pdf.log" u 2:3 t "Experimental data" w p pt 1 ps 1.5 lc rgb "#CC0000"


