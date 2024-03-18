	.file	"i2c_peripheral.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.i2c_setCallbacks,"ax",@progbits
.global	i2c_setCallbacks
	.type	i2c_setCallbacks, @function
i2c_setCallbacks:
.LVL0:
.LFB1:
	.file 1 "i2c_peripheral.c"
	.loc 1 13 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 14 3 view .LVU1
	.loc 1 14 12 is_stmt 0 view .LVU2
	sts i2c_recv+1,r25
	sts i2c_recv,r24
	.loc 1 15 3 is_stmt 1 view .LVU3
	.loc 1 15 11 is_stmt 0 view .LVU4
	sts i2c_req+1,r23
	sts i2c_req,r22
/* epilogue start */
	.loc 1 16 1 view .LVU5
	ret
	.cfi_endproc
.LFE1:
	.size	i2c_setCallbacks, .-i2c_setCallbacks
	.section	.text.i2c_init,"ax",@progbits
.global	i2c_init
	.type	i2c_init, @function
i2c_init:
.LVL1:
.LFB2:
	.loc 1 19 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 20 2 view .LVU7
/* #APP */
 ;  20 "i2c_peripheral.c" 1
	cli
 ;  0 "" 2
	.loc 1 22 2 view .LVU8
	.loc 1 22 17 is_stmt 0 view .LVU9
/* #NOAPP */
	lsl r24
.LVL2:
	.loc 1 22 7 view .LVU10
	sts 186,r24
	.loc 1 24 2 is_stmt 1 view .LVU11
	.loc 1 24 7 is_stmt 0 view .LVU12
	ldi r24,lo8(-59)
	sts 188,r24
	.loc 1 25 2 is_stmt 1 view .LVU13
/* #APP */
 ;  25 "i2c_peripheral.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
/* epilogue start */
	.loc 1 26 1 is_stmt 0 view .LVU14
	ret
	.cfi_endproc
.LFE2:
	.size	i2c_init, .-i2c_init
	.section	.text.i2c_stop,"ax",@progbits
.global	i2c_stop
	.type	i2c_stop, @function
i2c_stop:
.LFB3:
	.loc 1 29 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 31 2 view .LVU16
/* #APP */
 ;  31 "i2c_peripheral.c" 1
	cli
 ;  0 "" 2
	.loc 1 32 2 view .LVU17
	.loc 1 32 7 is_stmt 0 view .LVU18
/* #NOAPP */
	sts 188,__zero_reg__
	.loc 1 33 2 is_stmt 1 view .LVU19
	.loc 1 33 7 is_stmt 0 view .LVU20
	sts 186,__zero_reg__
	.loc 1 34 2 is_stmt 1 view .LVU21
/* #APP */
 ;  34 "i2c_peripheral.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
/* epilogue start */
	.loc 1 35 1 is_stmt 0 view .LVU22
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_stop, .-i2c_stop
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB4:
	.loc 1 38 1 is_stmt 1 view -0
	.cfi_startproc
	push r1
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 39 3 view .LVU24
	.loc 1 39 11 is_stmt 0 view .LVU25
	lds r24,185
	andi r24,lo8(-8)
	.loc 1 39 3 view .LVU26
	cpi r24,lo8(-128)
	breq .L5
	brsh .L6
	tst r24
	breq .L7
	cpi r24,lo8(96)
	breq .L8
.L9:
	.loc 1 68 6 is_stmt 1 view .LVU27
	.loc 1 68 11 is_stmt 0 view .LVU28
	ldi r24,lo8(-59)
	sts 188,r24
	.loc 1 69 7 is_stmt 1 view .LVU29
/* epilogue start */
	.loc 1 71 1 is_stmt 0 view .LVU30
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.L6:
	.loc 1 39 3 view .LVU31
	cpi r24,lo8(-88)
	breq .L10
	cpi r24,lo8(-72)
	brne .L9
.L11:
	.loc 1 59 7 is_stmt 1 view .LVU32
	lds r30,i2c_req
	lds r31,i2c_req+1
	icall
.LVL3:
	.loc 1 60 6 view .LVU33
	rjmp .L9
.L8:
	.loc 1 43 7 view .LVU34
	.loc 1 43 22 is_stmt 0 view .LVU35
	sts i2c_recv_index,__zero_reg__
	.loc 1 44 6 is_stmt 1 view .LVU36
	rjmp .L9
.L5:
	.loc 1 48 7 view .LVU37
	lds r24,187
	lds r30,i2c_recv
	lds r31,i2c_recv+1
	icall
.LVL4:
	.loc 1 49 6 view .LVU38
	rjmp .L9
.L10:
	.loc 1 53 7 view .LVU39
	.loc 1 53 22 is_stmt 0 view .LVU40
	sts i2c_send_index,__zero_reg__
	.loc 1 54 7 is_stmt 1 view .LVU41
	rjmp .L11
.L7:
	.loc 1 64 6 view .LVU42
	.loc 1 64 11 is_stmt 0 view .LVU43
	sts 188,__zero_reg__
	.loc 1 65 6 is_stmt 1 view .LVU44
	rjmp .L9
	.cfi_endproc
.LFE4:
	.size	__vector_26, .-__vector_26
	.section	.bss.i2c_req,"aw",@nobits
	.type	i2c_req, @object
	.size	i2c_req, 2
i2c_req:
	.zero	2
	.section	.bss.i2c_recv,"aw",@nobits
	.type	i2c_recv, @object
	.size	i2c_recv, 2
i2c_recv:
	.zero	2
.global	i2c_send_index
	.section	.bss.i2c_send_index,"aw",@nobits
	.type	i2c_send_index, @object
	.size	i2c_send_index, 1
i2c_send_index:
	.zero	1
.global	i2c_recv_index
	.section	.bss.i2c_recv_index,"aw",@nobits
	.type	i2c_recv_index, @object
	.size	i2c_recv_index, 1
i2c_recv_index:
	.zero	1
	.text
.Letext0:
	.file 2 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x154
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
	.byte	0x6
	.byte	0x9
	.long	0x2c
	.uleb128 0x5
	.byte	0x3
	.long	i2c_recv_index
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0x2c
	.uleb128 0x5
	.byte	0x3
	.long	i2c_send_index
	.uleb128 0x6
	.long	0x98
	.uleb128 0x7
	.long	0x2c
	.byte	0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0x9
	.byte	0xf
	.long	0xaa
	.uleb128 0x5
	.byte	0x3
	.long	i2c_recv
	.uleb128 0x9
	.byte	0x2
	.long	0x8d
	.uleb128 0xa
	.long	0xb7
	.uleb128 0xb
	.byte	0
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0xa
	.byte	0xf
	.long	0xc9
	.uleb128 0x5
	.byte	0x3
	.long	i2c_req
	.uleb128 0x9
	.byte	0x2
	.long	0xb0
	.uleb128 0xc
	.long	.LASF11
	.byte	0x1
	.byte	0x25
	.byte	0x52
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF12
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e
	.uleb128 0xf
	.long	.LASF19
	.byte	0x1
	.byte	0x12
	.byte	0x17
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x10
	.long	.LASF20
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF13
	.byte	0x1
	.byte	0xc
	.byte	0x1e
	.long	0xaa
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x12
	.string	"req"
	.byte	0x1
	.byte	0xc
	.byte	0x35
	.long	0xc9
	.uleb128 0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"/Users/owen1/repos/201-PocketPiano/controllers/bbimx/atmega164"
.LASF9:
	.string	"i2c_recv"
.LASF20:
	.string	"i2c_setCallbacks"
.LASF2:
	.string	"unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"i2c_req"
.LASF4:
	.string	"long unsigned int"
.LASF18:
	.string	"i2c_init"
.LASF14:
	.string	"GNU C99 9.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections"
.LASF7:
	.string	"i2c_recv_index"
.LASF15:
	.string	"i2c_peripheral.c"
.LASF19:
	.string	"address"
.LASF6:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint8_t"
.LASF13:
	.string	"recv"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"i2c_stop"
.LASF8:
	.string	"i2c_send_index"
.LASF11:
	.string	"__vector_26"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (Homebrew AVR GCC 9.3.0_3) 9.3.0"
.global __do_clear_bss
