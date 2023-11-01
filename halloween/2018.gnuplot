set xdata time
set timefmt "%H:%M"
set xrange ["17:30":"21:30"]
set yrange [0:8]
set ytics 0,1
set format x "%H:%M"
set title '2018'
set terminal png
set output '2018.png'
set label 1 "total  kids=29 dogs=1" at 64000,6
plot '2018.dat' index 1 using 1:2 with impulses title 'dogs' lt 2, '2018.dat' index 0 using 1:2 with impulses title 'visitors' lt 1
