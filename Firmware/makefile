#######################################################################
######                                                           ######
#######################################################################
###### Project:   Reflow Oven USB Controller                     ######
###### Developer: petershaw, fast : ccc-ffm                      ######
###### Date: 2014                                                ######
###### URL: https://github.com/petershaw/ReflowCtrl              ######
#######################################################################
###### Revision: 1		                                 ######
###### Date: September 2014                                      ###### 
#######################################################################

PROJECTNAME = cccffm-reflow

include environment/build.mk
include environment/applications.mk
include environment/board.mk
include environment/programmer.mk

include options.mk

# C Source files
PRJSRC = $(shell find ./src* -name *.c)
# Assambler Source 
PRJASM += $(shell find ./src* -name *.S)

# additional includes (e.g. -I/path/to/mydir)
INC = 

# libraries to link in (e.g. -lmylib)
LIBS = 

# Optimization level,
# use s (size opt), 1, 2, 3 or 0 (off)
OPTLEVEL = s

# HEXFORMAT -- format for .hex file output
HEXFORMAT = ihex

# compiler
CFLAGS = -I$(INC) -g -mmcu=$(MCU) -O$(OPTLEVEL)   \
		 $(DASH_VARS)                             \
         -DF_CPU=$(F_CPU)                         \
         $(BOARD_OPTS)                            \
         -DREVISION=$(REVISION)                   \
		 --std=gnu99                              \
         -Wall

# disabled options
#          								\
#         -fpack-struct -fshort-enums               \
#         -funsigned-bitfields -funsigned-char      \
#         -Wall -Wstrict-prototypes                 \
#-Wa,-ahlms=$(OBJECTDIR)/$(firstword      \
#                    $(filter %.lst, $(<:.c=.lst)))

# linker
LDFLAGS = -Wl,-Map,$(TRG).map -mmcu=$(MCU)  \
          -L "$${LIBPATH}"                  \
          -lm $(LIBS)


##### automatic target names ####
TRG=$(TARGETDIR)/$(PROJECTNAME).out
DUMPTRG=$(TARGETDIR)/$(PROJECTNAME).s

HEXROMTRG=$(TARGETDIR)/$(PROJECTNAME).hex
HEXTRG=$(HEXROMTRG) $(TARGETDIR)/$(PROJECTNAME).ee.hex

# Start by splitting source files by type
#  C
CFILES=$(filter %.c, $(PRJSRC))
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
all: prepare $(TRG) $(HEXTRG)

prepare:
	$(MKDIR_P) $(OBJECTDIR)
	$(MKDIR_P) $(TARGETDIR)

test:
	$(MAKE) -C tests
	./tests/target/tests


$(TRG): $(OBJDEPS)
	@echo ------------------------------------------------------------
	@echo Linking: $(shell find $(OBJECTDIR) -type f -name *.o)
	@echo ------------------------------------------------------------
	$(CC) $(LDFLAGS) -o $(TRG) $(shell find $(OBJECTDIR) -type f -name *.o) -I$(INC) -lm $(LIBS)

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


#### Generating hex files ####
# hex files from elf
.out.hex:
	$(OBJCOPY) -j .text                    \
	           -j .data                    \
	           -O $(HEXFORMAT) $< $@

.out.ee.hex:
	$(OBJCOPY) -j .eeprom                     \
	           --change-section-lma .eeprom=0 \
	           -O $(HEXFORMAT) $< $@

#### Information ####
info:
	which $(CC)
	$(CC) -v
	avr-ld -v

#### Upload ####

upload:
	$(AVRDUDE) \
	-c $(PROGRAMMER) \
	-B$(BOOTLOADER_BAUD) \
	-Uflash:w:$(HEXROMTRG) \
	-p $(PROGRAMMER_MCU) \
	-U lfuse:w:${FUSE_LOW}:m -U hfuse:w:${FUSE_HIGH}:m -U efuse:w:${FUSE_EXTENDED}:m

#### Cleanup ####
clean:
	$(REMOVE) $(TRG) $(TRG).map $(DUMPTRG)
	$(REMOVE) -r $(TARGETDIR)
	$(REMOVE) $(OBJDEPS)
	$(REMOVE) $(LST)
	$(REMOVE) $(GENASMFILES)
	$(REMOVE) -r $(OBJECTDIR)
	$(MAKE) -C tests clean

