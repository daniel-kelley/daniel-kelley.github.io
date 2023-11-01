set xdata time
set timefmt "%H:%M"
set xrange ["17:30":"21:30"]
set yrange [0:8]
set ytics 0,1
set format x "%H:%M"
set title '2023'
set terminal png
set output '2023.png'
set label 1 "total=18" at 64000,6
plot '2023.dat' index 0 using 1:2 with impulses title 'visitors'
