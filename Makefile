#
#  Makefile
#
#  Copyright (c) 2022 by Daniel Kelley
#

CA_R := $(HOME)/src/ca-r/ws
BWMSE := $(HOME)/work/dak/bwmse

EXTERNS := ca-r/DATE.txt
EXTERNS += bwmse/bwmse.pdf

.PHONY: all

all: $(EXTERNS)

ca-r/DATE.txt: $(CA_R)/DATE.txt
	cp $(CA_R)/* ca-r

bwmse/bwmse.pdf: $(BWMSE)/bwmse.pdf
	make -k -C $(BWMSE) REL=$(PWD)/bwmse release
	cp $(BWMSE)/bwmse.pdf bwmse
