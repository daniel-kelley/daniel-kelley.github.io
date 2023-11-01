set xdata time
set timefmt "%H:%M"
set xrange ["17:30":"21:30"]
set yrange [0:24]
set ytics 0,1
set format x "%H:%M"
set title '2013'
set terminal png
set output '2013.png'
set label 1 "total=56" at 64000,23
plot '2013.dat' index 0 using 1:2 with impulses title 'visitors'
