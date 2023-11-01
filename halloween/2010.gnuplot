set xdata time
set timefmt "%H:%M"
set xrange ["17:30":"21:30"]
set yrange [0:16]
set ytics 0,1
set format x "%H:%M"
set title '2010'
set terminal png
set output '2010.png'
set label 1 "total=45" at 64000,13
plot '2010.dat' index 0 using 1:2 with impulses title 'visitors'
