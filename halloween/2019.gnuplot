set xdata time
set timefmt "%H:%M"
set xrange ["17:30":"21:30"]
set yrange [0:8]
set ytics 0,1
set format x "%H:%M"
set title '2019'
set terminal png
set output '2019.png'
set label 1 "total=34" at 64000,5
plot '2019.dat' index 0 using 1:2 with impulses title 'visitors'
