#
#  Makefile
#
#  Copyright (c) 2022 by Daniel Kelley
#

CA_R := $(HOME)/src/ca-r/ws
BWMSE := $(HOME)/work/dak/bwmse

EXTERNS := ca-r/DATE.txt
EXTERNS += bwmse/bwmse.pdf
EXTERNS += status/index.html

.PHONY: all env

all: $(EXTERNS)

ca-r/DATE.txt: $(CA_R)/DATE.txt
	cp $(CA_R)/* ca-r

bwmse/bwmse.pdf: $(BWMSE)/bwmse.pdf
	make -k -C $(BWMSE) REL=$(PWD)/bwmse pdf
	make -k -C $(BWMSE) REL=$(PWD)/bwmse html
	make -k -C $(BWMSE) REL=$(PWD)/bwmse release
	cp $(BWMSE)/bwmse.pdf bwmse

status/index.html: status/src/index.org
	emacs -batch \
		--load status/elisp/publish-doc.el \
		--eval '(org-publish "status")'

# helper: create next status page
next:
	status/src/tools/next

env:
	set|sort
