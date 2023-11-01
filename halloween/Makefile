#
#  Makefile
#
#  Copyright (c) 2011 by Daniel Kelley
#

PNG := 2010.png
PNG += 2011.png
PNG += 2013.png
PNG += 2014.png
PNG += 2015.png
PNG += 2017.png
PNG += 2018.png
PNG += 2019.png
PNG += 2022.png
PNG += 2023.png

all: $(PNG)

%.png: %.gnuplot %.dat
	gnuplot $<

clean:
	-rm -f $(PNG)

prop:
	svn propset svn:ignore "*.png" .

install: all
	scp *.png *.html *.dat gmp:public_html/halloween
