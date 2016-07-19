#
# Makefile for the MMAN plugin
#

FRAMAC_SHARE :=$(shell frama-c.byte -print-path)
FRAMAC_LIBDIR :=$(shell frama-c.byte -print-libpath)

# Plugin declaration
PLUGIN_NAME = Mman
#PLUGIN_DIR =.
#PLUGIN_ENABLE = yes
#PLUGIN_DYNAMIC = yes

# Plugin packaging
PLUGIN_DEPENDENCIES=Value
PLUGIN_REQUIRES=apron
PLUGIN_REQUIRES:=apron.polkaMPQ apron.apron gmp

# Plugin object files
PLUGIN_CMO=mman_options \
	mman_dabs \
	mman_svar \
	mman_env \
	mman_asyn \
	mman_emls \
	mman_valap \
	mman_dflap \
	mman_value \
	mman_dflow \
    mman_core mman_register

#	mman_options \
#	mman_dabs \
#	mman_svar \
#	mman_env \
#	mman_asyn \
#	mman_emls
#	mman_emfls \
#	mman_valap \
#	mman_dflap \
#	mman_value \
#	mman_dflow \
#   mman_core \
#	mman_register



# PLUGIN_CMI=

PLUGIN_GUI_CMO=mman_gui

# Plugin compilation flags
INCLUDES+=$(shell ocamlfind query -r -i-format apron)
PLUGIN_BFLAGS+=$(INCLUDES)$(LDFLAGS)
PLUGIN_OFLAGS+=$(INCLUDES)$(LDFLAGS)
PLUGIN_EXTRA_BYTE = 
PLUGIN_EXTRA_OPT = 
LDLIBS+= -ccopt "-L/usr/local/lib/ocaml -L/Users/yuezhuang/.opam/system/lib/apron -L/Users/yuezhuang/.opam/system/lib/gmp -lapron -lppl -lgmp"
PLUGIN_LINK_BFLAGS+=$(LDLIBS)
PLUGIN_LINK_OFLAGS+=$(LDLIBS)

include $(FRAMAC_SHARE)/Makefile.dynamic

#
# Other rules
#
%.out: %.c
	frama-c -val $< 
	frama-c -load-module ./Mman -mman -mman-abs 1 -mman-out $< 

