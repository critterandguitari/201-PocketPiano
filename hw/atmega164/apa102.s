	.file	"apa102.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.apa102_init,"ax",@progbits
.global	apa102_init
	.type	apa102_init, @function
apa102_init:
.LFB0:
	.file 1 "apa102.c"
	.loc 1 13 24 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 15 4 view .LVU1
	.loc 1 15 9 is_stmt 0 view .LVU2
	in r24,0x4
	ori r24,lo8(-96)
	out 0x4,r24
	.loc 1 16 4 is_stmt 1 view .LVU3
	.loc 1 16 10 is_stmt 0 view .LVU4
	in r24,0x5
	ori r24,lo8(-96)
	out 0x5,r24
/* epilogue start */
	.loc 1 18 1 view .LVU5
	ret
	.cfi_endproc
.LFE0:
	.size	apa102_init, .-apa102_init
	.section	.text.apa102_transmit_byte,"ax",@progbits
.global	apa102_transmit_byte
	.type	apa102_transmit_byte, @function
apa102_transmit_byte:
.LVL0:
.LFB1:
	.loc 1 20 41 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 21 5 view .LVU7
.LBB2:
	.loc 1 21 10 view .LVU8
	.loc 1 21 21 view .LVU9
.LBE2:
	.loc 1 20 41 is_stmt 0 view .LVU10
	ldi r18,lo8(8)
	ldi r19,0
.LVL1:
.L5:
.LBB3:
	.loc 1 22 9 is_stmt 1 view .LVU11
	.loc 1 22 12 is_stmt 0 view .LVU12
	sbrs r24,7
	rjmp .L3
	.loc 1 23 12 is_stmt 1 view .LVU13
	.loc 1 23 12 is_stmt 0 view .LVU14
	sbi 0x5,5
	.loc 1 23 21 is_stmt 1 view .LVU15
.L4:
	.loc 1 25 22 discriminator 1 view .LVU16
	.loc 1 27 9 discriminator 1 view .LVU17
/* #APP */
 ;  27 "apa102.c" 1
	nop
 ;  0 "" 2
	.loc 1 28 8 discriminator 1 view .LVU18
	.loc 1 28 8 is_stmt 0 discriminator 1 view .LVU19
/* #NOAPP */
	cbi 0x5,7
	.loc 1 28 18 is_stmt 1 discriminator 1 view .LVU20
	.loc 1 29 9 discriminator 1 view .LVU21
/* #APP */
 ;  29 "apa102.c" 1
	nop
 ;  0 "" 2
	.loc 1 30 8 discriminator 1 view .LVU22
	.loc 1 30 8 is_stmt 0 discriminator 1 view .LVU23
/* #NOAPP */
	sbi 0x5,7
	.loc 1 30 17 is_stmt 1 discriminator 1 view .LVU24
	.loc 1 31 9 discriminator 1 view .LVU25
	.loc 1 31 14 is_stmt 0 discriminator 1 view .LVU26
	lsl r24
.LVL2:
	.loc 1 21 28 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 21 21 discriminator 1 view .LVU28
	subi r18,1
	sbc r19,__zero_reg__
.LVL3:
	.loc 1 21 5 is_stmt 0 discriminator 1 view .LVU29
	brne .L5
/* epilogue start */
.LBE3:
	.loc 1 33 1 view .LVU30
	ret
.L3:
.LBB4:
	.loc 1 25 12 is_stmt 1 view .LVU31
	.loc 1 25 12 is_stmt 0 view .LVU32
	cbi 0x5,5
	rjmp .L4
.LBE4:
	.cfi_endproc
.LFE1:
	.size	apa102_transmit_byte, .-apa102_transmit_byte
	.section	.text.apa102_start,"ax",@progbits
.global	apa102_start
	.type	apa102_start, @function
apa102_start:
.LFB2:
	.loc 1 35 25 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 36 5 view .LVU34
.LBB5:
	.loc 1 36 10 view .LVU35
.LVL4:
	.loc 1 36 25 view .LVU36
	.loc 1 37 9 view .LVU37
	ldi r24,0
	call apa102_transmit_byte
.LVL5:
	.loc 1 36 32 view .LVU38
	.loc 1 36 25 view .LVU39
	.loc 1 37 9 view .LVU40
	ldi r24,0
	call apa102_transmit_byte
.LVL6:
	.loc 1 36 32 view .LVU41
	.loc 1 36 25 view .LVU42
	.loc 1 37 9 view .LVU43
	ldi r24,0
	call apa102_transmit_byte
.LVL7:
	.loc 1 36 32 view .LVU44
	.loc 1 36 25 view .LVU45
	.loc 1 37 9 view .LVU46
	ldi r24,0
	jmp apa102_transmit_byte
.LVL8:
.LBE5:
	.cfi_endproc
.LFE2:
	.size	apa102_start, .-apa102_start
	.section	.text.apa102_end,"ax",@progbits
.global	apa102_end
	.type	apa102_end, @function
apa102_end:
.LFB3:
	.loc 1 43 23 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 5 view .LVU48
.LVL9:
	.loc 1 45 5 view .LVU49
	.loc 1 46 5 view .LVU50
.LBB6:
	.loc 1 46 10 view .LVU51
	.loc 1 46 25 view .LVU52
	.loc 1 47 9 view .LVU53
	ldi r24,lo8(-1)
	jmp apa102_transmit_byte
.LVL10:
.LBE6:
	.cfi_endproc
.LFE3:
	.size	apa102_end, .-apa102_end
	.section	.text.apa102_set_led,"ax",@progbits
.global	apa102_set_led
	.type	apa102_set_led, @function
apa102_set_led:
.LVL11:
.LFB4:
	.loc 1 52 54 view -0
	.cfi_startproc
	.loc 1 52 54 is_stmt 0 view .LVU55
	push r17
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	mov r29,r22
	mov r28,r20
	.loc 1 53 5 is_stmt 1 view .LVU56
	ldi r24,lo8(-1)
.LVL12:
	.loc 1 53 5 is_stmt 0 view .LVU57
	call apa102_transmit_byte
.LVL13:
	.loc 1 54 5 is_stmt 1 view .LVU58
	mov r24,r17
	call apa102_transmit_byte
.LVL14:
	.loc 1 55 5 view .LVU59
	mov r24,r29
	call apa102_transmit_byte
.LVL15:
	.loc 1 56 5 view .LVU60
	mov r24,r28
/* epilogue start */
	.loc 1 57 1 is_stmt 0 view .LVU61
	pop r29
.LVL16:
	.loc 1 57 1 view .LVU62
	pop r28
.LVL17:
	.loc 1 57 1 view .LVU63
	pop r17
.LVL18:
	.loc 1 56 5 view .LVU64
	jmp apa102_transmit_byte
.LVL19:
	.loc 1 56 5 view .LVU65
	.cfi_endproc
.LFE4:
	.size	apa102_set_led, .-apa102_set_led
	.section	.text.apa102_set_all_leds,"ax",@progbits
.global	apa102_set_all_leds
	.type	apa102_set_all_leds, @function
apa102_set_all_leds:
.LVL20:
.LFB5:
	.loc 1 60 59 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 60 59 is_stmt 0 view .LVU67
	push r17
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r28,r24
	mov r29,r22
	mov r17,r20
	.loc 1 61 5 is_stmt 1 view .LVU68
	call apa102_start
.LVL21:
	.loc 1 62 5 view .LVU69
.LBB7:
	.loc 1 62 10 view .LVU70
	.loc 1 62 25 view .LVU71
	.loc 1 63 9 view .LVU72
	mov r20,r17
	mov r22,r29
	mov r24,r28
	call apa102_set_led
.LVL22:
	.loc 1 62 32 view .LVU73
	.loc 1 62 25 view .LVU74
	.loc 1 63 9 view .LVU75
	mov r20,r17
	mov r22,r29
	mov r24,r28
	call apa102_set_led
.LVL23:
	.loc 1 62 32 view .LVU76
	.loc 1 62 25 view .LVU77
	.loc 1 63 9 view .LVU78
	mov r20,r17
	mov r22,r29
	mov r24,r28
	call apa102_set_led
.LVL24:
	.loc 1 62 32 view .LVU79
	.loc 1 62 25 view .LVU80
.LBE7:
	.loc 1 65 5 view .LVU81
/* epilogue start */
	.loc 1 66 1 is_stmt 0 view .LVU82
	pop r29
.LVL25:
	.loc 1 66 1 view .LVU83
	pop r28
.LVL26:
	.loc 1 66 1 view .LVU84
	pop r17
.LVL27:
	.loc 1 65 5 view .LVU85
	jmp apa102_end
.LVL28:
	.cfi_endproc
.LFE5:
	.size	apa102_set_all_leds, .-apa102_set_all_leds
	.text
.Letext0:
	.file 2 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x301
	.word	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF15
	.byte	0xc
	.long	.LASF16
	.long	.LASF17
	.long	.Ldebug_ranges0+0x20
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x2
	.byte	0x7e
	.byte	0x16
	.long	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x144
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x3c
	.byte	0x22
	.long	0x2c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x6
	.string	"g"
	.byte	0x1
	.byte	0x3c
	.byte	0x2d
	.long	0x2c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x3c
	.byte	0x38
	.long	0x2c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x7
	.long	.LBB7
	.long	.LBE7-.LBB7
	.long	0x131
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x3e
	.byte	0x12
	.long	0x2c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x9
	.long	.LVL22
	.long	0x144
	.long	0xf4
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LVL23
	.long	0x144
	.long	0x114
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.long	.LVL24
	.long	0x144
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LVL21
	.long	0x234
	.uleb128 0xd
	.long	.LVL28
	.long	0x1de
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x34
	.byte	0x1d
	.long	0x2c
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x6
	.string	"g"
	.byte	0x1
	.byte	0x34
	.byte	0x28
	.long	0x2c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x34
	.byte	0x33
	.long	0x2c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x9
	.long	.LVL13
	.long	0x2af
	.long	0x1a4
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.long	.LVL14
	.long	0x2af
	.long	0x1b8
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LVL15
	.long	0x2af
	.long	0x1cc
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.long	.LVL19
	.long	0x2af
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x234
	.uleb128 0xf
	.long	.LASF10
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.long	0x2c
	.byte	0x3
	.uleb128 0xf
	.long	.LASF11
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.long	0x2c
	.byte	0x1
	.uleb128 0x10
	.long	.LBB6
	.long	.LBE6-.LBB6
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.byte	0x12
	.long	0x2c
	.byte	0
	.uleb128 0xe
	.long	.LVL10
	.long	0x2af
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af
	.uleb128 0x10
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0x12
	.long	0x2c
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x9
	.long	.LVL5
	.long	0x2af
	.long	0x278
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	.LVL6
	.long	0x2af
	.long	0x28b
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	.LVL7
	.long	0x2af
	.long	0x29e
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LVL8
	.long	0x2af
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f2
	.uleb128 0x12
	.long	.LASF14
	.byte	0x1
	.byte	0x14
	.byte	0x23
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x13
	.long	.Ldebug_ranges0+0
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.long	0x3f
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF19
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS6:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST6:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x1
	.byte	0x68
	.long	.LVL21-1
	.long	.LVL26
	.word	0x1
	.byte	0x6c
	.long	.LVL26
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST7:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x1
	.byte	0x66
	.long	.LVL21-1
	.long	.LVL25
	.word	0x1
	.byte	0x6d
	.long	.LVL25
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST8:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x1
	.byte	0x64
	.long	.LVL21-1
	.long	.LVL27
	.word	0x1
	.byte	0x61
	.long	.LVL27
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LVUS9:
	.uleb128 .LVU71
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST9:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL24
	.long	.LFE5
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 0
.LLST3:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL18
	.word	0x1
	.byte	0x61
	.long	.LVL18
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST4:
	.long	.LVL11
	.long	.LVL13-1
	.word	0x1
	.byte	0x66
	.long	.LVL13-1
	.long	.LVL16
	.word	0x1
	.byte	0x6d
	.long	.LVL16
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST5:
	.long	.LVL11
	.long	.LVL13-1
	.word	0x1
	.byte	0x64
	.long	.LVL13-1
	.long	.LVL17
	.word	0x1
	.byte	0x6c
	.long	.LVL17
	.long	.LVL19-1
	.word	0x1
	.byte	0x68
	.long	.LVL19-1
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LVUS2:
	.uleb128 .LVU36
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL7
	.long	.LFE2
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.word	0x5
	.byte	0x38
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x5
	.byte	0x39
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3
	.long	.LFE1
	.word	0x5
	.byte	0x38
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	.LBB4
	.long	.LBE4
	.long	0
	.long	0
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"apa102_set_all_leds"
.LASF19:
	.string	"apa102_init"
.LASF14:
	.string	"data"
.LASF16:
	.string	"apa102.c"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF11:
	.string	"stop_bytes"
.LASF15:
	.string	"GNU C99 9.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections"
.LASF8:
	.string	"apa102_set_led"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint8_t"
.LASF13:
	.string	"apa102_transmit_byte"
.LASF5:
	.string	"long long int"
.LASF17:
	.string	"/Users/owen1/repos/201-PocketPiano/hw/atmega164"
.LASF3:
	.string	"long int"
.LASF10:
	.string	"total_leds"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"apa102_end"
.LASF12:
	.string	"apa102_start"
	.ident	"GCC: (Homebrew AVR GCC 9.3.0_3) 9.3.0"
