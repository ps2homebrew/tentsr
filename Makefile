# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
#
# $Id$

SUBDIRS = dev9_noX udptty_ten loader worker

all: $(patsubst %, _dir_%, $(SUBDIRS)) 

$(patsubst %, _dir_%, $(SUBDIRS)):
	@$(MAKE) -r -C $(patsubst _dir_%, %, $@)

clean: $(patsubst %, _cleandir_%, $(SUBDIRS))

$(patsubst %, _cleandir_%, $(SUBDIRS)):
	$(MAKE) -C $(patsubst _cleandir_%, %, $@) clean
