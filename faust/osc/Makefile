#
#  Makefile
#
#  Copyright (c) 2018 by Daniel Kelley
#

PROG := osc
CVT := faust2webaudiowasm -worklet
OUT := $(PROG).html

all: $(OUT)

$(OUT): $(PROG).dsp
	$(CVT) $<

clean:
	-rm -rf $(OUT) $(PROG)-processor.js $(PROG).wasm

