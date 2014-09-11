
# Settings for the basic options of the target board

# BOARD REVISION
REVISION = 1
SERIALNR = DEV001

# Name of target controller
MCU = atmega328p

# Frequency of the controller
F_CPU = 16000000UL

# Maximal Memory size of eeprom in byte
EE_MAX_SIZE = 1024
EE_STARTADDR = 0x8
EE_MAX_BYTES = 0x3ff

# Define the board configuration
HAS_LCD			= 0		# still unused 				

# Output debug messages on UART
DEBUGFN 		= usart_write

BOARD_OPTS = 	-DHAS_LCD=$(HAS_LCD) \
				-DUSB_CFG_SERIAL_NUMBER=$(SERIALNR) \
				-DUSB_CFG_SERIAL_NUMBER_LEN=6
#				-DDEBUGFN=$(DEBUGFN)

# FUSE CONFIGURATION 
FUSE_LOW = 0xff
FUSE_HIGH = 0xdf
FUSE_EXTENDED = 0x07
