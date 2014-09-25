#######################################################################
######                                                           ######
#######################################################################
###### Project:   Reflow Oven USB Driver                         ######
###### Developer: petershaw, cccffm                              ######
###### Date: Jan/2014 - Apr/2014                                 ######
###### URL: https://github.com/petershaw/ReflowCtrl              ######
#######################################################################
###### Revision: 1		                                         ######
###### Date: September 2014                                      ###### 
#######################################################################

PROJECTNAME = reflowctrl

include environment/build.mk
include environment/applications.mk

include options.mk

# C Source files
BINSRC = $(shell find ./src* -name *.c -d 1)
PRJSRC = $(shell find ./src*/**/ -name *.c)
# Assambler Source 
PRJASM += $(shell find ./src*/**/ -name *.S)

# additional includes (e.g. -I/path/to/mydir)
INC = 

# libraries to link in (e.g. -lmylib)
USBFLAGS=   `libusb-config --cflags`
USBLIBS=    `libusb-config --libs`
LIBS = -lreflowctrl $(USBLIBS)

# Optimization level,
# use s (size opt), 1, 2, 3 or 0 (off)
OPTLEVEL = 3

# compiler
CFLAGS = -I$(INC) -g -O$(OPTLEVEL)                \
		 $(DASH_VARS)                             \
         -DREVISION=$(REVISION)                   \
		 --std=gnu99                              \
         -fshort-enums               \
         -funsigned-char                          \
         -Wall -Wstrict-prototypes                 \
         $(USBFLAGS)                               
         
# linker
LDFLAGS = -Wl,                              \
		   -L../lib/target

##### automatic target names ####
TRG=$(TARGETDIR)/$(PROJECTNAME)
DUMPTRG=$(TARGETDIR)/$(PROJECTNAME).s

# Start by splitting source files by type
#  C
CFILES=$(filter %.c, $(PRJSRC)) $(filter %.c, $(BINSRC))  
# ASM
ASMFILES=$(filter %.S, $(PRJASM))

# List all object files we need to create
_OBJDEPS=$(CFILES:.c=.o)
OBJDEPS=$(_OBJDEPS:./src=$(OBJECTDIR)/src) $(_ASMDEPS:./src=$(OBJECTDIR)/src)

# List all asm files we need to create
_ASMDEPS=$(ASMFILES:.S=.o)
ASMDEPS=$(_ASMDEPS:./src=$(OBJECTDIR)/src)

# Define all lst files.
LST=$(filter %.lst, $(OBJDEPS:.o=.lst))
LST+=$(filter %.lst, $(ASMDEPS:.o=.lst))

# All the possible generated assembly
# files (.s files)
GENASMFILES=$(filter %.s, $(OBJDEPS:.o=.s))

.SUFFIXES : .c .o .out .s .S .h .hex .ee.hex

dir_guard=$(MKDIR_P) $(OBJECTDIR)/$(@D)

# Make targets:
# all, disasm, stats, hex, writeflash/install, clean
all: prepare $(TRG)

prepare:
	$(MKDIR_P) $(OBJECTDIR)
	$(MKDIR_P) $(OBJECTBINDIR)
	$(MKDIR_P) $(TARGETDIR)

test:
	$(MAKE) -C tests
	./tests/target/tests

$(TRG): $(OBJDEPS) $(BINDEPS)
	@echo ------------------------------------------------------------
	@echo Linking: $(shell find $(OBJECTDIR) -type f -name *.o)
	@echo ------------------------------------------------------------
		
	@echo ------------------------------------------------------------
	@echo Into binaries: $(foreach var, $(BINSRC), $(shell basename $(var)))
	@echo ------------------------------------------------------------	
	$(CC) $(LDFLAGS) -o $(TARGETDIR)/reflowctrl $(shell find $(OBJECTDIR)/src/**/* -type f -name *.o) $(OBJECTDIR)/src/reflowctrl.o $(LIBS)
	$(CC) $(LDFLAGS) -o $(TARGETDIR)/reflowtail $(shell find $(OBJECTDIR)/src/**/* -type f -name *.o) $(OBJECTDIR)/src/reflowtail.o $(LIBS)
	$(CC) $(LDFLAGS) -o $(TARGETDIR)/reflowtop $(shell find $(OBJECTDIR)/src/**/* -type f -name *.o) $(OBJECTDIR)/src/reflowtop.o $(LIBS)
	
		
#### Generating assembly ####
# asm from asm
%.s: %.S
	@echo ------------------------------------------------------------
	@echo Prepare asm from S: $<
	@echo ------------------------------------------------------------
	$(dir_guard)
	$(CPP) -S $(CPPFLAGS)  $<  -o $(OBJECTDIR)/$@ 
	
# asm from C
%.s: %.c
	@echo ------------------------------------------------------------
	@echo Prepare c from asm: $<
	@echo ------------------------------------------------------------
	$(dir_guard)
	$(CC) -S $(CFLAGS) $< -o $(OBJECTDIR)/$@ 

#### Generating object files ####
# object from C
.c.o:
	@echo ------------------------------------------------------------
	@echo Compile c: $<
	@echo ------------------------------------------------------------
	$(dir_guard)
	$(CC) $(CFLAGS) -c $< -o $(OBJECTDIR)/$@ 

# object from ASM
.S.o:
	@echo ------------------------------------------------------------
	@echo Compile asm: $<
	@echo ------------------------------------------------------------
	$(dir_guard)
	$(CC) $(CFLAGS) -c $< -o $(OBJECTDIR)/$@ 


#### Information ####
info:
	which $(CC)
	$(CC) -v

#### Cleanup ####
clean:
	$(REMOVE) $(TRG) $(TRG).map $(DUMPTRG)
	$(REMOVE) -r $(TARGETDIR)
	$(REMOVE) -r build_bin
	$(REMOVE) $(OBJDEPS)
	$(REMOVE) $(LST)
	$(REMOVE) $(GENASMFILES)
	$(REMOVE) -r $(OBJECTDIR)
	$(MAKE) -C tests clean

