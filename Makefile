#!make

SHELL=/bin/bash

.SILENT:
.SILENT:
%:
	. ./scripts/export.sh && $(MAKE) -f tasks.mk $@
