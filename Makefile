#!/bin/bash/


SUBDIRS := $(wildcard page/*/.)

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)
