#####################################################
# Makefile for the analyer: Mman
#####################################################

# frama -c path 
FRAMAC_SHARE := $(shell frama-c.byte -print-path)

# frama-c libpath 
FRAMAC_LIBDIR := $(shell frama-c.byte -print-libpath)


# Plugin declaration
PLUGIN_NAME = Mman
#PLUGIN_DIR = .
#PLUGIN_ENABLE = yes
#PLUGIN_DYNAMIC = yes

# Plugin packaging
<<<<<<< HEAD
PLUGIN_DEPENDENCIES = Value
PLUGIN_REQUIRES = apron
PLUGIN_REQUIRES := apron.polkaMPQ apron.apron gmp
=======
PLUGIN_DEPENDENCIES=Eva
PLUGIN_REQUIRES=apron
PLUGIN_REQUIRES:=apron.polkaMPQ apron.apron gmp
>>>>>>> c3fc159eba69639c35e68964f7f37dc048186509

# Plugin object files
PLUGIN_CMO = mman_options \
	mman_dabs \
	mman_svar \
	mman_env \
	mman_asyn \
	mman_valap \
	mman_dflap \
	mman_emls \
	mman_value \
	mman_dflow \
	mman_core \
	mman_register

 

# PLUGIN_CMI = 

<<<<<<< HEAD
# PLUGIN_CMI=

PLUGIN_GUI_CMO = mman_gui

# Plugin compilation flags
INCLUDES += $(shell ocamlfind query -r -i-format apron)
=======
PLUGIN_GUI_CMO = mman_gui

# Plugin compilation flags
INCLUDES +  = $(shell ocamlfind query -r -i -format apron)
>>>>>>> c3fc159eba69639c35e68964f7f37dc048186509
PLUGIN_BFLAGS += $(INCLUDES)$(LDFLAGS)
PLUGIN_OFLAGS += $(INCLUDES)$(LDFLAGS)
PLUGIN_EXTRA_BYTE = 
PLUGIN_EXTRA_OPT = 
LDLIBS += -ccopt "-L/usr/local/lib/ocaml -L/Users/yuezhuang/.opam/system/lib/apron -L/Users/yuezhuang/.opam/system/lib/gmp -lapron -lppl -lgmp"
<<<<<<< HEAD
PLUGIN_LINK_BFLAGS+=$(LDLIBS)
PLUGIN_LINK_OFLAGS+=$(LDLIBS)
=======
PLUGIN_LINK_BFLAGS += $(LDLIBS)
PLUGIN_LINK_OFLAGS += $(LDLIBS)
>>>>>>> c3fc159eba69639c35e68964f7f37dc048186509

# include /Users/fangbin/.opam/4.07.0/share/frama-c/Makefile.dynamic
include $(FRAMAC_SHARE)/Makefile.dynamic


%.out: %.c
	frama -c -val $ < 
	frama -c -load -module ./Mman -mman -mman -abs 1 -mman -out $ < 
