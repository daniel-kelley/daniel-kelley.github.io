#
#  Makefile
#
#  Copyright (c) 2022 by Daniel Kelley
#

.PHONY: all

all:
	cp $(HOME)/src/ca-r/ws/* ca-r
	make -C $(HOME)/work/dak/bwmse REL=$(PWD)/bwmse release
	cp $(HOME)/work/dak/bwmse/bwmse.pdf bwmse
