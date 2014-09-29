
main.elf:     file format elf32-avr

SYMBOL TABLE:
00800100 l    d  .data	00000000 .data
00007000 l    d  .text	00000000 .text
00800106 l    d  .bss	00000000 .bss
0080013d l    d  .noinit	00000000 .noinit
00000000 l    d  .stab	00000000 .stab
00000000 l    d  .stabstr	00000000 .stabstr
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_loc	00000000 .debug_loc
00000000 l    d  .debug_macinfo	00000000 .debug_macinfo
00000000 l    d  .debug_ranges	00000000 .debug_ranges
0000714c l       .text	00000000 usbCrcLoopEntry
0000713a l       .text	00000000 usbCrcByteLoop
0000713e l       .text	00000000 usbCrcBitLoop
00007148 l       .text	00000000 usbCrcNoXor
00007150 l       .text	00000000 usbCrcReady
00007162 l       .text	00000000 waitForJ
00007168 l       .text	00000000 waitForK
00007182 l       .text	00000000 foundK
00007294 l       .text	00000000 sofError
0000719c l       .text	00000000 haveTwoBitsK
0000722a l       .text	00000000 rxbit1
000071b8 l       .text	00000000 unstuff6
00007200 l       .text	00000000 didUnstuff6
000071c4 l       .text	00000000 unstuff7
0000720e l       .text	00000000 didUnstuff7
000071d0 l       .text	00000000 unstuffEven
0000724e l       .text	00000000 se0
00007226 l       .text	00000000 didUnstuffE
000071e0 l       .text	00000000 unstuffOdd
0000723a l       .text	00000000 didUnstuffO
000071f0 l       .text	00000000 rxByteLoop
000071fc l       .text	00000000 skipLeap
00007216 l       .text	00000000 rxBitLoop
00007246 l       .text	00000000 overflow
0000724a l       .text	00000000 ignorePacket
0000727c l       .text	00000000 storeTokenAndReturn
0000729e l       .text	00000000 handleData
000072c8 l       .text	00000000 handleIn
0000727c l       .text	00000000 handleSetupOrOut
00007280 l       .text	00000000 doReturn
000072fc l       .text	00000000 sendNakAndReti
00007300 l       .text	00000000 sendAckAndReti
00007302 l       .text	00000000 sendCntAndReti
0000730a l       .text	00000000 usbSendAndReti
000072e4 l       .text	00000000 bitstuffN
00007324 l       .text	00000000 didStuffN
000072f0 l       .text	00000000 bitstuff6
00007332 l       .text	00000000 didStuff6
000072f8 l       .text	00000000 bitstuff7
0000733e l       .text	00000000 didStuff7
00007304 l       .text	00000000 sendX3AndReti
00007318 l       .text	00000000 txByteLoop
0000731a l       .text	00000000 txBitLoop
00007366 l       .text	00000000 skipAddrAssign
00007376 l       .text	00000000 se0Delay
00000000 l    df *ABS*	00000000 oddebug.c
0000003f l       *ABS*	00000000 __SREG__
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
00000034 l       *ABS*	00000000 __CCP__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 main.c
0000003f l       *ABS*	00000000 __SREG__
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
00000034 l       *ABS*	00000000 __CCP__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
000070f4 l       .text	00000000 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done5
000070f2 l       .text	00000000 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_mismatch5
0080013e l     O .noinit	00000001 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_RAMEND_doesmatch
0080013d l     O .noinit	00000001 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_MCUCSR
00800101 l     O .data	00000004 signatureBytes
00800106 l     O .bss	00000001 stayinloader
00800107 l     O .bss	00000001 usbMsgFlags
00800108 l     O .bss	00000004 replyBuffer.1912
0080010c l     O .bss	00000002 currentAddress
0080010e l     O .bss	00000001 bytesRemaining
0080010f l     O .bss	00000001 isLastPage
00800110 l     O .bss	00000001 currentRequest
00800105 l     O .data	00000001 usbMsgLen
00800111 l     O .bss	00000002 nullVector
000078ba l       .text	00000000 __stop_program
0000711c l       .text	00000000 .do_clear_bss_start
0000711a l       .text	00000000 .do_clear_bss_loop
00007098 g     O .text	00000012 usbDescriptorDevice
00007126  w      .text	00000000 __vector_22
0000715a g     F .text	00000000 __vector_1
00800113 g     O .bss	0000000b usbTxBuf
00000000 g       *ABS*	00000000 nullVector
000070d8 g       .text	00000000 __trampolines_start
000078bc g       .text	00000000 _etext
0000788c g     F .text	00000010 __eerd_byte_m328p
000070d4 g     O .text	00000004 usbDescriptorString0
00007126  w      .text	00000000 __vector_24
00007126  w      .text	00000000 __vector_12
00007126 g       .text	00000000 __bad_interrupt
000078c2 g       *ABS*	00000000 __data_load_end
00007126  w      .text	00000000 __vector_6
00007128 g       .text	00000000 usbCrc16
000070d8 g       .text	00000000 __trampolines_end
00007126  w      .text	00000000 __vector_3
000070e4 g     F .text	00000018 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND
00007126  w      .text	00000000 __vector_23
000078bc g       *ABS*	00000000 __data_load_start
000070d8 g       .text	00000000 __dtors_end
0080013d g       .bss	00000000 __bss_end
00007126  w      .text	00000000 __vector_25
00007068 g     O .text	0000001e bootloader__do_spm
00007126  w      .text	00000000 __vector_11
000070d8  w      .text	00000000 __init
00007126  w      .text	00000000 __vector_13
00007152 g       .text	00000000 usbCrc16Append
00007126  w      .text	00000000 __vector_17
00007126  w      .text	00000000 __vector_19
00007126  w      .text	00000000 __vector_7
0000789c g     F .text	0000001c __eewr_byte_m328p
00007086 g     O .text	00000012 usbDescriptorConfiguration
00007112 g       .text	00000000 __do_clear_bss
0080011e g     O .bss	00000001 usbDeviceAddr
00810000 g       .stab	00000000 __eeprom_end
0080011f g     O .bss	00000001 usbRxToken
00007000 g       .text	00000000 __vectors
00800106 g       .data	00000000 __data_end
000070b8 g     O .text	0000001c usbDescriptorStringVendor
00800120 g     O .bss	00000001 usbInputBufOffset
00007000  w      .text	00000000 __vector_default
00007126  w      .text	00000000 __vector_5
0000789e g       .text	00000000 __eewr_r18_m328p
000070d8 g       .text	00000000 __ctors_start
000070fc g       .text	00000000 __do_copy_data
00007382 g     F .text	000000a6 usbFunctionSetup_USBASP_FUNC_TRANSMIT
00800106 g       .bss	00000000 __bss_start
00007422 g     F .text	00000472 main
00007126  w      .text	00000000 __vector_4
00800100 g     O .data	00000001 usbTxLen
00000000  w      *ABS*	00000000 __heap_end
00007126  w      .text	00000000 __vector_9
00007126  w      .text	00000000 __vector_2
00800121 g     O .bss	00000002 usbMsgPtr
00007126  w      .text	00000000 __vector_21
00007126  w      .text	00000000 __vector_15
00800123 g     O .bss	00000001 usbRxLen
000070d8 g       .text	00000000 __dtors_start
000070d8 g       .text	00000000 __ctors_end
000008ff  w      *ABS*	00000000 __stack
00800124 g     O .bss	00000001 usbNewDeviceAddr
00800106 g       .data	00000000 _edata
0080013f g       .noinit	00000000 _end
00007126  w      .text	00000000 __vector_8
000078b8  w      .text	00000000 exit
00800125 g     O .bss	00000001 usbCurrentTok
000070aa g     O .text	0000000e usbDescriptorStringDevice
000078b8 g       .text	00000000 _exit
00800126 g     O .bss	00000001 usbConfiguration
00007126  w      .text	00000000 __vector_14
00007126  w      .text	00000000 __vector_10
00800127 g     O .bss	00000016 usbRxBuf
00007126  w      .text	00000000 __vector_16
00800100 g       .data	00000000 __data_start
00007126  w      .text	00000000 __vector_18
00007126  w      .text	00000000 __vector_20



Disassembly of section .text:

00007000 <__vectors>:
    7000:	6b c0       	rjmp	.+214    	; 0x70d8 <__ctors_end>
    7002:	00 00       	nop
    7004:	aa c0       	rjmp	.+340    	; 0x715a <__vector_1>
    7006:	00 00       	nop
    7008:	8e c0       	rjmp	.+284    	; 0x7126 <__bad_interrupt>
    700a:	00 00       	nop
    700c:	8c c0       	rjmp	.+280    	; 0x7126 <__bad_interrupt>
    700e:	00 00       	nop
    7010:	8a c0       	rjmp	.+276    	; 0x7126 <__bad_interrupt>
    7012:	00 00       	nop
    7014:	88 c0       	rjmp	.+272    	; 0x7126 <__bad_interrupt>
    7016:	00 00       	nop
    7018:	86 c0       	rjmp	.+268    	; 0x7126 <__bad_interrupt>
    701a:	00 00       	nop
    701c:	84 c0       	rjmp	.+264    	; 0x7126 <__bad_interrupt>
    701e:	00 00       	nop
    7020:	82 c0       	rjmp	.+260    	; 0x7126 <__bad_interrupt>
    7022:	00 00       	nop
    7024:	80 c0       	rjmp	.+256    	; 0x7126 <__bad_interrupt>
    7026:	00 00       	nop
    7028:	7e c0       	rjmp	.+252    	; 0x7126 <__bad_interrupt>
    702a:	00 00       	nop
    702c:	7c c0       	rjmp	.+248    	; 0x7126 <__bad_interrupt>
    702e:	00 00       	nop
    7030:	7a c0       	rjmp	.+244    	; 0x7126 <__bad_interrupt>
    7032:	00 00       	nop
    7034:	78 c0       	rjmp	.+240    	; 0x7126 <__bad_interrupt>
    7036:	00 00       	nop
    7038:	76 c0       	rjmp	.+236    	; 0x7126 <__bad_interrupt>
    703a:	00 00       	nop
    703c:	74 c0       	rjmp	.+232    	; 0x7126 <__bad_interrupt>
    703e:	00 00       	nop
    7040:	72 c0       	rjmp	.+228    	; 0x7126 <__bad_interrupt>
    7042:	00 00       	nop
    7044:	70 c0       	rjmp	.+224    	; 0x7126 <__bad_interrupt>
    7046:	00 00       	nop
    7048:	6e c0       	rjmp	.+220    	; 0x7126 <__bad_interrupt>
    704a:	00 00       	nop
    704c:	6c c0       	rjmp	.+216    	; 0x7126 <__bad_interrupt>
    704e:	00 00       	nop
    7050:	6a c0       	rjmp	.+212    	; 0x7126 <__bad_interrupt>
    7052:	00 00       	nop
    7054:	68 c0       	rjmp	.+208    	; 0x7126 <__bad_interrupt>
    7056:	00 00       	nop
    7058:	66 c0       	rjmp	.+204    	; 0x7126 <__bad_interrupt>
    705a:	00 00       	nop
    705c:	64 c0       	rjmp	.+200    	; 0x7126 <__bad_interrupt>
    705e:	00 00       	nop
    7060:	62 c0       	rjmp	.+196    	; 0x7126 <__bad_interrupt>
    7062:	00 00       	nop
    7064:	60 c0       	rjmp	.+192    	; 0x7126 <__bad_interrupt>
	...

00007068 <bootloader__do_spm>:
    7068:	ec 2d fd 2d b7 b6 b0 fc fd cf 27 bf e8 95 b7 b6     .-.-......'.....
    7078:	b0 fc fd cf 21 e1 b7 b6 b6 fc f4 cf 08 95           ....!.........

00007086 <usbDescriptorConfiguration>:
    7086:	09 02 12 00 01 01 00 80 32 09 04 00 00 00 00 00     ........2.......
	...

00007098 <usbDescriptorDevice>:
    7098:	12 01 10 01 ff 00 00 08 c0 16 dc 05 02 01 01 02     ................
    70a8:	00 01                                               ..

000070aa <usbDescriptorStringDevice>:
    70aa:	0e 03 55 00 53 00 42 00 61 00 73 00 70 00           ..U.S.B.a.s.p.

000070b8 <usbDescriptorStringVendor>:
    70b8:	1c 03 77 00 77 00 77 00 2e 00 66 00 69 00 73 00     ..w.w.w...f.i.s.
    70c8:	63 00 68 00 6c 00 2e 00 64 00 65 00                 c.h.l...d.e.

000070d4 <usbDescriptorString0>:
    70d4:	04 03 09 04                                         ....

000070d8 <__ctors_end>:
    70d8:	11 24       	eor	r1, r1
    70da:	1f be       	out	0x3f, r1	; 63
    70dc:	cf ef       	ldi	r28, 0xFF	; 255
    70de:	d8 e0       	ldi	r29, 0x08	; 8
    70e0:	de bf       	out	0x3e, r29	; 62
    70e2:	cd bf       	out	0x3d, r28	; 61

000070e4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND>:
/* ------------------------------------------------------------------------ */

#if (HAVE_BOOTLOADERENTRY_FROMSOFTWARE)
void __attribute__ ((section(".init3"),naked,used,no_instrument_function)) __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND(void);
void __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND(void) {
  asm volatile (
    70e4:	24 b7       	in	r18, 0x34	; 52
    70e6:	d8 e0       	ldi	r29, 0x08	; 8
    70e8:	ce ef       	ldi	r28, 0xFE	; 254
    70ea:	39 91       	ld	r19, Y+
    70ec:	38 33       	cpi	r19, 0x38	; 56
    70ee:	39 91       	ld	r19, Y+
    70f0:	09 f0       	breq	.+2      	; 0x70f4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done5>

000070f2 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_mismatch5>:
    70f2:	3f ef       	ldi	r19, 0xFF	; 255

000070f4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done5>:
    70f4:	30 93 3e 01 	sts	0x013E, r19
    70f8:	20 93 3d 01 	sts	0x013D, r18

000070fc <__do_copy_data>:
    70fc:	11 e0       	ldi	r17, 0x01	; 1
    70fe:	a0 e0       	ldi	r26, 0x00	; 0
    7100:	b1 e0       	ldi	r27, 0x01	; 1
    7102:	ec eb       	ldi	r30, 0xBC	; 188
    7104:	f8 e7       	ldi	r31, 0x78	; 120
    7106:	02 c0       	rjmp	.+4      	; 0x710c <__do_copy_data+0x10>
    7108:	05 90       	lpm	r0, Z+
    710a:	0d 92       	st	X+, r0
    710c:	a6 30       	cpi	r26, 0x06	; 6
    710e:	b1 07       	cpc	r27, r17
    7110:	d9 f7       	brne	.-10     	; 0x7108 <__do_copy_data+0xc>

00007112 <__do_clear_bss>:
    7112:	11 e0       	ldi	r17, 0x01	; 1
    7114:	a6 e0       	ldi	r26, 0x06	; 6
    7116:	b1 e0       	ldi	r27, 0x01	; 1
    7118:	01 c0       	rjmp	.+2      	; 0x711c <.do_clear_bss_start>

0000711a <.do_clear_bss_loop>:
    711a:	1d 92       	st	X+, r1

0000711c <.do_clear_bss_start>:
    711c:	ad 33       	cpi	r26, 0x3D	; 61
    711e:	b1 07       	cpc	r27, r17
    7120:	e1 f7       	brne	.-8      	; 0x711a <.do_clear_bss_loop>
    7122:	7f d1       	rcall	.+766    	; 0x7422 <main>
    7124:	c9 c3       	rjmp	.+1938   	; 0x78b8 <_exit>

00007126 <__bad_interrupt>:
    7126:	6c cf       	rjmp	.-296    	; 0x7000 <__vectors>

00007128 <usbCrc16>:
;   poly    r20+r21
;   scratch r23
;   resCrc  r24+r25 / r16+r17
;   ptr     X / Z
usbCrc16:
    mov     ptrL, argPtrL
    7128:	a8 2f       	mov	r26, r24
    mov     ptrH, argPtrH
    712a:	b9 2f       	mov	r27, r25
    ldi     resCrcL, 0
    712c:	80 e0       	ldi	r24, 0x00	; 0
    ldi     resCrcH, 0
    712e:	90 e0       	ldi	r25, 0x00	; 0
    ldi     polyL, lo8(0xa001)
    7130:	41 e0       	ldi	r20, 0x01	; 1
    ldi     polyH, hi8(0xa001)
    7132:	50 ea       	ldi	r21, 0xA0	; 160
    com     argLen      ; argLen = -argLen - 1: modified loop to ensure that carry is set
    7134:	60 95       	com	r22
    ldi     bitCnt, 0   ; loop counter with starnd condition = end condition
    7136:	30 e0       	ldi	r19, 0x00	; 0
    rjmp    usbCrcLoopEntry
    7138:	09 c0       	rjmp	.+18     	; 0x714c <usbCrcLoopEntry>

0000713a <usbCrcByteLoop>:
usbCrcByteLoop:
    ld      byte, ptr+
    713a:	2d 91       	ld	r18, X+
    eor     resCrcL, byte
    713c:	82 27       	eor	r24, r18

0000713e <usbCrcBitLoop>:
usbCrcBitLoop:
    ror     resCrcH     ; carry is always set here (see brcs jumps to here)
    713e:	97 95       	ror	r25
    ror     resCrcL
    7140:	87 95       	ror	r24
    brcs    usbCrcNoXor
    7142:	10 f0       	brcs	.+4      	; 0x7148 <usbCrcNoXor>
    eor     resCrcL, polyL
    7144:	84 27       	eor	r24, r20
    eor     resCrcH, polyH
    7146:	95 27       	eor	r25, r21

00007148 <usbCrcNoXor>:
usbCrcNoXor:
    subi    bitCnt, 224 ; (8 * 224) % 256 = 0; this loop iterates 8 times
    7148:	30 5e       	subi	r19, 0xE0	; 224
    brcs    usbCrcBitLoop
    714a:	c8 f3       	brcs	.-14     	; 0x713e <usbCrcBitLoop>

0000714c <usbCrcLoopEntry>:
usbCrcLoopEntry:
    subi    argLen, -1
    714c:	6f 5f       	subi	r22, 0xFF	; 255
    brcs    usbCrcByteLoop
    714e:	a8 f3       	brcs	.-22     	; 0x713a <usbCrcByteLoop>

00007150 <usbCrcReady>:
usbCrcReady:
    ret
    7150:	08 95       	ret

00007152 <usbCrc16Append>:

#endif /* USB_USE_FAST_CRC */

; extern unsigned usbCrc16Append(unsigned char *data, unsigned char len);
usbCrc16Append:
    rcall   usbCrc16
    7152:	ea df       	rcall	.-44     	; 0x7128 <usbCrc16>
    st      ptr+, resCrcL
    7154:	8d 93       	st	X+, r24
    st      ptr+, resCrcH
    7156:	9d 93       	st	X+, r25
    ret
    7158:	08 95       	ret

0000715a <__vector_1>:
; Numbers in brackets are clocks counted from center of last sync bit
; when instruction starts

USB_INTR_VECTOR:
;order of registers pushed: YL, SREG YH, [sofError], bitcnt, shift, x1, x2, x3, x4, cnt
    push    YL                  ;[-25] push only what is necessary to sync with edge ASAP
    715a:	cf 93       	push	r28
    in      YL, SREG            ;[-23]
    715c:	cf b7       	in	r28, 0x3f	; 63
    push    YL                  ;[-22]
    715e:	cf 93       	push	r28
    push    YH                  ;[-20]
    7160:	df 93       	push	r29

00007162 <waitForJ>:
;sync up with J to K edge during sync pattern -- use fastest possible loops
;The first part waits at most 1 bit long since we must be in sync pattern.
;YL is guarenteed to be < 0x80 because I flag is clear. When we jump to
;waitForJ, ensure that this prerequisite is met.
waitForJ:
    inc     YL
    7162:	c3 95       	inc	r28
    sbis    USBIN, USBMINUS
    7164:	4b 9b       	sbis	0x09, 3	; 9
    brne    waitForJ        ; just make sure we have ANY timeout
    7166:	e9 f7       	brne	.-6      	; 0x7162 <waitForJ>

00007168 <waitForK>:
waitForK:
;The following code results in a sampling window of < 1/4 bit which meets the spec.
    sbis    USBIN, USBMINUS     ;[-15]
    7168:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    foundK              ;[-14]
    716a:	0b c0       	rjmp	.+22     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    716c:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    foundK
    716e:	09 c0       	rjmp	.+18     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    7170:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    foundK
    7172:	07 c0       	rjmp	.+14     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    7174:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    foundK
    7176:	05 c0       	rjmp	.+10     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    7178:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    foundK
    717a:	03 c0       	rjmp	.+6      	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    717c:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    foundK
    717e:	01 c0       	rjmp	.+2      	; 0x7182 <foundK>
    sts     usbSofCount, YL
#endif  /* USB_COUNT_SOF */
#ifdef USB_SOF_HOOK
    USB_SOF_HOOK
#endif
    rjmp    sofError
    7180:	89 c0       	rjmp	.+274    	; 0x7294 <sofError>

00007182 <foundK>:
foundK:                         ;[-12]
;{3, 5} after falling D- edge, average delay: 4 cycles [we want 5 for center sampling]
;we have 1 bit time for setup purposes, then sample again. Numbers in brackets
;are cycles from center of first sync (double K) bit after the instruction
    push    bitcnt              ;[-12]
    7182:	6f 93       	push	r22
;   [---]                       ;[-11]
    lds     YL, usbInputBufOffset;[-10]
    7184:	c0 91 20 01 	lds	r28, 0x0120
;   [---]                       ;[-9]
    clr     YH                  ;[-8]
    7188:	dd 27       	eor	r29, r29
    subi    YL, lo8(-(usbRxBuf));[-7] [rx loop init]
    718a:	c9 5d       	subi	r28, 0xD9	; 217
    sbci    YH, hi8(-(usbRxBuf));[-6] [rx loop init]
    718c:	de 4f       	sbci	r29, 0xFE	; 254
    push    shift               ;[-5]
    718e:	2f 93       	push	r18
;   [---]                       ;[-4]
    ldi     bitcnt, 0x55        ;[-3] [rx loop init]
    7190:	65 e5       	ldi	r22, 0x55	; 85
    sbis    USBIN, USBMINUS     ;[-2] we want two bits K (sample 2 cycles too early)
    7192:	4b 9b       	sbis	0x09, 3	; 9
    rjmp    haveTwoBitsK        ;[-1]
    7194:	03 c0       	rjmp	.+6      	; 0x719c <haveTwoBitsK>
    pop     shift               ;[0] undo the push from before
    7196:	2f 91       	pop	r18
    pop     bitcnt              ;[2] undo the push from before
    7198:	6f 91       	pop	r22
    rjmp    waitForK            ;[4] this was not the end of sync, retry
    719a:	e6 cf       	rjmp	.-52     	; 0x7168 <waitForK>

0000719c <haveTwoBitsK>:

;----------------------------------------------------------------------------
; push more registers and initialize values while we sample the first bits:
;----------------------------------------------------------------------------
haveTwoBitsK:
    push    x1              ;[1]
    719c:	0f 93       	push	r16
    push    x2              ;[3]
    719e:	1f 93       	push	r17
    push    x3              ;[5]
    71a0:	4f 93       	push	r20
    ldi     shift, 0        ;[7]
    71a2:	20 e0       	ldi	r18, 0x00	; 0
    ldi     x3, 1<<4        ;[8] [rx loop init] first sample is inverse bit, compensate that
    71a4:	40 e1       	ldi	r20, 0x10	; 16
    push    x4              ;[9] == leap
    71a6:	5f 93       	push	r21

    in      x1, USBIN       ;[11] <-- sample bit 0
    71a8:	09 b1       	in	r16, 0x09	; 9
    andi    x1, USBMASK     ;[12]
    71aa:	0c 70       	andi	r16, 0x0C	; 12
    bst     x1, USBMINUS    ;[13]
    71ac:	03 fb       	bst	r16, 3
    bld     shift, 7        ;[14]
    71ae:	27 f9       	bld	r18, 7
    push    cnt             ;[15]
    71b0:	3f 93       	push	r19
    ldi     leap, 0         ;[17] [rx loop init]
    71b2:	50 e0       	ldi	r21, 0x00	; 0
    ldi     cnt, USB_BUFSIZE;[18] [rx loop init]
    71b4:	3b e0       	ldi	r19, 0x0B	; 11
    rjmp    rxbit1          ;[19] arrives at [21]
    71b6:	39 c0       	rjmp	.+114    	; 0x722a <rxbit1>

000071b8 <unstuff6>:

; duration of unstuffing code should be 10.66666667 cycles. We adjust "leap"
; accordingly to approximate this value in the long run.

unstuff6:
    andi    x2, USBMASK ;[03]
    71b8:	1c 70       	andi	r17, 0x0C	; 12
    ori     x3, 1<<6    ;[04] will not be shifted any more
    71ba:	40 64       	ori	r20, 0x40	; 64
    andi    shift, ~0x80;[05]
    71bc:	2f 77       	andi	r18, 0x7F	; 127
    mov     x1, x2      ;[06] sampled bit 7 is actually re-sampled bit 6
    71be:	01 2f       	mov	r16, r17
    subi    leap, -1    ;[07] total duration = 11 bits -> subtract 1/3
    71c0:	5f 5f       	subi	r21, 0xFF	; 255
    rjmp    didUnstuff6 ;[08]
    71c2:	1e c0       	rjmp	.+60     	; 0x7200 <didUnstuff6>

000071c4 <unstuff7>:

unstuff7:
    ori     x3, 1<<7    ;[09] will not be shifted any more
    71c4:	40 68       	ori	r20, 0x80	; 128
    in      x2, USBIN   ;[00] [10]  re-sample bit 7
    71c6:	19 b1       	in	r17, 0x09	; 9
    andi    x2, USBMASK ;[01]
    71c8:	1c 70       	andi	r17, 0x0C	; 12
    andi    shift, ~0x80;[02]
    71ca:	2f 77       	andi	r18, 0x7F	; 127
    subi    leap, 2     ;[03] total duration = 10 bits -> add 1/3
    71cc:	52 50       	subi	r21, 0x02	; 2
    rjmp    didUnstuff7 ;[04]
    71ce:	1f c0       	rjmp	.+62     	; 0x720e <didUnstuff7>

000071d0 <unstuffEven>:

unstuffEven:
    ori     x3, 1<<6    ;[09] will be shifted right 6 times for bit 0
    71d0:	40 64       	ori	r20, 0x40	; 64
    in      x1, USBIN   ;[00] [10]
    71d2:	09 b1       	in	r16, 0x09	; 9
    andi    shift, ~0x80;[01]
    71d4:	2f 77       	andi	r18, 0x7F	; 127
    andi    x1, USBMASK ;[02]
    71d6:	0c 70       	andi	r16, 0x0C	; 12
    breq    se0         ;[03]
    71d8:	d1 f1       	breq	.+116    	; 0x724e <se0>
    subi    leap, -1    ;[04] total duration = 11 bits -> subtract 1/3
    71da:	5f 5f       	subi	r21, 0xFF	; 255
    nop2                ;[05]
    71dc:	00 c0       	rjmp	.+0      	; 0x71de <unstuffEven+0xe>
    rjmp    didUnstuffE ;[06]
    71de:	23 c0       	rjmp	.+70     	; 0x7226 <didUnstuffE>

000071e0 <unstuffOdd>:

unstuffOdd:
    ori     x3, 1<<5    ;[09] will be shifted right 4 times for bit 1
    71e0:	40 62       	ori	r20, 0x20	; 32
    in      x2, USBIN   ;[00] [10]
    71e2:	19 b1       	in	r17, 0x09	; 9
    andi    shift, ~0x80;[01]
    71e4:	2f 77       	andi	r18, 0x7F	; 127
    andi    x2, USBMASK ;[02]
    71e6:	1c 70       	andi	r17, 0x0C	; 12
    breq    se0         ;[03]
    71e8:	91 f1       	breq	.+100    	; 0x724e <se0>
    subi    leap, -1    ;[04] total duration = 11 bits -> subtract 1/3
    71ea:	5f 5f       	subi	r21, 0xFF	; 255
    nop2                ;[05]
    71ec:	00 c0       	rjmp	.+0      	; 0x71ee <unstuffOdd+0xe>
    rjmp    didUnstuffO ;[06]
    71ee:	25 c0       	rjmp	.+74     	; 0x723a <didUnstuffO>

000071f0 <rxByteLoop>:

rxByteLoop:
    andi    x1, USBMASK ;[03]
    71f0:	0c 70       	andi	r16, 0x0C	; 12
    eor     x2, x1      ;[04]
    71f2:	10 27       	eor	r17, r16
    subi    leap, 1     ;[05]
    71f4:	51 50       	subi	r21, 0x01	; 1
    brpl    skipLeap    ;[06]
    71f6:	12 f4       	brpl	.+4      	; 0x71fc <skipLeap>
    subi    leap, -3    ;1 one leap cycle every 3rd byte -> 85 + 1/3 cycles per byte
    71f8:	5d 5f       	subi	r21, 0xFD	; 253
	...

000071fc <skipLeap>:
    nop                 ;1
skipLeap:
    subi    x2, 1       ;[08]
    71fc:	11 50       	subi	r17, 0x01	; 1
    ror     shift       ;[09]
    71fe:	27 95       	ror	r18

00007200 <didUnstuff6>:
didUnstuff6:
    cpi     shift, 0xfc ;[10]
    7200:	2c 3f       	cpi	r18, 0xFC	; 252
    in      x2, USBIN   ;[00] [11] <-- sample bit 7
    7202:	19 b1       	in	r17, 0x09	; 9
    brcc    unstuff6    ;[01]
    7204:	c8 f6       	brcc	.-78     	; 0x71b8 <unstuff6>
    andi    x2, USBMASK ;[02]
    7206:	1c 70       	andi	r17, 0x0C	; 12
    eor     x1, x2      ;[03]
    7208:	01 27       	eor	r16, r17
    subi    x1, 1       ;[04]
    720a:	01 50       	subi	r16, 0x01	; 1
    ror     shift       ;[05]
    720c:	27 95       	ror	r18

0000720e <didUnstuff7>:
didUnstuff7:
    cpi     shift, 0xfc ;[06]
    720e:	2c 3f       	cpi	r18, 0xFC	; 252
    brcc    unstuff7    ;[07]
    7210:	c8 f6       	brcc	.-78     	; 0x71c4 <unstuff7>
    eor     x3, shift   ;[08] reconstruct: x3 is 1 at bit locations we changed, 0 at others
    7212:	42 27       	eor	r20, r18
    st      y+, x3      ;[09] store data
    7214:	49 93       	st	Y+, r20

00007216 <rxBitLoop>:
rxBitLoop:
    in      x1, USBIN   ;[00] [11] <-- sample bit 0/2/4
    7216:	09 b1       	in	r16, 0x09	; 9
    andi    x1, USBMASK ;[01]
    7218:	0c 70       	andi	r16, 0x0C	; 12
    eor     x2, x1      ;[02]
    721a:	10 27       	eor	r17, r16
    andi    x3, 0x3f    ;[03] topmost two bits reserved for 6 and 7
    721c:	4f 73       	andi	r20, 0x3F	; 63
    subi    x2, 1       ;[04]
    721e:	11 50       	subi	r17, 0x01	; 1
    ror     shift       ;[05]
    7220:	27 95       	ror	r18
    cpi     shift, 0xfc ;[06]
    7222:	2c 3f       	cpi	r18, 0xFC	; 252
    brcc    unstuffEven ;[07]
    7224:	a8 f6       	brcc	.-86     	; 0x71d0 <unstuffEven>

00007226 <didUnstuffE>:
didUnstuffE:
    lsr     x3          ;[08]
    7226:	46 95       	lsr	r20
    lsr     x3          ;[09]
    7228:	46 95       	lsr	r20

0000722a <rxbit1>:
rxbit1:
    in      x2, USBIN   ;[00] [10] <-- sample bit 1/3/5
    722a:	19 b1       	in	r17, 0x09	; 9
    andi    x2, USBMASK ;[01]
    722c:	1c 70       	andi	r17, 0x0C	; 12
    breq    se0         ;[02]
    722e:	79 f0       	breq	.+30     	; 0x724e <se0>
    eor     x1, x2      ;[03]
    7230:	01 27       	eor	r16, r17
    subi    x1, 1       ;[04]
    7232:	01 50       	subi	r16, 0x01	; 1
    ror     shift       ;[05]
    7234:	27 95       	ror	r18
    cpi     shift, 0xfc ;[06]
    7236:	2c 3f       	cpi	r18, 0xFC	; 252
    brcc    unstuffOdd  ;[07]
    7238:	98 f6       	brcc	.-90     	; 0x71e0 <unstuffOdd>

0000723a <didUnstuffO>:
didUnstuffO:
    subi    bitcnt, 0xab;[08] == addi 0x55, 0x55 = 0x100/3
    723a:	6b 5a       	subi	r22, 0xAB	; 171
    brcs    rxBitLoop   ;[09]
    723c:	60 f3       	brcs	.-40     	; 0x7216 <rxBitLoop>

    subi    cnt, 1      ;[10]
    723e:	31 50       	subi	r19, 0x01	; 1
    in      x1, USBIN   ;[00] [11] <-- sample bit 6
    7240:	09 b1       	in	r16, 0x09	; 9
    brcc    rxByteLoop  ;[01]
    7242:	b0 f6       	brcc	.-84     	; 0x71f0 <rxByteLoop>
    rjmp    overflow
    7244:	00 c0       	rjmp	.+0      	; 0x7246 <overflow>

00007246 <overflow>:
*/

#define token   x1

overflow:
    ldi     x2, 1<<USB_INTR_PENDING_BIT
    7246:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ; clear any pending interrupts
    7248:	1c bb       	out	0x1c, r17	; 28

0000724a <ignorePacket>:
ignorePacket:
    clr     token
    724a:	00 27       	eor	r16, r16
    rjmp    storeTokenAndReturn
    724c:	17 c0       	rjmp	.+46     	; 0x727c <handleSetupOrOut>

0000724e <se0>:
; Processing of received packet (numbers in brackets are cycles after center of SE0)
;----------------------------------------------------------------------------
;This is the only non-error exit point for the software receiver loop
;we don't check any CRCs here because there is no time left.
se0:
    subi    cnt, USB_BUFSIZE    ;[5]
    724e:	3b 50       	subi	r19, 0x0B	; 11
    neg     cnt                 ;[6]
    7250:	31 95       	neg	r19
    sub     YL, cnt             ;[7]
    7252:	c3 1b       	sub	r28, r19
    sbci    YH, 0               ;[8]
    7254:	d0 40       	sbci	r29, 0x00	; 0
    ldi     x2, 1<<USB_INTR_PENDING_BIT ;[9]
    7256:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ;[10] clear pending intr and check flag later. SE0 should be over.
    7258:	1c bb       	out	0x1c, r17	; 28
    ld      token, y            ;[11]
    725a:	08 81       	ld	r16, Y
    cpi     token, USBPID_DATA0 ;[13]
    725c:	03 3c       	cpi	r16, 0xC3	; 195
    breq    handleData          ;[14]
    725e:	f9 f0       	breq	.+62     	; 0x729e <handleData>
    cpi     token, USBPID_DATA1 ;[15]
    7260:	0b 34       	cpi	r16, 0x4B	; 75
    breq    handleData          ;[16]
    7262:	e9 f0       	breq	.+58     	; 0x729e <handleData>
    lds     shift, usbDeviceAddr;[17]
    7264:	20 91 1e 01 	lds	r18, 0x011E
    ldd     x2, y+1             ;[19] ADDR and 1 bit endpoint number
    7268:	19 81       	ldd	r17, Y+1	; 0x01
    lsl     x2                  ;[21] shift out 1 bit endpoint number
    726a:	11 0f       	add	r17, r17
    cpse    x2, shift           ;[22]
    726c:	12 13       	cpse	r17, r18
    rjmp    ignorePacket        ;[23]
    726e:	ed cf       	rjmp	.-38     	; 0x724a <ignorePacket>
/* only compute endpoint number in x3 if required later */
#if USB_CFG_HAVE_INTRIN_ENDPOINT || USB_CFG_IMPLEMENT_FN_WRITEOUT
    ldd     x3, y+2             ;[24] endpoint number + crc
    rol     x3                  ;[26] shift in LSB of endpoint
#endif
    cpi     token, USBPID_IN    ;[27]
    7270:	09 36       	cpi	r16, 0x69	; 105
    breq    handleIn            ;[28]
    7272:	51 f1       	breq	.+84     	; 0x72c8 <handleIn>
    cpi     token, USBPID_SETUP ;[29]
    7274:	0d 32       	cpi	r16, 0x2D	; 45
    breq    handleSetupOrOut    ;[30]
    7276:	11 f0       	breq	.+4      	; 0x727c <handleSetupOrOut>
    cpi     token, USBPID_OUT   ;[31]
    7278:	01 3e       	cpi	r16, 0xE1	; 225
    brne    ignorePacket        ;[32] must be ack, nak or whatever
    727a:	39 f7       	brne	.-50     	; 0x724a <ignorePacket>

0000727c <handleSetupOrOut>:
    andi    x3, 0xf             ;[32]
    breq    storeTokenAndReturn ;[33]
    mov     token, x3           ;[34] indicate that this is endpoint x OUT
#endif
storeTokenAndReturn:
    sts     usbCurrentTok, token;[35]
    727c:	00 93 25 01 	sts	0x0125, r16

00007280 <doReturn>:
doReturn:
    POP_STANDARD                ;[37] 12...16 cycles
    7280:	3f 91       	pop	r19
    7282:	5f 91       	pop	r21
    7284:	4f 91       	pop	r20
    7286:	1f 91       	pop	r17
    7288:	0f 91       	pop	r16
    728a:	2f 91       	pop	r18
    728c:	6f 91       	pop	r22
    USB_LOAD_PENDING(YL)        ;[49]
    728e:	cc b3       	in	r28, 0x1c	; 28
    sbrc    YL, USB_INTR_PENDING_BIT;[50] check whether data is already arriving
    7290:	c0 fd       	sbrc	r28, 0
    rjmp    waitForJ            ;[51] save the pops and pushes -- a new interrupt is already pending
    7292:	67 cf       	rjmp	.-306    	; 0x7162 <waitForJ>

00007294 <sofError>:
sofError:
    POP_RETI                    ;macro call
    7294:	df 91       	pop	r29
    7296:	cf 91       	pop	r28
    7298:	cf bf       	out	0x3f, r28	; 63
    729a:	cf 91       	pop	r28
    reti
    729c:	18 95       	reti

0000729e <handleData>:

handleData:
#if USB_CFG_CHECK_CRC
    CRC_CLEANUP_AND_CHECK       ; jumps to ignorePacket if CRC error
#endif
    lds     shift, usbCurrentTok;[18]
    729e:	20 91 25 01 	lds	r18, 0x0125
    tst     shift               ;[20]
    72a2:	22 23       	and	r18, r18
    breq    doReturn            ;[21]
    72a4:	69 f3       	breq	.-38     	; 0x7280 <doReturn>
    lds     x2, usbRxLen        ;[22]
    72a6:	10 91 23 01 	lds	r17, 0x0123
    tst     x2                  ;[24]
    72aa:	11 23       	and	r17, r17
    brne    sendNakAndReti      ;[25]
    72ac:	39 f5       	brne	.+78     	; 0x72fc <sendNakAndReti>
; 2006-03-11: The following two lines fix a problem where the device was not
; recognized if usbPoll() was called less frequently than once every 4 ms.
    cpi     cnt, 4              ;[26] zero sized data packets are status phase only -- ignore and ack
    72ae:	34 30       	cpi	r19, 0x04	; 4
    brmi    sendAckAndReti      ;[27] keep rx buffer clean -- we must not NAK next SETUP
    72b0:	3a f1       	brmi	.+78     	; 0x7300 <sendAckAndReti>
#if USB_CFG_CHECK_DATA_TOGGLING
    sts     usbCurrentDataToken, token  ; store for checking by C code
#endif
    sts     usbRxLen, cnt       ;[28] store received data, swap buffers
    72b2:	30 93 23 01 	sts	0x0123, r19
    sts     usbRxToken, shift   ;[30]
    72b6:	20 93 1f 01 	sts	0x011F, r18
    lds     x2, usbInputBufOffset;[32] swap buffers
    72ba:	10 91 20 01 	lds	r17, 0x0120
    ldi     cnt, USB_BUFSIZE    ;[34]
    72be:	3b e0       	ldi	r19, 0x0B	; 11
    sub     cnt, x2             ;[35]
    72c0:	31 1b       	sub	r19, r17
    sts     usbInputBufOffset, cnt;[36] buffers now swapped
    72c2:	30 93 20 01 	sts	0x0120, r19
    rjmp    sendAckAndReti      ;[38] 40 + 17 = 57 until SOP
    72c6:	1c c0       	rjmp	.+56     	; 0x7300 <sendAckAndReti>

000072c8 <handleIn>:

handleIn:
;We don't send any data as long as the C code has not processed the current
;input data and potentially updated the output data. That's more efficient
;in terms of code size than clearing the tx buffers when a packet is received.
    lds     x1, usbRxLen        ;[30]
    72c8:	00 91 23 01 	lds	r16, 0x0123
    cpi     x1, 1               ;[32] negative values are flow control, 0 means "buffer free"
    72cc:	01 30       	cpi	r16, 0x01	; 1
    brge    sendNakAndReti      ;[33] unprocessed input packet?
    72ce:	b4 f4       	brge	.+44     	; 0x72fc <sendNakAndReti>
    ldi     x1, USBPID_NAK      ;[34] prepare value for usbTxLen
    72d0:	0a e5       	ldi	r16, 0x5A	; 90
    brne    sendNakAndReti      ;[36]
#else
    brne    handleIn1           ;[36]
#endif
#endif
    lds     cnt, usbTxLen       ;[37]
    72d2:	30 91 00 01 	lds	r19, 0x0100
    sbrc    cnt, 4              ;[39] all handshake tokens have bit 4 set
    72d6:	34 fd       	sbrc	r19, 4
    rjmp    sendCntAndReti      ;[40] 42 + 16 = 58 until SOP
    72d8:	14 c0       	rjmp	.+40     	; 0x7302 <sendCntAndReti>
    sts     usbTxLen, x1        ;[41] x1 == USBPID_NAK from above
    72da:	00 93 00 01 	sts	0x0100, r16
    ldi     YL, lo8(usbTxBuf)   ;[43]
    72de:	c3 e1       	ldi	r28, 0x13	; 19
    ldi     YH, hi8(usbTxBuf)   ;[44]
    72e0:	d1 e0       	ldi	r29, 0x01	; 1
    rjmp    usbSendAndReti      ;[45] 57 + 12 = 59 until SOP
    72e2:	13 c0       	rjmp	.+38     	; 0x730a <usbSendAndReti>

000072e4 <bitstuffN>:
; J = (D+ = 0), (D- = 1)
; K = (D+ = 1), (D- = 0)
; Spec allows 7.5 bit times from EOP to SOP for replies

bitstuffN:
    eor     x1, x4          ;[5]
    72e4:	05 27       	eor	r16, r21
    ldi     x2, 0           ;[6]
    72e6:	10 e0       	ldi	r17, 0x00	; 0
    nop2                    ;[7]
    72e8:	00 c0       	rjmp	.+0      	; 0x72ea <bitstuffN+0x6>
    nop                     ;[9]
    72ea:	00 00       	nop
    out     USBOUT, x1      ;[10] <-- out
    72ec:	0b b9       	out	0x0b, r16	; 11
    rjmp    didStuffN       ;[0]
    72ee:	1a c0       	rjmp	.+52     	; 0x7324 <didStuffN>

000072f0 <bitstuff6>:
    
bitstuff6:
    eor     x1, x4          ;[5]
    72f0:	05 27       	eor	r16, r21
    ldi     x2, 0           ;[6] Carry is zero due to brcc
    72f2:	10 e0       	ldi	r17, 0x00	; 0
    rol     shift           ;[7] compensate for ror shift at branch destination
    72f4:	22 1f       	adc	r18, r18
    rjmp    didStuff6       ;[8]
    72f6:	1d c0       	rjmp	.+58     	; 0x7332 <didStuff6>

000072f8 <bitstuff7>:

bitstuff7:
    ldi     x2, 0           ;[2] Carry is zero due to brcc
    72f8:	10 e0       	ldi	r17, 0x00	; 0
    rjmp    didStuff7       ;[3]
    72fa:	21 c0       	rjmp	.+66     	; 0x733e <didStuff7>

000072fc <sendNakAndReti>:


sendNakAndReti:
    ldi     x3, USBPID_NAK  ;[-18]
    72fc:	4a e5       	ldi	r20, 0x5A	; 90
    rjmp    sendX3AndReti   ;[-17]
    72fe:	02 c0       	rjmp	.+4      	; 0x7304 <sendX3AndReti>

00007300 <sendAckAndReti>:
sendAckAndReti:
    ldi     cnt, USBPID_ACK ;[-17]
    7300:	32 ed       	ldi	r19, 0xD2	; 210

00007302 <sendCntAndReti>:
sendCntAndReti:
    mov     x3, cnt         ;[-16]
    7302:	43 2f       	mov	r20, r19

00007304 <sendX3AndReti>:
sendX3AndReti:
    ldi     YL, 20          ;[-15] x3==r20 address is 20
    7304:	c4 e1       	ldi	r28, 0x14	; 20
    ldi     YH, 0           ;[-14]
    7306:	d0 e0       	ldi	r29, 0x00	; 0
    ldi     cnt, 2          ;[-13]
    7308:	32 e0       	ldi	r19, 0x02	; 2

0000730a <usbSendAndReti>:
;uses: x1...x4, btcnt, shift, cnt, Y
;Numbers in brackets are time since first bit of sync pattern is sent
;We don't match the transfer rate exactly (don't insert leap cycles every third
;byte) because the spec demands only 1.5% precision anyway.
usbSendAndReti:             ; 12 cycles until SOP
    in      x2, USBDDR      ;[-12]
    730a:	1a b1       	in	r17, 0x0a	; 10
    ori     x2, USBMASK     ;[-11]
    730c:	1c 60       	ori	r17, 0x0C	; 12
    sbi     USBOUT, USBMINUS;[-10] prepare idle state; D+ and D- must have been 0 (no pullups)
    730e:	5b 9a       	sbi	0x0b, 3	; 11
    in      x1, USBOUT      ;[-8] port mirror for tx loop
    7310:	0b b1       	in	r16, 0x0b	; 11
    out     USBDDR, x2      ;[-7] <- acquire bus
    7312:	1a b9       	out	0x0a, r17	; 10
; need not init x2 (bitstuff history) because sync starts with 0
    ldi     x4, USBMASK     ;[-6] exor mask
    7314:	5c e0       	ldi	r21, 0x0C	; 12
    ldi     shift, 0x80     ;[-5] sync byte is first byte sent
    7316:	20 e8       	ldi	r18, 0x80	; 128

00007318 <txByteLoop>:
txByteLoop:
    ldi     bitcnt, 0x35    ;[-4] [6] binary 0011 0101
    7318:	65 e3       	ldi	r22, 0x35	; 53

0000731a <txBitLoop>:
txBitLoop:
    sbrs    shift, 0        ;[-3] [7]
    731a:	20 ff       	sbrs	r18, 0
    eor     x1, x4          ;[-2] [8]
    731c:	05 27       	eor	r16, r21
    out     USBOUT, x1      ;[-1] [9] <-- out N
    731e:	0b b9       	out	0x0b, r16	; 11
    ror     shift           ;[0] [10]
    7320:	27 95       	ror	r18
    ror     x2              ;[1]
    7322:	17 95       	ror	r17

00007324 <didStuffN>:
didStuffN:
    cpi     x2, 0xfc        ;[2]
    7324:	1c 3f       	cpi	r17, 0xFC	; 252
    brcc    bitstuffN       ;[3]
    7326:	f0 f6       	brcc	.-68     	; 0x72e4 <bitstuffN>
    lsr     bitcnt          ;[4]
    7328:	66 95       	lsr	r22
    brcc    txBitLoop       ;[5]
    732a:	b8 f7       	brcc	.-18     	; 0x731a <txBitLoop>
    brne    txBitLoop       ;[6]
    732c:	b1 f7       	brne	.-20     	; 0x731a <txBitLoop>

    sbrs    shift, 0        ;[7]
    732e:	20 ff       	sbrs	r18, 0
    eor     x1, x4          ;[8]
    7330:	05 27       	eor	r16, r21

00007332 <didStuff6>:
didStuff6:
    out     USBOUT, x1      ;[-1] [9] <-- out 6
    7332:	0b b9       	out	0x0b, r16	; 11
    ror     shift           ;[0] [10]
    7334:	27 95       	ror	r18
    ror     x2              ;[1]
    7336:	17 95       	ror	r17
    cpi     x2, 0xfc        ;[2]
    7338:	1c 3f       	cpi	r17, 0xFC	; 252
    brcc    bitstuff6       ;[3]
    733a:	d0 f6       	brcc	.-76     	; 0x72f0 <bitstuff6>
    ror     shift           ;[4]
    733c:	27 95       	ror	r18

0000733e <didStuff7>:
didStuff7:
    ror     x2              ;[5]
    733e:	17 95       	ror	r17
    sbrs    x2, 7           ;[6]
    7340:	17 ff       	sbrs	r17, 7
    eor     x1, x4          ;[7]
    7342:	05 27       	eor	r16, r21
    nop                     ;[8]
    7344:	00 00       	nop
    cpi     x2, 0xfc        ;[9]
    7346:	1c 3f       	cpi	r17, 0xFC	; 252
    out     USBOUT, x1      ;[-1][10] <-- out 7
    7348:	0b b9       	out	0x0b, r16	; 11
    brcc    bitstuff7       ;[0] [11]
    734a:	b0 f6       	brcc	.-84     	; 0x72f8 <bitstuff7>
    ld      shift, y+       ;[1]
    734c:	29 91       	ld	r18, Y+
    dec     cnt             ;[3]
    734e:	3a 95       	dec	r19
    brne    txByteLoop      ;[4]
    7350:	19 f7       	brne	.-58     	; 0x7318 <txByteLoop>
;make SE0:
    cbr     x1, USBMASK     ;[5] prepare SE0 [spec says EOP may be 21 to 25 cycles]
    7352:	03 7f       	andi	r16, 0xF3	; 243
    lds     x2, usbNewDeviceAddr;[6]
    7354:	10 91 24 01 	lds	r17, 0x0124
    lsl     x2              ;[8] we compare with left shifted address
    7358:	11 0f       	add	r17, r17
    subi    YL, 20 + 2      ;[9] Only assign address on data packets, not ACK/NAK in x3
    735a:	c6 51       	subi	r28, 0x16	; 22
    sbci    YH, 0           ;[10]
    735c:	d0 40       	sbci	r29, 0x00	; 0
    out     USBOUT, x1      ;[11] <-- out SE0 -- from now 2 bits = 22 cycles until bus idle
    735e:	0b b9       	out	0x0b, r16	; 11
;2006-03-06: moved transfer of new address to usbDeviceAddr from C-Code to asm:
;set address only after data packet was sent, not after handshake
    breq    skipAddrAssign  ;[0]
    7360:	11 f0       	breq	.+4      	; 0x7366 <skipAddrAssign>
    sts     usbDeviceAddr, x2; if not skipped: SE0 is one cycle longer
    7362:	10 93 1e 01 	sts	0x011E, r17

00007366 <skipAddrAssign>:
skipAddrAssign:
;end of usbDeviceAddress transfer
    ldi     x2, 1<<USB_INTR_PENDING_BIT;[2] int0 occurred during TX -- clear pending flag
    7366:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)   ;[3]
    7368:	1c bb       	out	0x1c, r17	; 28
    ori     x1, USBIDLE     ;[4]
    736a:	08 60       	ori	r16, 0x08	; 8
    in      x2, USBDDR      ;[5]
    736c:	1a b1       	in	r17, 0x0a	; 10
    cbr     x2, USBMASK     ;[6] set both pins to input
    736e:	13 7f       	andi	r17, 0xF3	; 243
    mov     x3, x1          ;[7]
    7370:	40 2f       	mov	r20, r16
    cbr     x3, USBMASK     ;[8] configure no pullup on both pins
    7372:	43 7f       	andi	r20, 0xF3	; 243
    ldi     x4, 4           ;[9]
    7374:	54 e0       	ldi	r21, 0x04	; 4

00007376 <se0Delay>:
se0Delay:
    dec     x4              ;[10] [13] [16] [19]
    7376:	5a 95       	dec	r21
    brne    se0Delay        ;[11] [14] [17] [20]
    7378:	f1 f7       	brne	.-4      	; 0x7376 <se0Delay>
    out     USBOUT, x1      ;[21] <-- out J (idle) -- end of SE0 (EOP signal)
    737a:	0b b9       	out	0x0b, r16	; 11
    out     USBDDR, x2      ;[22] <-- release bus now
    737c:	1a b9       	out	0x0a, r17	; 10
    out     USBOUT, x3      ;[23] <-- ensure no pull-up resistors are active
    737e:	4b b9       	out	0x0b, r20	; 11
    rjmp    doReturn
    7380:	7f cf       	rjmp	.-258    	; 0x7280 <doReturn>

00007382 <usbFunctionSetup_USBASP_FUNC_TRANSMIT>:
#endif

/* ------------------------------------------------------------------------ */


uchar usbFunctionSetup_USBASP_FUNC_TRANSMIT(usbRequest_t *rq) {
    7382:	dc 01       	movw	r26, r24
  uchar rval = 0;
  usbWord_t address;
  address.bytes[1] = rq->wValue.bytes[1];
    7384:	13 96       	adiw	r26, 0x03	; 3
    7386:	3c 91       	ld	r19, X
    7388:	13 97       	sbiw	r26, 0x03	; 3
    738a:	93 2f       	mov	r25, r19
  address.bytes[0] = rq->wIndex.bytes[0];
    738c:	14 96       	adiw	r26, 0x04	; 4
    738e:	ec 91       	ld	r30, X
    7390:	14 97       	sbiw	r26, 0x04	; 4
    7392:	8e 2f       	mov	r24, r30

  if(rq->wValue.bytes[0] == 0x30){        /* read signature */
    7394:	12 96       	adiw	r26, 0x02	; 2
    7396:	2c 91       	ld	r18, X
    7398:	12 97       	sbiw	r26, 0x02	; 2
    739a:	20 33       	cpi	r18, 0x30	; 48
    739c:	31 f4       	brne	.+12     	; 0x73aa <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x28>
    rval = rq->wIndex.bytes[0] & 3;
    739e:	e3 70       	andi	r30, 0x03	; 3
    rval = signatureBytes[rval];
    73a0:	f0 e0       	ldi	r31, 0x00	; 0
    73a2:	ef 5f       	subi	r30, 0xFF	; 255
    73a4:	fe 4f       	sbci	r31, 0xFE	; 254
    73a6:	80 81       	ld	r24, Z
    73a8:	08 95       	ret
defined (__AVR_ATmega1280__) ||													\
defined (__AVR_ATmega1281__) ||													\
defined (__AVR_ATmega1284__) || defined (__AVR_ATmega1284P__)  ||													\
defined (__AVR_ATmega2560__) ||													\
defined (__AVR_ATmega2561__)
  }else if(rq->wValue.bytes[0] == 0x58 && rq->wValue.bytes[1] == 0x00){  /* read lock bits */
    73aa:	28 35       	cpi	r18, 0x58	; 88
    73ac:	29 f4       	brne	.+10     	; 0x73b8 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x36>
    73ae:	33 23       	and	r19, r19
    73b0:	51 f4       	brne	.+20     	; 0x73c6 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x44>
      rval = boot_lock_fuse_bits_get(GET_LOCK_BITS);
    73b2:	e1 e0       	ldi	r30, 0x01	; 1
    73b4:	f0 e0       	ldi	r31, 0x00	; 0
    73b6:	10 c0       	rjmp	.+32     	; 0x73d8 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x56>
  }else if(rq->wValue.bytes[0] == 0x50 && rq->wValue.bytes[1] == 0x00){  /* read lfuse bits */
    73b8:	20 35       	cpi	r18, 0x50	; 80
    73ba:	99 f4       	brne	.+38     	; 0x73e2 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x60>
    73bc:	33 23       	and	r19, r19
    73be:	41 f4       	brne	.+16     	; 0x73d0 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x4e>
      rval = boot_lock_fuse_bits_get(GET_LOW_FUSE_BITS);
    73c0:	e0 e0       	ldi	r30, 0x00	; 0
    73c2:	f0 e0       	ldi	r31, 0x00	; 0
    73c4:	09 c0       	rjmp	.+18     	; 0x73d8 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x56>
  }else if(rq->wValue.bytes[0] == 0x58 && rq->wValue.bytes[1] == 0x08){  /* read hfuse bits */
    73c6:	38 30       	cpi	r19, 0x08	; 8
    73c8:	51 f5       	brne	.+84     	; 0x741e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x9c>
      rval = boot_lock_fuse_bits_get(GET_HIGH_FUSE_BITS);
    73ca:	e3 e0       	ldi	r30, 0x03	; 3
    73cc:	f0 e0       	ldi	r31, 0x00	; 0
    73ce:	04 c0       	rjmp	.+8      	; 0x73d8 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x56>
  }else if(rq->wValue.bytes[0] == 0x50 && rq->wValue.bytes[1] == 0x08){  /* read efuse bits */
    73d0:	38 30       	cpi	r19, 0x08	; 8
    73d2:	29 f5       	brne	.+74     	; 0x741e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x9c>
      rval = boot_lock_fuse_bits_get(GET_EXTENDED_FUSE_BITS );
    73d4:	e2 e0       	ldi	r30, 0x02	; 2
    73d6:	f0 e0       	ldi	r31, 0x00	; 0
    73d8:	89 e0       	ldi	r24, 0x09	; 9
    73da:	80 93 57 00 	sts	0x0057, r24
    73de:	84 91       	lpm	r24, Z
    73e0:	08 95       	ret
#else
  #warning "HAVE_READ_LOCK_FUSE is activated but MCU unknown -> will not support this feature"
#endif
#endif
#if HAVE_FLASH_BYTE_READACCESS
  }else if(rq->wValue.bytes[0] == 0x20){  /* read FLASH low  byte */
    73e2:	20 32       	cpi	r18, 0x20	; 32
    73e4:	21 f4       	brne	.+8      	; 0x73ee <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x6c>
#if ((FLASHEND) > 65535)
      rval = pgm_read_byte_far((((addr_t)address.word)<<1)+0);
#else
      rval = pgm_read_byte((((addr_t)address.word)<<1)+0);
    73e6:	fc 01       	movw	r30, r24
    73e8:	ee 0f       	add	r30, r30
    73ea:	ff 1f       	adc	r31, r31
    73ec:	06 c0       	rjmp	.+12     	; 0x73fa <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x78>
#endif
  }else if(rq->wValue.bytes[0] == 0x28){  /* read FLASH high byte */
    73ee:	28 32       	cpi	r18, 0x28	; 40
    73f0:	31 f4       	brne	.+12     	; 0x73fe <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x7c>
#if ((FLASHEND) > 65535)
      rval = pgm_read_byte_far((((addr_t)address.word)<<1)+1);
#else
      rval = pgm_read_byte((((addr_t)address.word)<<1)+1);
    73f2:	fc 01       	movw	r30, r24
    73f4:	ee 0f       	add	r30, r30
    73f6:	ff 1f       	adc	r31, r31
    73f8:	31 96       	adiw	r30, 0x01	; 1
    73fa:	84 91       	lpm	r24, Z
    73fc:	08 95       	ret
#endif
#endif
#if HAVE_EEPROM_BYTE_ACCESS
  }else if(rq->wValue.bytes[0] == 0xa0){  /* read EEPROM byte */
    73fe:	20 3a       	cpi	r18, 0xA0	; 160
    7400:	09 f4       	brne	.+2      	; 0x7404 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x82>
      rval = eeprom_read_byte((void *)address.word);
    7402:	44 c2       	rjmp	.+1160   	; 0x788c <__eerd_byte_m328p>
    7404:	20 3c       	cpi	r18, 0xC0	; 192
    7406:	21 f4       	brne	.+8      	; 0x7410 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x8e>
  }else if(rq->wValue.bytes[0] == 0xc0){  /* write EEPROM byte */
    7408:	15 96       	adiw	r26, 0x05	; 5
    740a:	6c 91       	ld	r22, X
      eeprom_write_byte((void *)address.word, rq->wIndex.bytes[1]);
    740c:	47 d2       	rcall	.+1166   	; 0x789c <__eewr_byte_m328p>
    740e:	05 c0       	rjmp	.+10     	; 0x741a <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x98>
    7410:	2f 3f       	cpi	r18, 0xFF	; 255
    7412:	29 f4       	brne	.+10     	; 0x741e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x9c>
    7414:	81 ef       	ldi	r24, 0xF1	; 241
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x5c) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x30) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0xac) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x50) && (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x58) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x38))
  }else if(rq->wValue.bytes[0] == (HAVE_BOOTLOADER_HIDDENEXITCOMMAND)){  /* cause a bootLoaderExit at disconnect */
    7416:	80 93 06 01 	sts	0x0106, r24
      stayinloader = 0xf1;  /* we need to be connected - so assume it */
    741a:	80 e0       	ldi	r24, 0x00	; 0
    741c:	08 95       	ret
    741e:	80 e0       	ldi	r24, 0x00	; 0

/* ------------------------------------------------------------------------ */


uchar usbFunctionSetup_USBASP_FUNC_TRANSMIT(usbRequest_t *rq) {
  uchar rval = 0;
    7420:	08 95       	ret

00007422 <main>:
    7422:	1a b8       	out	0x0a, r1	; 10
    7424:	80 e1       	ldi	r24, 0x10	; 16
  }else{
      /* ignore all others, return default value == 0 */
  }
        
  return rval;
}
    7426:	8b b9       	out	0x0b, r24	; 11
    /* initialize  */
    bootLoaderInit();
    odDebugInit();
    DBG1(0x00, 0, 0);
#ifndef NO_FLASH_WRITE
    GICR = (1 << IVCE);  /* enable change of interrupt vectors */
    7428:	81 e0       	ldi	r24, 0x01	; 1
    742a:	85 bf       	out	0x35, r24	; 53
    GICR = (1 << IVSEL); /* move interrupts to boot flash section */
    742c:	82 e0       	ldi	r24, 0x02	; 2
    742e:	85 bf       	out	0x35, r24	; 53
	#else
		//round up by default
		__ticks_dc = (uint32_t)(ceil(fabs(__tmp)));
	#endif

	__builtin_avr_delay_cycles(__ticks_dc);
    7430:	8f ef       	ldi	r24, 0xFF	; 255
    7432:	90 e7       	ldi	r25, 0x70	; 112
    7434:	a2 e0       	ldi	r26, 0x02	; 2
    7436:	81 50       	subi	r24, 0x01	; 1
    7438:	90 40       	sbci	r25, 0x00	; 0
    743a:	a0 40       	sbci	r26, 0x00	; 0
    743c:	e1 f7       	brne	.-8      	; 0x7436 <main+0x14>
    743e:	00 c0       	rjmp	.+0      	; 0x7440 <main+0x1e>
    7440:	00 00       	nop
#	if (BOOTLOADER_ALWAYSENTERPROGRAMMODE)
#		define bootLoaderCondition()	(true)
#	else
static inline bool bootLoaderCondition(void)
{
  if (__BOOTLOADERENTRY_FROMSOFTWARE__bootup_MCUCSR & (~(_BV(WDRF)))) {
    7442:	80 91 3d 01 	lds	r24, 0x013D
    7446:	87 7f       	andi	r24, 0xF7	; 247
    7448:	21 f4       	brne	.+8      	; 0x7452 <main+0x30>
  } else {
    if (__BOOTLOADERENTRY_FROMSOFTWARE__bootup_RAMEND_doesmatch == (__BOOTLOADERENTRY_FROMSOFTWARE__EXPECTEDADDRESS & 0xff)) {
    744a:	80 91 3e 01 	lds	r24, 0x013E
    744e:	88 23       	and	r24, r24
    7450:	11 f0       	breq	.+4      	; 0x7456 <main+0x34>
    _mywait(1+((HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT*F_CPU)/262144000));
#	else
    _delay_ms(HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT);
#	endif
#endif
    if(bootLoaderCondition()){
    7452:	4c 99       	sbic	0x09, 4	; 9
    7454:	0d c2       	rjmp	.+1050   	; 0x7870 <main+0x44e>
#		if ((defined(CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT)) && (!(BOOTLOADER_IGNOREPROGBUTTON)) && (BOOTLOADER_LOOPCYCLES_TIMEOUT))
      if (bootLoaderConditionSimple()) {
	stayinloader = stayinloader_initialValue - 0x02;
      } else
#		endif
	      stayinloader = stayinloader_initialValue;
    7456:	8e ef       	ldi	r24, 0xFE	; 254
    7458:	80 93 06 01 	sts	0x0106, r24
	 * Fix issue 6: (special thanks to coldtobi)
	 * 
	 * The WDRF bit in the MCUSR needs to be cleared first,
	 * otherwise it is not possible to disable the watchdog
	 */
	MCUSR &= ~(_BV(WDRF));
    745c:	84 b7       	in	r24, 0x34	; 52
    745e:	87 7f       	andi	r24, 0xF7	; 247
    7460:	84 bf       	out	0x34, r24	; 52
#	endif
	wdt_disable();    /* main app may have enabled watchdog */
    7462:	88 e1       	ldi	r24, 0x18	; 24
    7464:	0f b6       	in	r0, 0x3f	; 63
    7466:	f8 94       	cli
    7468:	80 93 60 00 	sts	0x0060, r24
    746c:	10 92 60 00 	sts	0x0060, r1
    7470:	0f be       	out	0x3f, r0	; 63
#endif
	MCUCSR = 0;       /* clear all reset flags for next time */
    7472:	14 be       	out	0x34, r1	; 52
/* ------------------------------------------------------------------------- */

USB_PUBLIC void usbInit(void)
{
#if USB_INTR_CFG_SET != 0
    USB_INTR_CFG |= USB_INTR_CFG_SET;
    7474:	80 91 69 00 	lds	r24, 0x0069
    7478:	82 60       	ori	r24, 0x02	; 2
    747a:	80 93 69 00 	sts	0x0069, r24
#endif
#if USB_INTR_CFG_CLR != 0
    USB_INTR_CFG &= ~(USB_INTR_CFG_CLR);
#endif
    USB_INTR_ENABLE |= (1 << USB_INTR_ENABLE_BIT);
    747e:	e8 9a       	sbi	0x1d, 0	; 29
#endif

static void initForUsbConnectivity(void)
{
    usbInit();
    STATUS_LED_DDR |= (1 << STATUS_LED_PIN); 
    7480:	55 9a       	sbi	0x0a, 5	; 10
    LED_ON;
    7482:	5d 9a       	sbi	0x0b, 5	; 11
    /* enforce USB re-enumerate: */
    usbDeviceDisconnect();  /* do this while interrupts are disabled */
    7484:	53 9a       	sbi	0x0a, 3	; 10
    7486:	8f ef       	ldi	r24, 0xFF	; 255
    7488:	91 eb       	ldi	r25, 0xB1	; 177
    748a:	ac e0       	ldi	r26, 0x0C	; 12
    748c:	81 50       	subi	r24, 0x01	; 1
    748e:	90 40       	sbci	r25, 0x00	; 0
    7490:	a0 40       	sbci	r26, 0x00	; 0
    7492:	e1 f7       	brne	.-8      	; 0x748c <main+0x6a>
    7494:	00 c0       	rjmp	.+0      	; 0x7496 <main+0x74>
    7496:	00 00       	nop
     */
    _mywait(1 + (F_CPU/1048576));
#else
    _delay_ms(260);         /* fake USB disconnect for > 250 ms */
#endif
    usbDeviceConnect();
    7498:	53 98       	cbi	0x0a, 3	; 10
    sei();
    749a:	78 94       	sei
USB_PUBLIC void usbPoll(void)
{
schar   len;
uchar   i;

    len = usbRxLen - 3;
    749c:	20 91 23 01 	lds	r18, 0x0123
    74a0:	23 50       	subi	r18, 0x03	; 3
    if(len >= 0){
    74a2:	27 fd       	sbrc	r18, 7
    74a4:	54 c1       	rjmp	.+680    	; 0x774e <main+0x32c>
 * need data integrity checks with this driver, check the CRC in your app
 * code and report errors back to the host. Since the ACK was already sent,
 * retries must be handled on application level.
 * unsigned crc = usbCrc16(buffer + 1, usbRxLen - 3);
 */
        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
    74a6:	30 91 20 01 	lds	r19, 0x0120
    74aa:	8c e0       	ldi	r24, 0x0C	; 12
    74ac:	90 e0       	ldi	r25, 0x00	; 0
    74ae:	83 1b       	sub	r24, r19
    74b0:	91 09       	sbc	r25, r1
    74b2:	8c 01       	movw	r16, r24
    74b4:	09 5d       	subi	r16, 0xD9	; 217
    74b6:	1e 4f       	sbci	r17, 0xFE	; 254
    if(usbRxToken < 0x10){  /* OUT to endpoint != 0: endpoint number in usbRxToken */
        usbFunctionWriteOut(data, len);
        return;
    }
#endif
    if(usbRxToken == (uchar)USBPID_SETUP){
    74b8:	30 91 1f 01 	lds	r19, 0x011F
    74bc:	3d 32       	cpi	r19, 0x2D	; 45
    74be:	09 f0       	breq	.+2      	; 0x74c2 <main+0xa0>
    74c0:	c9 c0       	rjmp	.+402    	; 0x7654 <main+0x232>
        if(len != 8)    /* Setup size must be always 8 bytes. Ignore otherwise. */
    74c2:	28 30       	cpi	r18, 0x08	; 8
    74c4:	09 f0       	breq	.+2      	; 0x74c8 <main+0xa6>
    74c6:	41 c1       	rjmp	.+642    	; 0x774a <main+0x328>
            return;
        usbMsgLen_t replyLen;
        usbTxBuf[0] = USBPID_DATA0;         /* initialize data toggling */
    74c8:	23 ec       	ldi	r18, 0xC3	; 195
    74ca:	20 93 13 01 	sts	0x0113, r18
        usbTxLen = USBPID_NAK;              /* abort pending transmit */
    74ce:	2a e5       	ldi	r18, 0x5A	; 90
    74d0:	20 93 00 01 	sts	0x0100, r18
        usbMsgFlags = 0;
    74d4:	10 92 07 01 	sts	0x0107, r1
        uchar type = rq->bmRequestType & USBRQ_TYPE_MASK;
    74d8:	d8 01       	movw	r26, r16
    74da:	4c 91       	ld	r20, X
    74dc:	24 2f       	mov	r18, r20
    74de:	20 76       	andi	r18, 0x60	; 96
    74e0:	11 96       	adiw	r26, 0x01	; 1
    74e2:	3c 91       	ld	r19, X
    74e4:	11 97       	sbiw	r26, 0x01	; 1
        if(type != USBRQ_TYPE_STANDARD){    /* standard requests are handled by driver */
    74e6:	22 23       	and	r18, r18
    74e8:	d1 f1       	breq	.+116    	; 0x755e <main+0x13c>
{
usbRequest_t    *rq = (void *)data;
usbMsgLen_t     len = 0;
static uchar    replyBuffer[4];

    usbMsgPtr = (usbMsgPtr_t)replyBuffer;
    74ea:	88 e0       	ldi	r24, 0x08	; 8
    74ec:	91 e0       	ldi	r25, 0x01	; 1
    74ee:	90 93 22 01 	sts	0x0122, r25
    74f2:	80 93 21 01 	sts	0x0121, r24
    if(rq->bRequest == USBASP_FUNC_TRANSMIT){   /* emulate parts of ISP protocol */
    74f6:	33 30       	cpi	r19, 0x03	; 3
    74f8:	31 f4       	brne	.+12     	; 0x7506 <main+0xe4>
        replyBuffer[3] = usbFunctionSetup_USBASP_FUNC_TRANSMIT(rq);
    74fa:	c8 01       	movw	r24, r16
    74fc:	42 df       	rcall	.-380    	; 0x7382 <usbFunctionSetup_USBASP_FUNC_TRANSMIT>
    74fe:	80 93 0b 01 	sts	0x010B, r24
    7502:	24 e0       	ldi	r18, 0x04	; 4
        len = (usbMsgLen_t)4;
    7504:	98 c0       	rjmp	.+304    	; 0x7636 <main+0x214>
    7506:	35 30       	cpi	r19, 0x05	; 5
    }else if((rq->bRequest == USBASP_FUNC_ENABLEPROG) || (rq->bRequest == USBASP_FUNC_SETISPSCK)){
    7508:	31 f1       	breq	.+76     	; 0x7556 <main+0x134>
    750a:	3a 30       	cpi	r19, 0x0A	; 10
    750c:	21 f1       	breq	.+72     	; 0x7556 <main+0x134>
    750e:	83 2f       	mov	r24, r19
        /* replyBuffer[0] = 0; is never touched and thus always 0 which means success */
        len = (usbMsgLen_t)1;
    }else if(rq->bRequest >= USBASP_FUNC_READFLASH && rq->bRequest <= USBASP_FUNC_SETLONGADDRESS){
    7510:	84 50       	subi	r24, 0x04	; 4
    7512:	86 30       	cpi	r24, 0x06	; 6
    7514:	b0 f4       	brcc	.+44     	; 0x7542 <main+0x120>
    7516:	f8 01       	movw	r30, r16
        currentAddress.w[0] = rq->wValue.word;
    7518:	82 81       	ldd	r24, Z+2	; 0x02
    751a:	93 81       	ldd	r25, Z+3	; 0x03
    751c:	90 93 0d 01 	sts	0x010D, r25
    7520:	80 93 0c 01 	sts	0x010C, r24
    7524:	39 30       	cpi	r19, 0x09	; 9
        if(rq->bRequest == USBASP_FUNC_SETLONGADDRESS){
    7526:	c9 f0       	breq	.+50     	; 0x755a <main+0x138>
    7528:	26 81       	ldd	r18, Z+6	; 0x06
#if (FLASHEND) > 0xffff
            currentAddress.w[1] = rq->wIndex.word;
#endif
        }else{
            bytesRemaining = rq->wLength.bytes[0];
    752a:	20 93 0e 01 	sts	0x010E, r18
    752e:	85 81       	ldd	r24, Z+5	; 0x05
            /* if(rq->bRequest == USBASP_FUNC_WRITEFLASH) only evaluated during writeFlash anyway */
            isLastPage = rq->wIndex.bytes[1] & 0x02;
    7530:	82 70       	andi	r24, 0x02	; 2
    7532:	80 93 0f 01 	sts	0x010F, r24
    7536:	30 93 10 01 	sts	0x0110, r19
#if HAVE_EEPROM_PAGED_ACCESS
            currentRequest = rq->bRequest;
    753a:	47 fd       	sbrc	r20, 7
            replyLen = usbDriverSetup(rq);
        }
#if USB_CFG_IMPLEMENT_FN_READ || USB_CFG_IMPLEMENT_FN_WRITE
        if(replyLen == USB_NO_MSG){         /* use user-supplied read/write function */
            /* do some conditioning on replyLen, but on IN transfers only */
            if((rq->bmRequestType & USBRQ_DIR_MASK) != USBRQ_DIR_HOST_TO_DEVICE){
    753c:	78 c0       	rjmp	.+240    	; 0x762e <main+0x20c>
    753e:	2f ef       	ldi	r18, 0xFF	; 255
    7540:	76 c0       	rjmp	.+236    	; 0x762e <main+0x20c>
    7542:	80 91 06 01 	lds	r24, 0x0106
#if BOOTLOADER_CAN_EXIT
#	ifdef CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT
      /* let the main loop know for ever that here was activity */
      stayinloader	   &= (0xfc);
#	else
      stayinloader	   &= (0xfe);
    7546:	32 30       	cpi	r19, 0x02	; 2
            currentRequest = rq->bRequest;
#endif
            len = USB_NO_MSG; /* hand over to usbFunctionRead() / usbFunctionWrite() */
        }

    }else if(rq->bRequest == USBASP_FUNC_DISCONNECT){
    7548:	11 f4       	brne	.+4      	; 0x754e <main+0x12c>
    754a:	8e 7f       	andi	r24, 0xFE	; 254
#if BOOTLOADER_CAN_EXIT
#	ifdef CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT
      /* let the main loop know for ever that here was activity */
      stayinloader	   &= (0xfc);
#	else
      stayinloader	   &= (0xfe);
    754c:	01 c0       	rjmp	.+2      	; 0x7550 <main+0x12e>
    754e:	81 60       	ori	r24, 0x01	; 1
#	endif
#endif
    }else{
        /* ignore: others, but could be USBASP_FUNC_CONNECT */
#if BOOTLOADER_CAN_EXIT
	stayinloader	   |= (0x01);
    7550:	80 93 06 01 	sts	0x0106, r24
    7554:	02 c0       	rjmp	.+4      	; 0x755a <main+0x138>
    7556:	21 e0       	ldi	r18, 0x01	; 1
    if(rq->bRequest == USBASP_FUNC_TRANSMIT){   /* emulate parts of ISP protocol */
        replyBuffer[3] = usbFunctionSetup_USBASP_FUNC_TRANSMIT(rq);
        len = (usbMsgLen_t)4;
    }else if((rq->bRequest == USBASP_FUNC_ENABLEPROG) || (rq->bRequest == USBASP_FUNC_SETISPSCK)){
        /* replyBuffer[0] = 0; is never touched and thus always 0 which means success */
        len = (usbMsgLen_t)1;
    7558:	6e c0       	rjmp	.+220    	; 0x7636 <main+0x214>
    755a:	20 e0       	ldi	r18, 0x00	; 0


usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;
usbMsgLen_t     len = 0;
    755c:	6c c0       	rjmp	.+216    	; 0x7636 <main+0x214>
    755e:	d8 01       	movw	r26, r16
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
uchar   value = rq->wValue.bytes[0];
    7560:	12 96       	adiw	r26, 0x02	; 2
    7562:	2c 91       	ld	r18, X
    7564:	12 97       	sbiw	r26, 0x02	; 2
    7566:	10 92 1c 01 	sts	0x011C, r1
#if USB_CFG_IMPLEMENT_HALT
uchar   index = rq->wIndex.bytes[0];
#endif

    dataPtr[0] = 0; /* default reply common to USBRQ_GET_STATUS and USBRQ_GET_INTERFACE */
    756a:	33 23       	and	r19, r19
    SWITCH_START(rq->bRequest)
    SWITCH_CASE(USBRQ_GET_STATUS)           /* 0 */
    756c:	31 f4       	brne	.+12     	; 0x757a <main+0x158>
    756e:	10 92 1d 01 	sts	0x011D, r1
            dataPtr[0] =  USB_CFG_IS_SELF_POWERED;
#if USB_CFG_IMPLEMENT_HALT
        if(recipient == USBRQ_RCPT_ENDPOINT && index == 0x81)   /* request status for endpoint 1 */
            dataPtr[0] = usbTxLen1 == USBPID_STALL;
#endif
        dataPtr[1] = 0;
    7572:	8c e1       	ldi	r24, 0x1C	; 28
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    7574:	91 e0       	ldi	r25, 0x01	; 1
    7576:	22 e0       	ldi	r18, 0x02	; 2
#if USB_CFG_IMPLEMENT_HALT
        if(recipient == USBRQ_RCPT_ENDPOINT && index == 0x81)   /* request status for endpoint 1 */
            dataPtr[0] = usbTxLen1 == USBPID_STALL;
#endif
        dataPtr[1] = 0;
        len = 2;
    7578:	55 c0       	rjmp	.+170    	; 0x7624 <main+0x202>
    757a:	35 30       	cpi	r19, 0x05	; 5
        if(value == 0 && index == 0x81){    /* feature 0 == HALT for endpoint == 1 */
            usbTxLen1 = rq->bRequest == USBRQ_CLEAR_FEATURE ? USBPID_NAK : USBPID_STALL;
            usbResetDataToggling();
        }
#endif
    SWITCH_CASE(USBRQ_SET_ADDRESS)          /* 5 */
    757c:	19 f4       	brne	.+6      	; 0x7584 <main+0x162>
    757e:	20 93 24 01 	sts	0x0124, r18
        usbNewDeviceAddr = value;
    7582:	44 c0       	rjmp	.+136    	; 0x760c <main+0x1ea>
    7584:	36 30       	cpi	r19, 0x06	; 6
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
    7586:	e1 f5       	brne	.+120    	; 0x7600 <main+0x1de>
    7588:	fc 01       	movw	r30, r24
        _delay_ms(500);
#endif
    }
    //LED_OFF;
    leaveBootloader();
}
    758a:	e7 5d       	subi	r30, 0xD7	; 215
    758c:	fe 4f       	sbci	r31, 0xFE	; 254
    758e:	20 81       	ld	r18, Z
    7590:	86 5d       	subi	r24, 0xD6	; 214
    7592:	9e 4f       	sbci	r25, 0xFE	; 254
    7594:	fc 01       	movw	r30, r24
    7596:	80 81       	ld	r24, Z
    7598:	81 30       	cpi	r24, 0x01	; 1
{
usbMsgLen_t len = 0;
uchar       flags = USB_FLG_MSGPTR_IS_ROM;

    SWITCH_START(rq->wValue.bytes[1])
    SWITCH_CASE(USBDESCR_DEVICE)    /* 1 */
    759a:	19 f4       	brne	.+6      	; 0x75a2 <main+0x180>
    759c:	88 e9       	ldi	r24, 0x98	; 152
        GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_DEVICE, usbDescriptorDevice)
    759e:	90 e7       	ldi	r25, 0x70	; 112
    75a0:	04 c0       	rjmp	.+8      	; 0x75aa <main+0x188>
    75a2:	82 30       	cpi	r24, 0x02	; 2
    SWITCH_CASE(USBDESCR_CONFIG)    /* 2 */
    75a4:	41 f4       	brne	.+16     	; 0x75b6 <main+0x194>
    75a6:	86 e8       	ldi	r24, 0x86	; 134
        GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_CONFIGURATION, usbDescriptorConfiguration)
    75a8:	90 e7       	ldi	r25, 0x70	; 112
    75aa:	90 93 22 01 	sts	0x0122, r25
    75ae:	80 93 21 01 	sts	0x0121, r24
    75b2:	22 e1       	ldi	r18, 0x12	; 18
    75b4:	21 c0       	rjmp	.+66     	; 0x75f8 <main+0x1d6>
    75b6:	83 30       	cpi	r24, 0x03	; 3
    SWITCH_CASE(USBDESCR_STRING)    /* 3 */
    75b8:	f1 f4       	brne	.+60     	; 0x75f6 <main+0x1d4>
    75ba:	22 23       	and	r18, r18
        if(USB_CFG_DESCR_PROPS_STRINGS & USB_PROP_IS_RAM)
            flags = 0;
        len = usbFunctionDescriptor(rq);
#else   /* USB_CFG_DESCR_PROPS_STRINGS & USB_PROP_IS_DYNAMIC */
        SWITCH_START(rq->wValue.bytes[0])
        SWITCH_CASE(0)
    75bc:	41 f4       	brne	.+16     	; 0x75ce <main+0x1ac>
    75be:	84 ed       	ldi	r24, 0xD4	; 212
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_0, usbDescriptorString0)
    75c0:	90 e7       	ldi	r25, 0x70	; 112
    75c2:	90 93 22 01 	sts	0x0122, r25
    75c6:	80 93 21 01 	sts	0x0121, r24
    75ca:	24 e0       	ldi	r18, 0x04	; 4
    75cc:	15 c0       	rjmp	.+42     	; 0x75f8 <main+0x1d6>
    75ce:	21 30       	cpi	r18, 0x01	; 1
        SWITCH_CASE(1)
    75d0:	41 f4       	brne	.+16     	; 0x75e2 <main+0x1c0>
    75d2:	88 eb       	ldi	r24, 0xB8	; 184
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_VENDOR, usbDescriptorStringVendor)
    75d4:	90 e7       	ldi	r25, 0x70	; 112
    75d6:	90 93 22 01 	sts	0x0122, r25
    75da:	80 93 21 01 	sts	0x0121, r24
    75de:	2c e1       	ldi	r18, 0x1C	; 28
    75e0:	0b c0       	rjmp	.+22     	; 0x75f8 <main+0x1d6>
    75e2:	22 30       	cpi	r18, 0x02	; 2
        SWITCH_CASE(2)
    75e4:	41 f4       	brne	.+16     	; 0x75f6 <main+0x1d4>
    75e6:	8a ea       	ldi	r24, 0xAA	; 170
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_PRODUCT, usbDescriptorStringDevice)
    75e8:	90 e7       	ldi	r25, 0x70	; 112
    75ea:	90 93 22 01 	sts	0x0122, r25
    75ee:	80 93 21 01 	sts	0x0121, r24
    75f2:	2e e0       	ldi	r18, 0x0E	; 14
    75f4:	01 c0       	rjmp	.+2      	; 0x75f8 <main+0x1d6>
    75f6:	20 e0       	ldi	r18, 0x00	; 0
/* usbDriverDescriptor() is similar to usbFunctionDescriptor(), but used
 * internally for all types of descriptors.
 */
static inline usbMsgLen_t usbDriverDescriptor(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
    75f8:	80 e4       	ldi	r24, 0x40	; 64
    SWITCH_DEFAULT
        if(USB_CFG_DESCR_PROPS_UNKNOWN & USB_PROP_IS_DYNAMIC){
            len = usbFunctionDescriptor(rq);
        }
    SWITCH_END
    usbMsgFlags = flags;
    75fa:	80 93 07 01 	sts	0x0107, r24
    75fe:	1b c0       	rjmp	.+54     	; 0x7636 <main+0x214>
    7600:	38 30       	cpi	r19, 0x08	; 8
        usbNewDeviceAddr = value;
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
        len = usbDriverDescriptor(rq);
        goto skipMsgPtrAssignment;
    SWITCH_CASE(USBRQ_GET_CONFIGURATION)    /* 8 */
    7602:	69 f0       	breq	.+26     	; 0x761e <main+0x1fc>
    7604:	39 30       	cpi	r19, 0x09	; 9
        dataPtr = &usbConfiguration;  /* send current configuration value */
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
    7606:	29 f4       	brne	.+10     	; 0x7612 <main+0x1f0>
    7608:	20 93 26 01 	sts	0x0126, r18
        usbConfiguration = value;
    760c:	8c e1       	ldi	r24, 0x1C	; 28
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    760e:	91 e0       	ldi	r25, 0x01	; 1
    7610:	04 c0       	rjmp	.+8      	; 0x761a <main+0x1f8>
    7612:	8c e1       	ldi	r24, 0x1C	; 28
    7614:	91 e0       	ldi	r25, 0x01	; 1
    7616:	3a 30       	cpi	r19, 0x0A	; 10
        dataPtr = &usbConfiguration;  /* send current configuration value */
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
        usbConfiguration = value;
        usbResetStall();
    SWITCH_CASE(USBRQ_GET_INTERFACE)        /* 10 */
    7618:	21 f0       	breq	.+8      	; 0x7622 <main+0x200>
    761a:	20 e0       	ldi	r18, 0x00	; 0
/* usbDriverSetup() is similar to usbFunctionSetup(), but it's used for
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
    761c:	03 c0       	rjmp	.+6      	; 0x7624 <main+0x202>
    761e:	86 e2       	ldi	r24, 0x26	; 38
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
        len = usbDriverDescriptor(rq);
        goto skipMsgPtrAssignment;
    SWITCH_CASE(USBRQ_GET_CONFIGURATION)    /* 8 */
        dataPtr = &usbConfiguration;  /* send current configuration value */
    7620:	91 e0       	ldi	r25, 0x01	; 1
    7622:	21 e0       	ldi	r18, 0x01	; 1
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
        usbConfiguration = value;
        usbResetStall();
    SWITCH_CASE(USBRQ_GET_INTERFACE)        /* 10 */
        len = 1;
    7624:	90 93 22 01 	sts	0x0122, r25
        usbResetStall();
#endif
    SWITCH_DEFAULT                          /* 7=SET_DESCRIPTOR, 12=SYNC_FRAME */
        /* Should we add an optional hook here? */
    SWITCH_END
    usbMsgPtr = (usbMsgPtr_t)dataPtr;
    7628:	80 93 21 01 	sts	0x0121, r24
    762c:	04 c0       	rjmp	.+8      	; 0x7636 <main+0x214>
    762e:	80 e8       	ldi	r24, 0x80	; 128
                    replyLen = rq->wLength.bytes[0];
                }else{
                    replyLen = rq->wLength.word;
                }
            }
            usbMsgFlags = USB_FLG_USE_USER_RW;
    7630:	80 93 07 01 	sts	0x0107, r24
    7634:	0c c0       	rjmp	.+24     	; 0x764e <main+0x22c>
    7636:	d8 01       	movw	r26, r16
        }else   /* The 'else' prevents that we limit a replyLen of USB_NO_MSG to the maximum transfer len. */
#endif
        if(sizeof(replyLen) < sizeof(rq->wLength.word)){ /* help compiler with optimizing */
            if(!rq->wLength.bytes[1] && replyLen > rq->wLength.bytes[0])    /* limit length to max */
    7638:	17 96       	adiw	r26, 0x07	; 7
    763a:	8c 91       	ld	r24, X
    763c:	17 97       	sbiw	r26, 0x07	; 7
    763e:	88 23       	and	r24, r24
    7640:	31 f4       	brne	.+12     	; 0x764e <main+0x22c>
    7642:	16 96       	adiw	r26, 0x06	; 6
    7644:	8c 91       	ld	r24, X
    7646:	16 97       	sbiw	r26, 0x06	; 6
    7648:	82 17       	cp	r24, r18
    764a:	08 f4       	brcc	.+2      	; 0x764e <main+0x22c>
    764c:	28 2f       	mov	r18, r24
    764e:	20 93 05 01 	sts	0x0105, r18
                replyLen = rq->wLength.bytes[0];
        }else{
            if(replyLen > rq->wLength.word)     /* limit length to max */
                replyLen = rq->wLength.word;
        }
        usbMsgLen = replyLen;
    7652:	7b c0       	rjmp	.+246    	; 0x774a <main+0x328>
    7654:	80 91 07 01 	lds	r24, 0x0107
    }else{  /* usbRxToken must be USBPID_OUT, which means data phase of setup (control-out) */
#if USB_CFG_IMPLEMENT_FN_WRITE
        if(usbMsgFlags & USB_FLG_USE_USER_RW){
    7658:	87 ff       	sbrs	r24, 7
    765a:	77 c0       	rjmp	.+238    	; 0x774a <main+0x328>
    765c:	80 91 0e 01 	lds	r24, 0x010E
uchar usbFunctionWrite(uchar *data, uchar len)
{
uchar   i,isLast;

    DBG1(0x31, (void *)&currentAddress.l, 4);
    if(len > bytesRemaining)
    7660:	e2 2e       	mov	r14, r18
    7662:	82 17       	cp	r24, r18
    7664:	08 f4       	brcc	.+2      	; 0x7668 <main+0x246>
    7666:	e8 2e       	mov	r14, r24
    7668:	8e 19       	sub	r24, r14
        len = bytesRemaining;
    bytesRemaining -= len;
    766a:	80 93 0e 01 	sts	0x010E, r24
    766e:	d1 e0       	ldi	r29, 0x01	; 1
    isLast = bytesRemaining == 0;
    7670:	81 11       	cpse	r24, r1
    7672:	d0 e0       	ldi	r29, 0x00	; 0
    7674:	c0 e0       	ldi	r28, 0x00	; 0
    for(i = 0; i < len;) {
    7676:	62 c0       	rjmp	.+196    	; 0x773c <main+0x31a>
    7678:	20 91 10 01 	lds	r18, 0x0110
      if(currentRequest >= USBASP_FUNC_READEEPROM){
    767c:	80 91 0c 01 	lds	r24, 0x010C
    7680:	90 91 0d 01 	lds	r25, 0x010D
    7684:	27 30       	cpi	r18, 0x07	; 7
    7686:	68 f0       	brcs	.+26     	; 0x76a2 <main+0x280>
    7688:	9c 01       	movw	r18, r24
	eeprom_write_byte((void *)(currentAddress.w[0]++), *data++);
    768a:	2f 5f       	subi	r18, 0xFF	; 255
    768c:	3f 4f       	sbci	r19, 0xFF	; 255
    768e:	30 93 0d 01 	sts	0x010D, r19
    7692:	20 93 0c 01 	sts	0x010C, r18
    7696:	f8 01       	movw	r30, r16
    7698:	61 91       	ld	r22, Z+
    769a:	8f 01       	movw	r16, r30
    769c:	ff d0       	rcall	.+510    	; 0x789c <__eewr_byte_m328p>
    769e:	cf 5f       	subi	r28, 0xFF	; 255
    76a0:	4d c0       	rjmp	.+154    	; 0x773c <main+0x31a>
	i++;
    76a2:	f0 e7       	ldi	r31, 0x70	; 112
    76a4:	80 30       	cpi	r24, 0x00	; 0
      } else {
#if HAVE_BLB11_SOFTW_LOCKBIT
	if (CURRENT_ADDRESS >= (addr_t)(BOOTLOADER_PAGEADDR)) {
    76a6:	9f 07       	cpc	r25, r31
    76a8:	08 f0       	brcs	.+2      	; 0x76ac <main+0x28a>
    76aa:	4d c0       	rjmp	.+154    	; 0x7746 <main+0x324>
    76ac:	ce 5f       	subi	r28, 0xFE	; 254
    76ae:	f8 94       	cli
	  return 1;
	}
#endif
	i += 2;
    76b0:	e0 91 0c 01 	lds	r30, 0x010C
	DBG1(0x32, 0, 0);
	cli();
	boot_page_fill(CURRENT_ADDRESS, *(short *)data);
    76b4:	f0 91 0d 01 	lds	r31, 0x010D
    76b8:	d8 01       	movw	r26, r16
    76ba:	8d 91       	ld	r24, X+
    76bc:	9d 91       	ld	r25, X+
    76be:	8d 01       	movw	r16, r26
    76c0:	21 e0       	ldi	r18, 0x01	; 1
    76c2:	0c 01       	movw	r0, r24
    76c4:	20 93 57 00 	sts	0x0057, r18
    76c8:	e8 95       	spm
    76ca:	11 24       	eor	r1, r1
    76cc:	78 94       	sei
    76ce:	80 91 0c 01 	lds	r24, 0x010C
	sei();
	CURRENT_ADDRESS += 2;
    76d2:	90 91 0d 01 	lds	r25, 0x010D
    76d6:	02 96       	adiw	r24, 0x02	; 2
    76d8:	90 93 0d 01 	sts	0x010D, r25
    76dc:	80 93 0c 01 	sts	0x010C, r24
    76e0:	8f 77       	andi	r24, 0x7F	; 127
    76e2:	90 70       	andi	r25, 0x00	; 0
	data += 2;
	/* write page when we cross page boundary or we have the last partial page */
	if((currentAddress.w[0] & (SPM_PAGESIZE - 1)) == 0 || (isLast && i >= len && isLastPage)){
    76e4:	00 97       	sbiw	r24, 0x00	; 0
    76e6:	41 f0       	breq	.+16     	; 0x76f8 <main+0x2d6>
    76e8:	dd 23       	and	r29, r29
    76ea:	41 f1       	breq	.+80     	; 0x773c <main+0x31a>
    76ec:	ce 15       	cp	r28, r14
    76ee:	30 f1       	brcs	.+76     	; 0x773c <main+0x31a>
    76f0:	80 91 0f 01 	lds	r24, 0x010F
    76f4:	88 23       	and	r24, r24
    76f6:	11 f1       	breq	.+68     	; 0x773c <main+0x31a>
    76f8:	f8 94       	cli
    76fa:	e0 91 0c 01 	lds	r30, 0x010C
#if (!HAVE_CHIP_ERASE) || (HAVE_ONDEMAND_PAGEERASE)
	    DBG1(0x33, 0, 0);
#   ifndef NO_FLASH_WRITE
	    cli();
	    boot_page_erase(CURRENT_ADDRESS - 2);   /* erase page */
    76fe:	f0 91 0d 01 	lds	r31, 0x010D
    7702:	32 97       	sbiw	r30, 0x02	; 2
    7704:	83 e0       	ldi	r24, 0x03	; 3
    7706:	80 93 57 00 	sts	0x0057, r24
    770a:	e8 95       	spm
    770c:	78 94       	sei
    770e:	07 b6       	in	r0, 0x37	; 55
	    sei();
    7710:	00 fc       	sbrc	r0, 0
	    boot_spm_busy_wait();                   /* wait until page is erased */
    7712:	fd cf       	rjmp	.-6      	; 0x770e <main+0x2ec>
    7714:	f8 94       	cli
    7716:	e0 91 0c 01 	lds	r30, 0x010C
#   endif
#endif
	    DBG1(0x34, 0, 0);
#ifndef NO_FLASH_WRITE
	    cli();
	    boot_page_write(CURRENT_ADDRESS - 2);
    771a:	f0 91 0d 01 	lds	r31, 0x010D
    771e:	32 97       	sbiw	r30, 0x02	; 2
    7720:	85 e0       	ldi	r24, 0x05	; 5
    7722:	80 93 57 00 	sts	0x0057, r24
    7726:	e8 95       	spm
    7728:	78 94       	sei
    772a:	07 b6       	in	r0, 0x37	; 55
	    sei();
    772c:	00 fc       	sbrc	r0, 0
	    boot_spm_busy_wait();
    772e:	fd cf       	rjmp	.-6      	; 0x772a <main+0x308>
    7730:	f8 94       	cli
    7732:	81 e1       	ldi	r24, 0x11	; 17
	    cli();
    7734:	80 93 57 00 	sts	0x0057, r24
	    boot_rww_enable();
    7738:	e8 95       	spm
    773a:	78 94       	sei
    773c:	ce 15       	cp	r28, r14
	    sei();
    773e:	08 f4       	brcc	.+2      	; 0x7742 <main+0x320>
    DBG1(0x31, (void *)&currentAddress.l, 4);
    if(len > bytesRemaining)
        len = bytesRemaining;
    bytesRemaining -= len;
    isLast = bytesRemaining == 0;
    for(i = 0; i < len;) {
    7740:	9b cf       	rjmp	.-202    	; 0x7678 <main+0x256>
    7742:	dd 23       	and	r29, r29
    7744:	11 f0       	breq	.+4      	; 0x774a <main+0x328>
            uchar rval = usbFunctionWrite(data, len);
            if(rval == 0xff){   /* an error occurred */
                usbTxLen = USBPID_STALL;
            }else if(rval != 0){    /* This was the final package */
    7746:	10 92 05 01 	sts	0x0105, r1
                usbMsgLen = 0;  /* answer with a zero-sized data packet */
    774a:	10 92 23 01 	sts	0x0123, r1
        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
#if USB_CFG_HAVE_FLOWCONTROL
        if(usbRxLen > 0)    /* only mark as available if not inactivated */
            usbRxLen = 0;
#else
        usbRxLen = 0;       /* mark rx buffer as available */
    774e:	80 91 00 01 	lds	r24, 0x0100
#endif
    }
    if(usbTxLen & 0x10){    /* transmit system idle */
    7752:	84 ff       	sbrs	r24, 4
    7754:	6c c0       	rjmp	.+216    	; 0x782e <main+0x40c>
    7756:	80 91 05 01 	lds	r24, 0x0105
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
    775a:	8f 3f       	cpi	r24, 0xFF	; 255
    775c:	09 f4       	brne	.+2      	; 0x7760 <main+0x33e>
    775e:	67 c0       	rjmp	.+206    	; 0x782e <main+0x40c>
    7760:	18 2f       	mov	r17, r24
    7762:	89 30       	cpi	r24, 0x09	; 9
    7764:	08 f0       	brcs	.+2      	; 0x7768 <main+0x346>
    7766:	18 e0       	ldi	r17, 0x08	; 8
    7768:	81 1b       	sub	r24, r17
    776a:	80 93 05 01 	sts	0x0105, r24
uchar       len;

    wantLen = usbMsgLen;
    if(wantLen > 8)
        wantLen = 8;
    usbMsgLen -= wantLen;
    776e:	80 91 13 01 	lds	r24, 0x0113
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    7772:	98 e8       	ldi	r25, 0x88	; 136
    7774:	89 27       	eor	r24, r25
    7776:	80 93 13 01 	sts	0x0113, r24
    777a:	11 23       	and	r17, r17
    777c:	09 f4       	brne	.+2      	; 0x7780 <main+0x35e>
/* This function is similar to usbFunctionRead(), but it's also called for
 * data handled automatically by the driver (e.g. descriptor reads).
 */
static uchar usbDeviceRead(uchar *data, uchar len)
{
    if(len > 0){    /* don't bother app with 0 sized reads */
    777e:	46 c0       	rjmp	.+140    	; 0x780c <main+0x3ea>
    7780:	80 91 07 01 	lds	r24, 0x0107
#if USB_CFG_IMPLEMENT_FN_READ
        if(usbMsgFlags & USB_FLG_USE_USER_RW){
    7784:	87 ff       	sbrs	r24, 7
    7786:	26 c0       	rjmp	.+76     	; 0x77d4 <main+0x3b2>
    7788:	80 91 0e 01 	lds	r24, 0x010E

uchar usbFunctionRead(uchar *data, uchar len)
{
uchar   i;

    if(len > bytesRemaining)
    778c:	81 17       	cp	r24, r17
    778e:	08 f4       	brcc	.+2      	; 0x7792 <main+0x370>
    7790:	18 2f       	mov	r17, r24
    7792:	81 1b       	sub	r24, r17
    7794:	80 93 0e 01 	sts	0x010E, r24
        len = bytesRemaining;
    bytesRemaining -= len;
    7798:	00 e0       	ldi	r16, 0x00	; 0
    779a:	c4 e1       	ldi	r28, 0x14	; 20
    for(i = 0; i < len; i++){
    779c:	d1 e0       	ldi	r29, 0x01	; 1
{
uchar   i;

    if(len > bytesRemaining)
        len = bytesRemaining;
    bytesRemaining -= len;
    779e:	17 c0       	rjmp	.+46     	; 0x77ce <main+0x3ac>
    77a0:	80 91 10 01 	lds	r24, 0x0110
    for(i = 0; i < len; i++){
        if(currentRequest >= USBASP_FUNC_READEEPROM){
    77a4:	e0 90 0c 01 	lds	r14, 0x010C
    77a8:	f0 90 0d 01 	lds	r15, 0x010D
    77ac:	87 30       	cpi	r24, 0x07	; 7
    77ae:	18 f0       	brcs	.+6      	; 0x77b6 <main+0x394>
    77b0:	c7 01       	movw	r24, r14
    77b2:	6c d0       	rcall	.+216    	; 0x788c <__eerd_byte_m328p>
            *data = eeprom_read_byte((void *)currentAddress.w[0]);
    77b4:	02 c0       	rjmp	.+4      	; 0x77ba <main+0x398>
    77b6:	f7 01       	movw	r30, r14
    77b8:	84 91       	lpm	r24, Z
    77ba:	88 83       	st	Y, r24
        }else{
#if ((FLASHEND) > 65535)
            *data = pgm_read_byte_far(CURRENT_ADDRESS);
#else
            *data = pgm_read_byte(CURRENT_ADDRESS);
    77bc:	21 96       	adiw	r28, 0x01	; 1
    77be:	08 94       	sec
    77c0:	e1 1c       	adc	r14, r1
#endif
        }
        data++;
    77c2:	f1 1c       	adc	r15, r1
        CURRENT_ADDRESS++;
    77c4:	f0 92 0d 01 	sts	0x010D, r15
    77c8:	e0 92 0c 01 	sts	0x010C, r14
    77cc:	0f 5f       	subi	r16, 0xFF	; 255
    77ce:	01 17       	cp	r16, r17
    77d0:	39 f7       	brne	.-50     	; 0x77a0 <main+0x37e>
uchar   i;

    if(len > bytesRemaining)
        len = bytesRemaining;
    bytesRemaining -= len;
    for(i = 0; i < len; i++){
    77d2:	1a c0       	rjmp	.+52     	; 0x7808 <main+0x3e6>
    77d4:	e0 91 21 01 	lds	r30, 0x0121
    77d8:	f0 91 22 01 	lds	r31, 0x0122
            len = usbFunctionRead(data, len);
        }else
#endif
        {
            uchar i = len;
            usbMsgPtr_t r = usbMsgPtr;
    77dc:	86 ff       	sbrs	r24, 6
    77de:	09 c0       	rjmp	.+18     	; 0x77f2 <main+0x3d0>
    77e0:	81 2f       	mov	r24, r17
            if(usbMsgFlags & USB_FLG_MSGPTR_IS_ROM){    /* ROM data */
    77e2:	a4 e1       	ldi	r26, 0x14	; 20
    77e4:	b1 e0       	ldi	r27, 0x01	; 1
    77e6:	94 91       	lpm	r25, Z
    77e8:	9d 93       	st	X+, r25
    77ea:	31 96       	adiw	r30, 0x01	; 1
                do{
                    uchar c = USB_READ_FLASH(r);    /* assign to char size variable to enforce byte ops */
    77ec:	81 50       	subi	r24, 0x01	; 1
                    *data++ = c;
    77ee:	d9 f7       	brne	.-10     	; 0x77e6 <main+0x3c4>
                    r++;
    77f0:	07 c0       	rjmp	.+14     	; 0x7800 <main+0x3de>
                }while(--i);
    77f2:	81 2f       	mov	r24, r17
    77f4:	a4 e1       	ldi	r26, 0x14	; 20
    77f6:	b1 e0       	ldi	r27, 0x01	; 1
        }else
#endif
        {
            uchar i = len;
            usbMsgPtr_t r = usbMsgPtr;
            if(usbMsgFlags & USB_FLG_MSGPTR_IS_ROM){    /* ROM data */
    77f8:	91 91       	ld	r25, Z+
    77fa:	9d 93       	st	X+, r25
    77fc:	81 50       	subi	r24, 0x01	; 1
                    *data++ = c;
                    r++;
                }while(--i);
            }else{  /* RAM data */
                do{
                    *data++ = *((uchar *)r);
    77fe:	e1 f7       	brne	.-8      	; 0x77f8 <main+0x3d6>
    7800:	f0 93 22 01 	sts	0x0122, r31
                    r++;
                }while(--i);
    7804:	e0 93 21 01 	sts	0x0121, r30
            }
            usbMsgPtr = r;
    7808:	19 30       	cpi	r17, 0x09	; 9
    780a:	58 f4       	brcc	.+22     	; 0x7822 <main+0x400>
    780c:	84 e1       	ldi	r24, 0x14	; 20
    if(wantLen > 8)
        wantLen = 8;
    usbMsgLen -= wantLen;
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    len = usbDeviceRead(usbTxBuf + 1, wantLen);
    if(len <= 8){           /* valid data packet */
    780e:	91 e0       	ldi	r25, 0x01	; 1
    7810:	61 2f       	mov	r22, r17
        usbCrc16Append(&usbTxBuf[1], len);
    7812:	9f dc       	rcall	.-1730   	; 0x7152 <usbCrc16Append>
    7814:	1c 5f       	subi	r17, 0xFC	; 252
    7816:	1c 30       	cpi	r17, 0x0C	; 12
    7818:	41 f0       	breq	.+16     	; 0x782a <main+0x408>
    781a:	8f ef       	ldi	r24, 0xFF	; 255
        len += 4;           /* length including sync byte */
    781c:	80 93 05 01 	sts	0x0105, r24
        if(len < 12)        /* a partial package identifies end of message */
    7820:	04 c0       	rjmp	.+8      	; 0x782a <main+0x408>
            usbMsgLen = USB_NO_MSG;
    7822:	8f ef       	ldi	r24, 0xFF	; 255
    7824:	80 93 05 01 	sts	0x0105, r24
    7828:	1e e1       	ldi	r17, 0x1E	; 30
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
        usbMsgLen = USB_NO_MSG;
    782a:	10 93 00 01 	sts	0x0100, r17
    782e:	84 e1       	ldi	r24, 0x14	; 20
        usbCrc16Append(&usbTxBuf[1], len);
        len += 4;           /* length including sync byte */
        if(len < 12)        /* a partial package identifies end of message */
            usbMsgLen = USB_NO_MSG;
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
    7830:	99 b1       	in	r25, 0x09	; 9
        usbMsgLen = USB_NO_MSG;
    }
    usbTxLen = len;
    7832:	9c 70       	andi	r25, 0x0C	; 12
    7834:	31 f4       	brne	.+12     	; 0x7842 <main+0x420>
        usbCrc16Append(&usbTxBuf[1], len);
        len += 4;           /* length including sync byte */
        if(len < 12)        /* a partial package identifies end of message */
            usbMsgLen = USB_NO_MSG;
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
    7836:	81 50       	subi	r24, 0x01	; 1
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
            usbBuildTxBlock();
        }
    }
    for(i = 20; i > 0; i--){
        uchar usbLineStatus = USBIN & USBMASK;
    7838:	d9 f7       	brne	.-10     	; 0x7830 <main+0x40e>
    783a:	10 92 24 01 	sts	0x0124, r1
        if(usbLineStatus != 0)  /* SE0 has ended */
    783e:	10 92 1e 01 	sts	0x011E, r1
            goto isNotReset;
    }
    /* RESET condition, called multiple times during reset */
    usbNewDeviceAddr = 0;
    7842:	80 91 06 01 	lds	r24, 0x0106
    usbDeviceAddr = 0;
    7846:	80 31       	cpi	r24, 0x10	; 16
    7848:	30 f0       	brcs	.+12     	; 0x7856 <main+0x434>
  : [sil]        "+d" (stayinloader)
  : [pin]         "I" (_SFR_IO_ADDR(PIN_PIN(JUMPER_PORT))),
    [bit]         "I" (PIN(JUMPER_PORT, JUMPER_BIT))
);
#else
	if (stayinloader >= 0x10) {
    784a:	4c 9b       	sbis	0x09, 4	; 9
    784c:	27 ce       	rjmp	.-946    	; 0x749c <main+0x7a>
    784e:	80 91 06 01 	lds	r24, 0x0106
	  if (!bootLoaderConditionSimple()) {
    7852:	80 51       	subi	r24, 0x10	; 16
    7854:	0a c0       	rjmp	.+20     	; 0x786a <main+0x448>
	    stayinloader-=0x10;
    7856:	4c 99       	sbic	0x09, 4	; 9
    7858:	21 ce       	rjmp	.-958    	; 0x749c <main+0x7a>
    785a:	80 91 06 01 	lds	r24, 0x0106
	  } 
	} else {
	  if (bootLoaderConditionSimple()) {
    785e:	82 30       	cpi	r24, 0x02	; 2
    7860:	08 f4       	brcc	.+2      	; 0x7864 <main+0x442>
	    if (stayinloader > 1) stayinloader-=2;
    7862:	1c ce       	rjmp	.-968    	; 0x749c <main+0x7a>
    7864:	80 91 06 01 	lds	r24, 0x0106
    7868:	82 50       	subi	r24, 0x02	; 2
    786a:	80 93 06 01 	sts	0x0106, r24
    786e:	16 ce       	rjmp	.-980    	; 0x749c <main+0x7a>
    7870:	f8 94       	cli
    7872:	53 9a       	sbi	0x0a, 3	; 10
    7874:	1b b8       	out	0x0b, r1	; 11
    7876:	1d ba       	out	0x1d, r1	; 29
}
#else
static void __attribute__((__noreturn__)) leaveBootloader(void);
static void leaveBootloader(void) {
    DBG1(0x01, 0, 0);
    cli();
    7878:	10 92 69 00 	sts	0x0069, r1

static inline void  bootLoaderExit(void)
{
#if (BOOTLOADER_IGNOREPROGBUTTON)
#else
    PIN_PORT(JUMPER_PORT) = 0;		/* undo bootLoaderInit() changes */
    787c:	81 e0       	ldi	r24, 0x01	; 1
    usbDeviceDisconnect();
    bootLoaderExit();
    USB_INTR_ENABLE = 0;
    787e:	85 bf       	out	0x35, r24	; 53
    USB_INTR_CFG = 0;       /* also reset config bits */
    7880:	15 be       	out	0x35, r1	; 53
    7882:	e0 91 11 01 	lds	r30, 0x0111
    GICR = (1 << IVCE);     /* enable change of interrupt vectors */
    7886:	f0 91 12 01 	lds	r31, 0x0112
/* We must go through a global function pointer variable instead of writing
 *  ((void (*)(void))0)();
 * because the compiler optimizes a constant 0 to "rcall 0" which is not
 * handled correctly by the assembler.
 */
    nullVector();
    788a:	09 95       	icall

0000788c <__eerd_byte_m328p>:
    788c:	f9 99       	sbic	0x1f, 1	; 31
    788e:	fe cf       	rjmp	.-4      	; 0x788c <__eerd_byte_m328p>
    7890:	92 bd       	out	0x22, r25	; 34
    7892:	81 bd       	out	0x21, r24	; 33
    7894:	f8 9a       	sbi	0x1f, 0	; 31
    7896:	99 27       	eor	r25, r25
    7898:	80 b5       	in	r24, 0x20	; 32
    789a:	08 95       	ret

0000789c <__eewr_byte_m328p>:
    789c:	26 2f       	mov	r18, r22

0000789e <__eewr_r18_m328p>:
    789e:	f9 99       	sbic	0x1f, 1	; 31
    78a0:	fe cf       	rjmp	.-4      	; 0x789e <__eewr_r18_m328p>
    78a2:	1f ba       	out	0x1f, r1	; 31
    78a4:	92 bd       	out	0x22, r25	; 34
    78a6:	81 bd       	out	0x21, r24	; 33
    78a8:	20 bd       	out	0x20, r18	; 32
    78aa:	0f b6       	in	r0, 0x3f	; 63
    78ac:	f8 94       	cli
    78ae:	fa 9a       	sbi	0x1f, 2	; 31
    78b0:	f9 9a       	sbi	0x1f, 1	; 31
    78b2:	0f be       	out	0x3f, r0	; 63
    78b4:	01 96       	adiw	r24, 0x01	; 1
    78b6:	08 95       	ret

000078b8 <_exit>:
    78b8:	f8 94       	cli

000078ba <__stop_program>:
    78ba:	ff cf       	rjmp	.-2      	; 0x78ba <__stop_program>
