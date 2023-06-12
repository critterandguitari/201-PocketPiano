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
	.loc 1 16 24 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 4 view .LVU1
	.loc 1 19 11 is_stmt 0 view .LVU2
	sbi 0x4,4
	.loc 1 20 4 is_stmt 1 view .LVU3
	.loc 1 20 12 is_stmt 0 view .LVU4
	sbi 0x5,4
	.loc 1 23 4 is_stmt 1 view .LVU5
	.loc 1 23 13 is_stmt 0 view .LVU6
	sbi 0x4,5
	.loc 1 24 4 is_stmt 1 view .LVU7
	.loc 1 24 12 is_stmt 0 view .LVU8
	sbi 0x4,7
	.loc 1 27 4 is_stmt 1 view .LVU9
	.loc 1 27 14 is_stmt 0 view .LVU10
	sbi 0x5,5
	.loc 1 30 4 is_stmt 1 view .LVU11
	.loc 1 30 9 is_stmt 0 view .LVU12
	in r24,0x2c
	ori r24,lo8(64)
	out 0x2c,r24
	.loc 1 33 4 is_stmt 1 view .LVU13
	.loc 1 33 9 is_stmt 0 view .LVU14
	in r24,0x2c
	ori r24,lo8(16)
	out 0x2c,r24
	.loc 1 36 4 is_stmt 1 view .LVU15
	.loc 1 36 9 is_stmt 0 view .LVU16
	in r24,0x2c
	ori r24,lo8(12)
	out 0x2c,r24
	.loc 1 39 4 is_stmt 1 view .LVU17
	.loc 1 39 9 is_stmt 0 view .LVU18
	in r24,0x2d
	ori r24,lo8(1)
	out 0x2d,r24
	.loc 1 40 4 is_stmt 1 view .LVU19
	.loc 1 40 9 is_stmt 0 view .LVU20
	in r24,0x2c
	ori r24,lo8(3)
	out 0x2c,r24
/* epilogue start */
	.loc 1 41 1 view .LVU21
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
	.loc 1 43 41 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 4 view .LVU23
	.loc 1 44 9 is_stmt 0 view .LVU24
	out 0x2e,r24
	.loc 1 45 5 is_stmt 1 view .LVU25
.L3:
	.loc 1 45 35 discriminator 1 view .LVU26
	.loc 1 45 11 discriminator 1 view .LVU27
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L3
/* epilogue start */
	.loc 1 46 1 is_stmt 0 view .LVU28
	ret
	.cfi_endproc
.LFE1:
	.size	apa102_transmit_byte, .-apa102_transmit_byte
	.section	.text.apa102_start,"ax",@progbits
.global	apa102_start
	.type	apa102_start, @function
apa102_start:
.LFB2:
	.loc 1 48 25 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 49 5 view .LVU30
.LBB2:
	.loc 1 49 10 view .LVU31
.LVL1:
	.loc 1 49 25 view .LVU32
	.loc 1 50 9 view .LVU33
	ldi r24,0
	call apa102_transmit_byte
.LVL2:
	.loc 1 49 32 view .LVU34
	.loc 1 49 25 view .LVU35
	.loc 1 50 9 view .LVU36
	ldi r24,0
	call apa102_transmit_byte
.LVL3:
	.loc 1 49 32 view .LVU37
	.loc 1 49 25 view .LVU38
	.loc 1 50 9 view .LVU39
	ldi r24,0
	call apa102_transmit_byte
.LVL4:
	.loc 1 49 32 view .LVU40
	.loc 1 49 25 view .LVU41
	.loc 1 50 9 view .LVU42
	ldi r24,0
	jmp apa102_transmit_byte
.LVL5:
.LBE2:
	.cfi_endproc
.LFE2:
	.size	apa102_start, .-apa102_start
	.section	.text.apa102_end,"ax",@progbits
.global	apa102_end
	.type	apa102_end, @function
apa102_end:
.LFB3:
	.loc 1 56 23 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 57 5 view .LVU44
.LVL6:
	.loc 1 58 5 view .LVU45
	.loc 1 59 5 view .LVU46
.LBB3:
	.loc 1 59 10 view .LVU47
	.loc 1 59 25 view .LVU48
	.loc 1 60 9 view .LVU49
	ldi r24,lo8(-1)
	jmp apa102_transmit_byte
.LVL7:
.LBE3:
	.cfi_endproc
.LFE3:
	.size	apa102_end, .-apa102_end
	.section	.text.apa102_set_led,"ax",@progbits
.global	apa102_set_led
	.type	apa102_set_led, @function
apa102_set_led:
.LVL8:
.LFB4:
	.loc 1 65 54 view -0
	.cfi_startproc
	.loc 1 65 54 is_stmt 0 view .LVU51
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
	.loc 1 66 5 is_stmt 1 view .LVU52
	ldi r24,lo8(-1)
.LVL9:
	.loc 1 66 5 is_stmt 0 view .LVU53
	call apa102_transmit_byte
.LVL10:
	.loc 1 67 5 is_stmt 1 view .LVU54
	mov r24,r17
	call apa102_transmit_byte
.LVL11:
	.loc 1 68 5 view .LVU55
	mov r24,r29
	call apa102_transmit_byte
.LVL12:
	.loc 1 69 5 view .LVU56
	mov r24,r28
/* epilogue start */
	.loc 1 70 1 is_stmt 0 view .LVU57
	pop r29
.LVL13:
	.loc 1 70 1 view .LVU58
	pop r28
.LVL14:
	.loc 1 70 1 view .LVU59
	pop r17
.LVL15:
	.loc 1 69 5 view .LVU60
	jmp apa102_transmit_byte
.LVL16:
	.loc 1 69 5 view .LVU61
	.cfi_endproc
.LFE4:
	.size	apa102_set_led, .-apa102_set_led
	.section	.text.apa102_set_all_leds,"ax",@progbits
.global	apa102_set_all_leds
	.type	apa102_set_all_leds, @function
apa102_set_all_leds:
.LVL17:
.LFB5:
	.loc 1 73 59 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 73 59 is_stmt 0 view .LVU63
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
	.loc 1 74 5 is_stmt 1 view .LVU64
	call apa102_start
.LVL18:
	.loc 1 75 5 view .LVU65
.LBB4:
	.loc 1 75 10 view .LVU66
	.loc 1 75 25 view .LVU67
	.loc 1 76 9 view .LVU68
	mov r20,r17
	mov r22,r29
	mov r24,r28
	call apa102_set_led
.LVL19:
	.loc 1 75 32 view .LVU69
	.loc 1 75 25 view .LVU70
	.loc 1 76 9 view .LVU71
	mov r20,r17
	mov r22,r29
	mov r24,r28
	call apa102_set_led
.LVL20:
	.loc 1 75 32 view .LVU72
	.loc 1 75 25 view .LVU73
	.loc 1 76 9 view .LVU74
	mov r20,r17
	mov r22,r29
	mov r24,r28
	call apa102_set_led
.LVL21:
	.loc 1 75 32 view .LVU75
	.loc 1 75 25 view .LVU76
.LBE4:
	.loc 1 78 5 view .LVU77
/* epilogue start */
	.loc 1 79 1 is_stmt 0 view .LVU78
	pop r29
.LVL22:
	.loc 1 79 1 view .LVU79
	pop r28
.LVL23:
	.loc 1 79 1 view .LVU80
	pop r17
.LVL24:
	.loc 1 78 5 view .LVU81
	jmp apa102_end
.LVL25:
	.cfi_endproc
.LFE5:
	.size	apa102_set_all_leds, .-apa102_set_all_leds
	.text
.Letext0:
	.file 2 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e3
	.word	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF14
	.byte	0xc
	.long	.LASF15
	.long	.LASF16
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF17
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
	.byte	0x49
	.byte	0x6
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x144
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x49
	.byte	0x22
	.long	0x2c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x6
	.string	"g"
	.byte	0x1
	.byte	0x49
	.byte	0x2d
	.long	0x2c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x49
	.byte	0x38
	.long	0x2c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x7
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x131
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.byte	0x12
	.long	0x2c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x9
	.long	.LVL19
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
	.long	.LVL20
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
	.long	.LVL21
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
	.long	.LVL18
	.long	0x234
	.uleb128 0xd
	.long	.LVL25
	.long	0x1de
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x41
	.byte	0x1d
	.long	0x2c
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x6
	.string	"g"
	.byte	0x1
	.byte	0x41
	.byte	0x28
	.long	0x2c
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x41
	.byte	0x33
	.long	0x2c
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x9
	.long	.LVL10
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
	.long	.LVL11
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
	.long	.LVL12
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
	.long	.LVL16
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
	.byte	0x38
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x234
	.uleb128 0xf
	.long	.LASF10
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.long	0x2c
	.byte	0x3
	.uleb128 0xf
	.long	.LASF11
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.long	0x2c
	.byte	0x1
	.uleb128 0x10
	.long	.LBB3
	.long	.LBE3-.LBB3
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.long	0x2c
	.byte	0
	.uleb128 0xe
	.long	.LVL7
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
	.byte	0x30
	.byte	0x6
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af
	.uleb128 0x10
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x9
	.long	.LVL2
	.long	0x2af
	.long	0x278
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	.LVL3
	.long	0x2af
	.long	0x28b
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	.LVL4
	.long	0x2af
	.long	0x29e
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LVL5
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
	.byte	0x2b
	.byte	0x6
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d4
	.uleb128 0x12
	.long	.LASF18
	.byte	0x1
	.byte	0x2b
	.byte	0x23
	.long	0x2c
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x13
	.long	.LASF19
	.byte	0x1
	.byte	0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST4:
	.long	.LVL17
	.long	.LVL18-1
	.word	0x1
	.byte	0x68
	.long	.LVL18-1
	.long	.LVL23
	.word	0x1
	.byte	0x6c
	.long	.LVL23
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 0
.LLST5:
	.long	.LVL17
	.long	.LVL18-1
	.word	0x1
	.byte	0x66
	.long	.LVL18-1
	.long	.LVL22
	.word	0x1
	.byte	0x6d
	.long	.LVL22
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST6:
	.long	.LVL17
	.long	.LVL18-1
	.word	0x1
	.byte	0x64
	.long	.LVL18-1
	.long	.LVL24
	.word	0x1
	.byte	0x61
	.long	.LVL24
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LVUS7:
	.uleb128 .LVU67
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL21
	.long	.LFE5
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST1:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL15
	.word	0x1
	.byte	0x61
	.long	.LVL15
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST2:
	.long	.LVL8
	.long	.LVL10-1
	.word	0x1
	.byte	0x66
	.long	.LVL10-1
	.long	.LVL13
	.word	0x1
	.byte	0x6d
	.long	.LVL13
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST3:
	.long	.LVL8
	.long	.LVL10-1
	.word	0x1
	.byte	0x64
	.long	.LVL10-1
	.long	.LVL14
	.word	0x1
	.byte	0x6c
	.long	.LVL14
	.long	.LVL16-1
	.word	0x1
	.byte	0x68
	.long	.LVL16-1
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LVUS0:
	.uleb128 .LVU32
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 0
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL4
	.long	.LFE2
	.word	0x2
	.byte	0x33
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
.LASF18:
	.string	"data"
.LASF15:
	.string	"apa102.c"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF11:
	.string	"stop_bytes"
.LASF14:
	.string	"GNU C99 9.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections"
.LASF8:
	.string	"apa102_set_led"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint8_t"
.LASF13:
	.string	"apa102_transmit_byte"
.LASF5:
	.string	"long long int"
.LASF16:
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
