set xdata time
set timefmt "%H:%M"
set xrange ["17:30":"21:30"]
set yrange [0:8]
set ytics 0,1
set format x "%H:%M"
set title '2014'
set terminal png
set output '2014.png'
set label 1 "total=23 (rainy!)" at 64000,5
plot '2014.dat' index 0 using 1:2 with impulses title 'visitors'
