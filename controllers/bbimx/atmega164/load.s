	.file	"load.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.i2c_received,"ax",@progbits
.global	i2c_received
	.type	i2c_received, @function
i2c_received:
.LVL0:
.LFB3:
	.file 1 "load.c"
	.loc 1 28 42 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 5 view .LVU1
	.loc 1 29 12 is_stmt 0 view .LVU2
	lds r25,i2c_recv_index
	mov r30,r25
	ldi r31,0
	.loc 1 29 29 view .LVU3
	subi r30,lo8(-(data_pi))
	sbci r31,hi8(-(data_pi))
	st Z,r24
	.loc 1 30 5 is_stmt 1 view .LVU4
	.loc 1 30 19 is_stmt 0 view .LVU5
	ldi r24,lo8(1)
.LVL1:
	.loc 1 30 19 view .LVU6
	add r24,r25
	.loc 1 31 5 is_stmt 1 view .LVU7
	.loc 1 31 8 is_stmt 0 view .LVU8
	cpi r25,lo8(8)
	breq .L2
	.loc 1 30 19 view .LVU9
	sts i2c_recv_index,r24
	ret
.L2:
	.loc 1 31 30 is_stmt 1 discriminator 1 view .LVU10
	.loc 1 31 45 is_stmt 0 discriminator 1 view .LVU11
	sts i2c_recv_index,__zero_reg__
/* epilogue start */
	.loc 1 32 2 discriminator 1 view .LVU12
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_received, .-i2c_received
	.section	.text.i2c_requested,"ax",@progbits
.global	i2c_requested
	.type	i2c_requested, @function
i2c_requested:
.LFB4:
	.loc 1 34 22 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 36 4 view .LVU14
	.loc 1 36 4 is_stmt 0 view .LVU15
	cbi 0x8,2
	.loc 1 36 14 is_stmt 1 view .LVU16
	.loc 1 37 5 view .LVU17
	lds r30,i2c_send_index
	ldi r31,0
	subi r30,lo8(-(data_po))
	sbci r31,hi8(-(data_po))
	ld r24,Z
.LVL2:
.LBB4:
.LBI4:
	.file 2 "i2c_peripheral.h"
	.loc 2 11 44 view .LVU18
.LBB5:
	.loc 2 13 2 view .LVU19
	.loc 2 13 7 is_stmt 0 view .LVU20
	sts 187,r24
.LVL3:
	.loc 2 13 7 view .LVU21
.LBE5:
.LBE4:
	.loc 1 38 5 is_stmt 1 view .LVU22
	.loc 1 38 19 is_stmt 0 view .LVU23
	lds r24,i2c_send_index
	ldi r25,lo8(1)
	add r25,r24
	.loc 1 39 5 is_stmt 1 view .LVU24
	.loc 1 39 8 is_stmt 0 view .LVU25
	cpi r24,lo8(6)
	breq .L5
	.loc 1 38 19 view .LVU26
	sts i2c_send_index,r25
	ret
.L5:
	.loc 1 39 30 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 39 45 is_stmt 0 discriminator 1 view .LVU28
	sts i2c_send_index,__zero_reg__
/* epilogue start */
	.loc 1 40 1 discriminator 1 view .LVU29
	ret
	.cfi_endproc
.LFE4:
	.size	i2c_requested, .-i2c_requested
	.section	.text.delay_ms,"ax",@progbits
.global	delay_ms
	.type	delay_ms, @function
delay_ms:
.LVL4:
.LFB5:
	.loc 1 43 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 5 view .LVU31
	.loc 1 45 5 view .LVU32
	.loc 1 46 5 view .LVU33
	.loc 1 46 10 is_stmt 0 view .LVU34
	movw r18,r24
	ldi r26,lo8(125)
	ldi r27,0
	call __umulhisi3
.LVL5:
	.loc 1 47 5 is_stmt 1 view .LVU35
.L8:
	.loc 1 47 10 view .LVU36
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L9
/* epilogue start */
	.loc 1 51 1 is_stmt 0 view .LVU37
	ret
.L9:
	.loc 1 48 10 is_stmt 1 view .LVU38
/* #APP */
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 30 view .LVU39
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 50 view .LVU40
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 70 view .LVU41
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 90 view .LVU42
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 110 view .LVU43
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 130 view .LVU44
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 150 view .LVU45
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 171 view .LVU46
	.loc 1 48 173 view .LVU47
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 193 view .LVU48
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 213 view .LVU49
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 233 view .LVU50
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 253 view .LVU51
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 273 view .LVU52
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 293 view .LVU53
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 313 view .LVU54
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 334 view .LVU55
	.loc 1 48 336 view .LVU56
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 356 view .LVU57
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 376 view .LVU58
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 396 view .LVU59
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 416 view .LVU60
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 436 view .LVU61
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 456 view .LVU62
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 476 view .LVU63
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 497 view .LVU64
	.loc 1 48 499 view .LVU65
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 519 view .LVU66
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 539 view .LVU67
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 559 view .LVU68
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 579 view .LVU69
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 599 view .LVU70
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 619 view .LVU71
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 639 view .LVU72
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 660 view .LVU73
	.loc 1 48 662 view .LVU74
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 682 view .LVU75
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 702 view .LVU76
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 722 view .LVU77
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 742 view .LVU78
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 762 view .LVU79
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 782 view .LVU80
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 802 view .LVU81
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 823 view .LVU82
	.loc 1 48 825 view .LVU83
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 845 view .LVU84
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 865 view .LVU85
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 885 view .LVU86
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 905 view .LVU87
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 925 view .LVU88
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 945 view .LVU89
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 965 view .LVU90
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 986 view .LVU91
	.loc 1 48 988 view .LVU92
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1008 view .LVU93
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1028 view .LVU94
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1048 view .LVU95
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1068 view .LVU96
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1088 view .LVU97
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1108 view .LVU98
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1128 view .LVU99
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1149 view .LVU100
	.loc 1 49 9 view .LVU101
	.loc 1 49 13 is_stmt 0 view .LVU102
/* #NOAPP */
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
.LVL6:
	.loc 1 49 13 view .LVU103
	rjmp .L8
	.cfi_endproc
.LFE5:
	.size	delay_ms, .-delay_ms
	.section	.text.read_adc,"ax",@progbits
.global	read_adc
	.type	read_adc, @function
read_adc:
.LFB6:
	.loc 1 53 21 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 5 view .LVU105
.LVL7:
	.loc 1 55 5 view .LVU106
	.loc 1 55 18 view .LVU107
	ldi r30,lo8(data_po+3)
	ldi r31,hi8(data_po+3)
	.loc 1 55 13 is_stmt 0 view .LVU108
	ldi r24,0
	.loc 1 58 15 view .LVU109
	ldi r18,lo8(-42)
.LVL8:
.L12:
	.loc 1 56 8 is_stmt 1 view .LVU110
	.loc 1 56 14 is_stmt 0 view .LVU111
	sts 124,r24
	.loc 1 57 8 is_stmt 1 view .LVU112
	.loc 1 57 14 is_stmt 0 view .LVU113
	lds r25,124
	ori r25,lo8(32)
	sts 124,r25
	.loc 1 58 8 is_stmt 1 view .LVU114
	.loc 1 58 15 is_stmt 0 view .LVU115
	sts 122,r18
	.loc 1 59 9 is_stmt 1 view .LVU116
.L11:
	.loc 1 59 34 discriminator 1 view .LVU117
	.loc 1 59 14 discriminator 1 view .LVU118
	.loc 1 59 17 is_stmt 0 discriminator 1 view .LVU119
	lds r25,122
	.loc 1 59 14 discriminator 1 view .LVU120
	sbrs r25,4
	rjmp .L11
	.loc 1 60 9 is_stmt 1 discriminator 2 view .LVU121
	.loc 1 60 27 is_stmt 0 discriminator 2 view .LVU122
	lds r25,121
	.loc 1 60 25 discriminator 2 view .LVU123
	st Z+,r25
	.loc 1 55 26 is_stmt 1 discriminator 2 view .LVU124
	.loc 1 55 28 is_stmt 0 discriminator 2 view .LVU125
	subi r24,lo8(-(1))
.LVL9:
	.loc 1 55 18 is_stmt 1 discriminator 2 view .LVU126
	.loc 1 55 5 is_stmt 0 discriminator 2 view .LVU127
	cpi r24,lo8(4)
	brne .L12
/* epilogue start */
	.loc 1 62 1 view .LVU128
	ret
	.cfi_endproc
.LFE6:
	.size	read_adc, .-read_adc
	.section	.text.set_leds,"ax",@progbits
.global	set_leds
	.type	set_leds, @function
set_leds:
.LFB7:
	.loc 1 64 21 is_stmt 1 view -0
	.cfi_startproc
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 65 5 view .LVU130
	call apa102_start
.LVL10:
	.loc 1 66 5 view .LVU131
.LBB6:
	.loc 1 66 10 view .LVU132
	.loc 1 66 25 view .LVU133
	.loc 1 67 9 view .LVU134
	ldi r28,lo8(data_pi)
	ldi r29,hi8(data_pi)
	ldd r20,Y+2
	ldd r22,Y+1
	ld r24,Y
	call apa102_set_led
.LVL11:
	.loc 1 66 32 view .LVU135
	.loc 1 66 25 view .LVU136
	.loc 1 67 9 view .LVU137
	ldd r20,Y+5
	ldd r22,Y+4
	ldd r24,Y+3
	call apa102_set_led
.LVL12:
	.loc 1 66 32 view .LVU138
	.loc 1 66 25 view .LVU139
	.loc 1 67 9 view .LVU140
	ldd r20,Y+8
	ldd r22,Y+7
	ldd r24,Y+6
	call apa102_set_led
.LVL13:
	.loc 1 66 32 view .LVU141
	.loc 1 66 25 view .LVU142
.LBE6:
	.loc 1 69 5 view .LVU143
/* epilogue start */
	.loc 1 70 1 is_stmt 0 view .LVU144
	pop r29
	pop r28
	.loc 1 69 5 view .LVU145
	jmp apa102_end
.LVL14:
	.cfi_endproc
.LFE7:
	.size	set_leds, .-set_leds
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 72 16 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 75 4 view .LVU147
	.loc 1 75 9 is_stmt 0 view .LVU148
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 76 4 is_stmt 1 view .LVU149
	.loc 1 76 9 is_stmt 0 view .LVU150
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 78 5 is_stmt 1 view .LVU151
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL15:
	.loc 1 81 4 view .LVU152
	.loc 1 81 9 is_stmt 0 view .LVU153
	out 0xa,__zero_reg__
	.loc 1 82 4 is_stmt 1 view .LVU154
	.loc 1 82 10 is_stmt 0 view .LVU155
	ldi r24,lo8(-1)
	out 0xb,r24
	.loc 1 84 4 is_stmt 1 view .LVU156
	.loc 1 84 9 is_stmt 0 view .LVU157
	in r24,0x7
	andi r24,lo8(7)
	out 0x7,r24
	.loc 1 85 4 is_stmt 1 view .LVU158
	.loc 1 85 10 is_stmt 0 view .LVU159
	in r24,0x8
	ori r24,lo8(-8)
	out 0x8,r24
	.loc 1 87 4 is_stmt 1 view .LVU160
	.loc 1 87 9 is_stmt 0 view .LVU161
	in r24,0x4
	andi r24,lo8(-32)
	out 0x4,r24
	.loc 1 88 4 is_stmt 1 view .LVU162
	.loc 1 88 10 is_stmt 0 view .LVU163
	in r24,0x5
	ori r24,lo8(31)
	out 0x5,r24
	.loc 1 90 4 is_stmt 1 view .LVU164
	.loc 1 90 9 is_stmt 0 view .LVU165
	in r24,0x1
	andi r24,lo8(31)
	out 0x1,r24
	.loc 1 91 4 is_stmt 1 view .LVU166
	.loc 1 91 10 is_stmt 0 view .LVU167
	in r24,0x2
	ori r24,lo8(-32)
	out 0x2,r24
	.loc 1 94 4 is_stmt 1 view .LVU168
	.loc 1 94 9 is_stmt 0 view .LVU169
	sbi 0x7,2
	.loc 1 95 4 is_stmt 1 view .LVU170
	.loc 1 95 4 is_stmt 0 view .LVU171
	cbi 0x8,2
	.loc 1 95 14 is_stmt 1 view .LVU172
	.loc 1 98 5 view .LVU173
	call apa102_init
.LVL16:
	.loc 1 101 5 view .LVU174
	ldi r22,lo8(gs(i2c_requested))
	ldi r23,hi8(gs(i2c_requested))
	ldi r24,lo8(gs(i2c_received))
	ldi r25,hi8(gs(i2c_received))
	call i2c_setCallbacks
.LVL17:
	.loc 1 102 5 view .LVU175
	ldi r24,lo8(16)
	call i2c_init
.LVL18:
	.loc 1 104 4 view .LVU176
/* #APP */
 ;  104 "load.c" 1
	sei
 ;  0 "" 2
	.loc 1 106 5 view .LVU177
/* #NOAPP */
.LBB7:
	.loc 1 106 10 view .LVU178
.LVL19:
	.loc 1 106 21 view .LVU179
.LBE7:
	.loc 1 104 4 is_stmt 0 view .LVU180
	ldi r28,0
.LVL20:
.L18:
.LBB8:
	.loc 1 107 9 is_stmt 1 discriminator 3 view .LVU181
	ldi r20,lo8(6)
	mov r22,r28
	ldi r24,lo8(6)
	call apa102_set_all_leds
.LVL21:
	.loc 1 107 43 discriminator 3 view .LVU182
	ldi r24,lo8(30)
	ldi r25,0
	call delay_ms
.LVL22:
	.loc 1 106 28 discriminator 3 view .LVU183
	.loc 1 106 21 discriminator 3 view .LVU184
	subi r28,lo8(-(1))
	.loc 1 106 5 is_stmt 0 discriminator 3 view .LVU185
	cpi r28,lo8(50)
	brne .L18
	ldi r28,0
.L19:
.LBE8:
.LBB9:
	.loc 1 110 9 is_stmt 1 discriminator 3 view .LVU186
	mov r20,r28
	ldi r22,lo8(3)
	ldi r24,lo8(3)
	call apa102_set_all_leds
.LVL23:
	.loc 1 110 43 discriminator 3 view .LVU187
	ldi r24,lo8(30)
	ldi r25,0
	call delay_ms
.LVL24:
	.loc 1 109 28 discriminator 3 view .LVU188
	.loc 1 109 21 discriminator 3 view .LVU189
	subi r28,lo8(-(1))
	.loc 1 109 5 is_stmt 0 discriminator 3 view .LVU190
	cpi r28,lo8(50)
	brne .L19
	ldi r28,0
.L20:
.LBE9:
.LBB10:
	.loc 1 113 9 is_stmt 1 discriminator 3 view .LVU191
	mov r20,r28
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call apa102_set_all_leds
.LVL25:
	.loc 1 113 43 discriminator 3 view .LVU192
	ldi r24,lo8(30)
	ldi r25,0
	call delay_ms
.LVL26:
	.loc 1 112 28 discriminator 3 view .LVU193
	.loc 1 112 21 discriminator 3 view .LVU194
	subi r28,lo8(-(1))
	.loc 1 112 5 is_stmt 0 discriminator 3 view .LVU195
	cpi r28,lo8(50)
	brne .L20
.LBE10:
	.loc 1 116 13 view .LVU196
	ldi r17,0
.LBB11:
.LBB12:
	.loc 1 170 39 view .LVU197
	ldi r16,lo8(25)
.LBE12:
.LBE11:
.LBB16:
.LBB17:
	.loc 1 184 43 view .LVU198
	ldi r28,lo8(1)
	ldi r29,0
.L52:
.LVL27:
	.loc 1 184 43 view .LVU199
.LBE17:
.LBE16:
	.loc 1 118 5 is_stmt 1 view .LVU200
	.loc 1 121 9 view .LVU201
	.loc 1 121 12 is_stmt 0 view .LVU202
	cpi r17,lo8(10)
	brlo .L21
	.loc 1 122 13 is_stmt 1 view .LVU203
.LVL28:
	.loc 1 124 13 view .LVU204
	call set_leds
.LVL29:
	.loc 1 127 13 view .LVU205
	call read_adc
.LVL30:
	.loc 1 122 22 is_stmt 0 view .LVU206
	ldi r17,0
.LVL31:
.L22:
	.loc 1 131 9 is_stmt 1 view .LVU207
.LBB19:
	.loc 1 131 14 view .LVU208
	.loc 1 131 29 view .LVU209
	ldi r30,lo8(debounce_timer)
	ldi r31,hi8(debounce_timer)
.LBE19:
	.loc 1 122 22 is_stmt 0 view .LVU210
	ldi r19,0
	ldi r18,0
	ldi r25,0
.LVL32:
.L46:
.LBB20:
	.loc 1 134 13 is_stmt 1 view .LVU211
	.loc 1 134 31 is_stmt 0 view .LVU212
	ld r24,Z+
	.loc 1 134 16 view .LVU213
	cpse r24,__zero_reg__
	rjmp .L23
.LBB13:
	.loc 1 136 17 is_stmt 1 view .LVU214
.LVL33:
	.loc 1 139 17 view .LVU215
	.loc 1 139 20 is_stmt 0 view .LVU216
	cpse r18,__zero_reg__
	rjmp .L24
	.loc 1 139 29 is_stmt 1 discriminator 1 view .LVU217
	.loc 1 139 46 is_stmt 0 discriminator 1 view .LVU218
	in r24,0x9
.LVL34:
.L76:
	.loc 1 159 34 discriminator 1 view .LVU219
	andi r24,lo8(1)
.LVL35:
	.loc 1 160 17 is_stmt 1 discriminator 1 view .LVU220
	rjmp .L44
.LVL36:
.L21:
	.loc 1 160 17 is_stmt 0 discriminator 1 view .LVU221
.LBE13:
.LBE20:
	.loc 1 129 14 is_stmt 1 view .LVU222
	.loc 1 129 22 is_stmt 0 view .LVU223
	subi r17,lo8(-(1))
.LVL37:
	.loc 1 129 22 view .LVU224
	rjmp .L22
.LVL38:
.L24:
.LBB21:
.LBB14:
	.loc 1 140 17 is_stmt 1 view .LVU225
	.loc 1 140 20 is_stmt 0 view .LVU226
	cpi r18,lo8(1)
	brne .L25
	.loc 1 140 29 is_stmt 1 discriminator 1 view .LVU227
	.loc 1 140 36 is_stmt 0 discriminator 1 view .LVU228
	in r24,0x9
.LVL39:
.L77:
	.loc 1 160 34 discriminator 1 view .LVU229
	lsr r24
	andi r24,1
.LVL40:
	.loc 1 161 17 is_stmt 1 discriminator 1 view .LVU230
	rjmp .L44
.LVL41:
.L25:
	.loc 1 141 17 view .LVU231
	.loc 1 141 20 is_stmt 0 view .LVU232
	cpi r18,lo8(2)
	brne .L26
	.loc 1 141 29 is_stmt 1 discriminator 1 view .LVU233
	.loc 1 141 36 is_stmt 0 discriminator 1 view .LVU234
	in r24,0x9
.LVL42:
.L75:
	.loc 1 161 34 discriminator 1 view .LVU235
	bst r24,2
	clr r24
	bld r24,0
.LVL43:
	.loc 1 162 17 is_stmt 1 discriminator 1 view .LVU236
	rjmp .L44
.L26:
	.loc 1 142 17 view .LVU237
	.loc 1 142 20 is_stmt 0 view .LVU238
	cpi r18,lo8(3)
	brne .L27
	.loc 1 142 29 is_stmt 1 discriminator 1 view .LVU239
	.loc 1 142 36 is_stmt 0 discriminator 1 view .LVU240
	in r24,0x9
.LVL44:
.L74:
	.loc 1 162 34 discriminator 1 view .LVU241
	bst r24,3
	clr r24
	bld r24,0
.LVL45:
	.loc 1 164 17 is_stmt 1 discriminator 1 view .LVU242
	rjmp .L44
.L27:
	.loc 1 144 17 view .LVU243
	.loc 1 144 20 is_stmt 0 view .LVU244
	cpi r18,lo8(4)
	brne .L28
	.loc 1 144 29 is_stmt 1 discriminator 1 view .LVU245
	.loc 1 144 36 is_stmt 0 discriminator 1 view .LVU246
	in r24,0x9
.LVL46:
.L71:
	.loc 1 164 34 discriminator 1 view .LVU247
	swap r24
	andi r24,1
.LVL47:
	.loc 1 164 34 discriminator 1 view .LVU248
	rjmp .L44
.L28:
	.loc 1 145 17 is_stmt 1 view .LVU249
	.loc 1 145 20 is_stmt 0 view .LVU250
	cpi r18,lo8(5)
	breq .+2
	rjmp .L29
	.loc 1 145 29 is_stmt 1 discriminator 1 view .LVU251
	.loc 1 145 36 is_stmt 0 discriminator 1 view .LVU252
	in r24,0x9
.LVL48:
.L73:
	.loc 1 155 34 discriminator 1 view .LVU253
	bst r24,5
	clr r24
	bld r24,0
.LVL49:
	.loc 1 156 17 is_stmt 1 discriminator 1 view .LVU254
.L44:
	.loc 1 168 17 view .LVU255
	movw r26,r18
	subi r26,lo8(-(buttons))
	sbci r27,hi8(-(buttons))
	.loc 1 168 20 is_stmt 0 view .LVU256
	ld r20,X
	cp r20,r24
	breq .L45
	.loc 1 169 21 is_stmt 1 view .LVU257
	.loc 1 169 32 is_stmt 0 view .LVU258
	st X,r24
	.loc 1 170 21 is_stmt 1 view .LVU259
	.loc 1 170 39 is_stmt 0 view .LVU260
	movw r26,r30
	sbiw r26,1
	st X,r16
	.loc 1 171 21 is_stmt 1 view .LVU261
.LVL50:
	.loc 1 171 36 is_stmt 0 view .LVU262
	ldi r25,lo8(1)
.LVL51:
.L45:
	.loc 1 171 36 view .LVU263
.LBE14:
	.loc 1 131 37 is_stmt 1 discriminator 2 view .LVU264
	.loc 1 131 29 discriminator 2 view .LVU265
	subi r18,-1
	sbci r19,-1
.LVL52:
	.loc 1 131 9 is_stmt 0 discriminator 2 view .LVU266
	cpi r18,21
	cpc r19,__zero_reg__
	brne .L46
.LVL53:
	.loc 1 131 9 discriminator 2 view .LVU267
.LBE21:
	.loc 1 179 9 is_stmt 1 view .LVU268
	.loc 1 179 12 is_stmt 0 view .LVU269
	tst r25
	breq .L47
	.loc 1 179 12 view .LVU270
	ldi r30,lo8(buttons)
	ldi r31,hi8(buttons)
	ldi r25,0
	ldi r24,0
.LBB22:
	.loc 1 182 27 view .LVU271
	ldi r18,0
	.loc 1 182 22 view .LVU272
	ldi r19,0
	.loc 1 182 17 view .LVU273
	ldi r20,0
.L51:
.LVL54:
.LBB18:
	.loc 1 184 17 is_stmt 1 view .LVU274
	.loc 1 184 28 is_stmt 0 view .LVU275
	mov r21,r24
	ld r22,Z+
	.loc 1 184 20 view .LVU276
	tst r22
	breq .L48
	.loc 1 184 33 is_stmt 1 discriminator 1 view .LVU277
	.loc 1 184 43 is_stmt 0 discriminator 1 view .LVU278
	movw r22,r28
	mov r0,r24
	rjmp 2f
	1:
	lsl r22
	2:
	dec r0
	brpl 1b
	.loc 1 184 38 discriminator 1 view .LVU279
	or r20,r22
.LVL55:
.L48:
	.loc 1 185 17 is_stmt 1 view .LVU280
	.loc 1 185 20 is_stmt 0 view .LVU281
	ldd r22,Z+7
	tst r22
	breq .L49
	.loc 1 185 37 is_stmt 1 discriminator 1 view .LVU282
	.loc 1 185 47 is_stmt 0 discriminator 1 view .LVU283
	movw r22,r28
	mov r0,r21
	rjmp 2f
	1:
	lsl r22
	2:
	dec r0
	brpl 1b
	.loc 1 185 42 discriminator 1 view .LVU284
	or r19,r22
.LVL56:
.L49:
	.loc 1 186 17 is_stmt 1 view .LVU285
	.loc 1 186 20 is_stmt 0 view .LVU286
	ldd r22,Z+15
	tst r22
	breq .L50
	.loc 1 186 38 is_stmt 1 discriminator 1 view .LVU287
	.loc 1 186 48 is_stmt 0 discriminator 1 view .LVU288
	movw r22,r28
	rjmp 2f
	1:
	lsl r22
	2:
	dec r21
	brpl 1b
	.loc 1 186 43 discriminator 1 view .LVU289
	or r18,r22
.LVL57:
.L50:
	.loc 1 183 40 is_stmt 1 discriminator 2 view .LVU290
	.loc 1 183 33 discriminator 2 view .LVU291
	adiw r24,1
.LVL58:
	.loc 1 183 13 is_stmt 0 discriminator 2 view .LVU292
	cpi r24,8
	cpc r25,__zero_reg__
	brne .L51
	.loc 1 183 13 discriminator 2 view .LVU293
.LBE18:
	.loc 1 188 13 is_stmt 1 view .LVU294
	.loc 1 188 24 is_stmt 0 view .LVU295
	sts data_po,r20
	.loc 1 189 13 is_stmt 1 view .LVU296
	.loc 1 189 24 is_stmt 0 view .LVU297
	sts data_po+1,r19
	.loc 1 190 13 is_stmt 1 view .LVU298
	.loc 1 190 24 is_stmt 0 view .LVU299
	sts data_po+2,r18
	.loc 1 192 12 is_stmt 1 view .LVU300
	.loc 1 192 12 is_stmt 0 view .LVU301
	sbi 0x8,2
	.loc 1 192 21 is_stmt 1 view .LVU302
	.loc 1 193 13 view .LVU303
.LVL59:
.L47:
	.loc 1 193 13 is_stmt 0 view .LVU304
.LBE22:
	.loc 1 196 9 is_stmt 1 view .LVU305
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL60:
	.loc 1 118 10 view .LVU306
	.loc 1 121 12 is_stmt 0 view .LVU307
	rjmp .L52
.LVL61:
.L29:
.LBB23:
.LBB15:
	.loc 1 146 17 is_stmt 1 view .LVU308
	.loc 1 146 20 is_stmt 0 view .LVU309
	cpi r18,lo8(6)
	brne .L30
	.loc 1 146 29 is_stmt 1 discriminator 1 view .LVU310
	.loc 1 146 36 is_stmt 0 discriminator 1 view .LVU311
	in r24,0x9
.LVL62:
.L70:
	.loc 1 156 34 discriminator 1 view .LVU312
	bst r24,6
	clr r24
	bld r24,0
.LVL63:
	.loc 1 157 17 is_stmt 1 discriminator 1 view .LVU313
	rjmp .L44
.L30:
	.loc 1 147 17 view .LVU314
	.loc 1 147 20 is_stmt 0 view .LVU315
	cpi r18,lo8(7)
	brne .L31
	.loc 1 147 29 is_stmt 1 discriminator 1 view .LVU316
	.loc 1 147 36 is_stmt 0 discriminator 1 view .LVU317
	in r24,0x9
.LVL64:
.L72:
	.loc 1 157 47 discriminator 1 view .LVU318
	rol r24
	clr r24
	rol r24
.LVL65:
	.loc 1 159 17 is_stmt 1 discriminator 1 view .LVU319
	rjmp .L44
.L31:
	.loc 1 149 17 view .LVU320
	.loc 1 149 20 is_stmt 0 view .LVU321
	cpi r18,lo8(8)
	brne .L32
	.loc 1 149 29 is_stmt 1 discriminator 1 view .LVU322
	.loc 1 149 36 is_stmt 0 discriminator 1 view .LVU323
	in r24,0x6
.LVL66:
	.loc 1 149 36 discriminator 1 view .LVU324
	rjmp .L74
.LVL67:
.L32:
	.loc 1 150 17 is_stmt 1 view .LVU325
	.loc 1 150 20 is_stmt 0 view .LVU326
	cpi r18,lo8(9)
	brne .L33
	.loc 1 150 29 is_stmt 1 discriminator 1 view .LVU327
	.loc 1 150 36 is_stmt 0 discriminator 1 view .LVU328
	in r24,0x6
.LVL68:
	.loc 1 150 36 discriminator 1 view .LVU329
	rjmp .L71
.LVL69:
.L33:
	.loc 1 151 17 is_stmt 1 view .LVU330
	.loc 1 151 20 is_stmt 0 view .LVU331
	cpi r18,lo8(10)
	brne .L34
	.loc 1 151 30 is_stmt 1 discriminator 1 view .LVU332
	.loc 1 151 37 is_stmt 0 discriminator 1 view .LVU333
	in r24,0x6
.LVL70:
	.loc 1 151 37 discriminator 1 view .LVU334
	rjmp .L73
.LVL71:
.L34:
	.loc 1 152 17 is_stmt 1 view .LVU335
	.loc 1 152 20 is_stmt 0 view .LVU336
	cpi r18,lo8(11)
	brne .L35
	.loc 1 152 30 is_stmt 1 discriminator 1 view .LVU337
	.loc 1 152 37 is_stmt 0 discriminator 1 view .LVU338
	in r24,0x6
.LVL72:
	.loc 1 152 37 discriminator 1 view .LVU339
	rjmp .L70
.LVL73:
.L35:
	.loc 1 154 17 is_stmt 1 view .LVU340
	.loc 1 154 20 is_stmt 0 view .LVU341
	cpi r18,lo8(12)
	brne .L36
	.loc 1 154 30 is_stmt 1 discriminator 1 view .LVU342
	.loc 1 154 37 is_stmt 0 discriminator 1 view .LVU343
	in r24,0x6
.LVL74:
	.loc 1 154 37 discriminator 1 view .LVU344
	rjmp .L72
.LVL75:
.L36:
	.loc 1 155 17 is_stmt 1 view .LVU345
	.loc 1 155 20 is_stmt 0 view .LVU346
	cpi r18,lo8(13)
	brne .L37
	.loc 1 155 30 is_stmt 1 discriminator 1 view .LVU347
	.loc 1 155 37 is_stmt 0 discriminator 1 view .LVU348
	in r24,0
.LVL76:
	.loc 1 155 37 discriminator 1 view .LVU349
	rjmp .L73
.LVL77:
.L37:
	.loc 1 156 17 is_stmt 1 view .LVU350
	.loc 1 156 20 is_stmt 0 view .LVU351
	cpi r18,lo8(14)
	brne .L38
	.loc 1 156 30 is_stmt 1 discriminator 1 view .LVU352
	.loc 1 156 37 is_stmt 0 discriminator 1 view .LVU353
	in r24,0
.LVL78:
	.loc 1 156 37 discriminator 1 view .LVU354
	rjmp .L70
.LVL79:
.L38:
	.loc 1 157 17 is_stmt 1 view .LVU355
	.loc 1 157 20 is_stmt 0 view .LVU356
	cpi r18,lo8(15)
	brne .L39
	.loc 1 157 30 is_stmt 1 discriminator 1 view .LVU357
	.loc 1 157 37 is_stmt 0 discriminator 1 view .LVU358
	in r24,0
.LVL80:
	.loc 1 157 37 discriminator 1 view .LVU359
	rjmp .L72
.LVL81:
.L39:
	.loc 1 159 17 is_stmt 1 view .LVU360
	.loc 1 159 20 is_stmt 0 view .LVU361
	cpi r18,lo8(16)
	brne .L40
	.loc 1 159 30 is_stmt 1 discriminator 1 view .LVU362
	.loc 1 159 47 is_stmt 0 discriminator 1 view .LVU363
	in r24,0x3
.LVL82:
	.loc 1 159 47 discriminator 1 view .LVU364
	rjmp .L76
.LVL83:
.L40:
	.loc 1 160 17 is_stmt 1 view .LVU365
	.loc 1 160 20 is_stmt 0 view .LVU366
	cpi r18,lo8(17)
	brne .L41
	.loc 1 160 30 is_stmt 1 discriminator 1 view .LVU367
	.loc 1 160 37 is_stmt 0 discriminator 1 view .LVU368
	in r24,0x3
.LVL84:
	.loc 1 160 37 discriminator 1 view .LVU369
	rjmp .L77
.LVL85:
.L41:
	.loc 1 161 17 is_stmt 1 view .LVU370
	.loc 1 161 20 is_stmt 0 view .LVU371
	cpi r18,lo8(18)
	brne .L42
	.loc 1 161 30 is_stmt 1 discriminator 1 view .LVU372
	.loc 1 161 37 is_stmt 0 discriminator 1 view .LVU373
	in r24,0x3
.LVL86:
	.loc 1 161 37 discriminator 1 view .LVU374
	rjmp .L75
.LVL87:
.L42:
	.loc 1 162 17 is_stmt 1 view .LVU375
	.loc 1 162 20 is_stmt 0 view .LVU376
	cpi r18,lo8(19)
	brne .L43
	.loc 1 162 30 is_stmt 1 discriminator 1 view .LVU377
	.loc 1 162 37 is_stmt 0 discriminator 1 view .LVU378
	in r24,0x3
.LVL88:
	.loc 1 162 37 discriminator 1 view .LVU379
	rjmp .L74
.LVL89:
.L43:
	.loc 1 164 17 is_stmt 1 view .LVU380
	.loc 1 164 20 is_stmt 0 view .LVU381
	cpi r18,lo8(20)
	breq .+2
	rjmp .L44
	.loc 1 164 30 is_stmt 1 discriminator 1 view .LVU382
	.loc 1 164 37 is_stmt 0 discriminator 1 view .LVU383
	in r24,0x3
.LVL90:
	.loc 1 164 37 discriminator 1 view .LVU384
	rjmp .L71
.LVL91:
.L23:
	.loc 1 164 37 discriminator 1 view .LVU385
.LBE15:
	.loc 1 175 17 is_stmt 1 view .LVU386
	.loc 1 175 34 is_stmt 0 view .LVU387
	movw r26,r30
	sbiw r26,1
	subi r24,lo8(-(-1))
	st X,r24
	rjmp .L45
.LBE23:
	.cfi_endproc
.LFE8:
	.size	main, .-main
.global	data_pi
	.section	.bss.data_pi,"aw",@nobits
	.type	data_pi, @object
	.size	data_pi, 9
data_pi:
	.zero	9
.global	buttons
	.section	.data.buttons,"aw"
	.type	buttons, @object
	.size	buttons, 21
buttons:
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.ascii	"\001\001\001\001\001\001"
.global	debounce_timer
	.section	.bss.debounce_timer,"aw",@nobits
	.type	debounce_timer, @object
	.size	debounce_timer, 21
debounce_timer:
	.zero	21
.global	data_po
	.section	.data.data_po,"aw"
	.type	data_po, @object
	.size	data_po, 7
data_po:
	.string	"\377\377\377"
	.string	""
	.string	""
	.string	""
	.text
.Letext0:
	.file 3 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h"
	.file 4 "apa102.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4eb
	.word	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF33
	.byte	0xc
	.long	.LASF34
	.long	.LASF35
	.long	.Ldebug_ranges0+0xa0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
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
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x80
	.byte	0x16
	.long	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x82
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	0x2c
	.long	0x91
	.uleb128 0x6
	.long	0x52
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.long	0x81
	.uleb128 0x5
	.byte	0x3
	.long	data_po
	.uleb128 0x5
	.long	0x2c
	.long	0xb3
	.uleb128 0x6
	.long	0x52
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	debounce_timer
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	buttons
	.uleb128 0x5
	.long	0x2c
	.long	0xe7
	.uleb128 0x6
	.long	0x52
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.long	0xd7
	.uleb128 0x5
	.byte	0x3
	.long	data_pi
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x19
	.byte	0x10
	.long	0x2c
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.long	0x2c
	.uleb128 0x9
	.long	.LASF36
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.long	0x3f
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x34f
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.long	0x2c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.long	0x2c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xb
	.long	.Ldebug_ranges0+0
	.long	0x1a1
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x6a
	.byte	0xe
	.long	0x3f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xd
	.long	.LVL21
	.long	0x49a
	.long	0x18c
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x36
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0xf
	.long	.LVL22
	.long	0x3dd
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LBB9
	.long	.LBE9-.LBB9
	.long	0x1eb
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.byte	0xe
	.long	0x3f
	.uleb128 0xd
	.long	.LVL23
	.long	0x49a
	.long	0x1d6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x33
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x33
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL24
	.long	0x3dd
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LBB10
	.long	.LBE10-.LBB10
	.long	0x235
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x70
	.byte	0xe
	.long	0x3f
	.uleb128 0xd
	.long	.LVL25
	.long	0x49a
	.long	0x220
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL26
	.long	0x3dd
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.Ldebug_ranges0+0x18
	.long	0x26b
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x83
	.byte	0x16
	.long	0x2c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x88
	.byte	0x19
	.long	0x2c
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.Ldebug_ranges0+0x70
	.long	0x2c9
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0xb5
	.byte	0x15
	.long	0x2c
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xb5
	.byte	0x1b
	.long	0x2c
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0xb5
	.byte	0x21
	.long	0x2c
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x88
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xb7
	.byte	0x1a
	.long	0x2c
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LVL15
	.long	0x3dd
	.long	0x2e1
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.long	.LVL16
	.long	0x4a6
	.uleb128 0xd
	.long	.LVL17
	.long	0x4b2
	.long	0x314
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	i2c_received
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	i2c_requested
	.byte	0
	.uleb128 0xd
	.long	.LVL18
	.long	0x4be
	.long	0x327
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.long	.LVL29
	.long	0x34f
	.uleb128 0x13
	.long	.LVL30
	.long	0x3b3
	.uleb128 0xf
	.long	.LVL60
	.long	0x3dd
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF21
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b3
	.uleb128 0x10
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0x3a0
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x42
	.byte	0x12
	.long	0x2c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x13
	.long	.LVL11
	.long	0x4ca
	.uleb128 0x13
	.long	.LVL12
	.long	0x4ca
	.uleb128 0x13
	.long	.LVL13
	.long	0x4ca
	.byte	0
	.uleb128 0x13
	.long	.LVL10
	.long	0x4d6
	.uleb128 0x15
	.long	.LVL14
	.long	0x4e2
	.byte	0
	.uleb128 0x14
	.long	.LASF22
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd
	.uleb128 0xc
	.string	"ch"
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.long	0x2c
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.uleb128 0x14
	.long	.LASF23
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x41b
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x2b
	.byte	0x18
	.long	0x46
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF24
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.long	0x60
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.uleb128 0x17
	.long	.LASF38
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x455
	.uleb128 0x18
	.long	0x480
	.long	.LBI4
	.byte	.LVU18
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.uleb128 0x19
	.long	0x48d
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF25
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x480
	.uleb128 0x1a
	.long	.LASF39
	.byte	0x1
	.byte	0x1c
	.byte	0x1b
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x2
	.byte	0xb
	.byte	0x2c
	.byte	0x3
	.long	0x49a
	.uleb128 0x1c
	.long	.LASF41
	.byte	0x2
	.byte	0xb
	.byte	0x45
	.long	0x2c
	.byte	0
	.uleb128 0x1d
	.long	.LASF26
	.long	.LASF26
	.byte	0x4
	.byte	0xf
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF27
	.long	.LASF27
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF28
	.long	.LASF28
	.byte	0x2
	.byte	0x9
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF29
	.long	.LASF29
	.byte	0x2
	.byte	0x7
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF30
	.long	.LASF30
	.byte	0x4
	.byte	0xe
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF31
	.long	.LASF31
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF32
	.long	.LASF32
	.byte	0x4
	.byte	0xd
	.byte	0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS5:
	.uleb128 .LVU199
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 0
.LLST5:
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x61
	.long	.LVL28
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LFE8
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LVUS6:
	.uleb128 .LVU199
	.uleb128 .LVU211
	.uleb128 .LVU221
	.uleb128 .LVU225
	.uleb128 .LVU262
	.uleb128 .LVU263
	.uleb128 .LVU304
	.uleb128 .LVU308
.LLST6:
	.long	.LVL27
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL36
	.long	.LVL38
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL59
	.long	.LVL61
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS7:
	.uleb128 .LVU179
	.uleb128 .LVU181
.LLST7:
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS8:
	.uleb128 .LVU209
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU221
	.uleb128 .LVU225
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST8:
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LVL36
	.word	0x1
	.byte	0x62
	.long	.LVL38
	.long	.LVL51
	.word	0x1
	.byte	0x62
	.long	.LVL51
	.long	.LVL52
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x62
	.long	.LVL53
	.long	.LVL61
	.word	0x2
	.byte	0x45
	.byte	0x9f
	.long	.LVL61
	.long	.LFE8
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS9:
	.uleb128 .LVU215
	.uleb128 .LVU219
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU225
	.uleb128 .LVU229
	.uleb128 .LVU230
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU263
	.uleb128 .LVU308
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU345
	.uleb128 .LVU345
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU354
	.uleb128 .LVU354
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 .LVU385
.LLST9:
	.long	.LVL33
	.long	.LVL34
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL40
	.long	.LVL42
	.word	0x1
	.byte	0x68
	.long	.LVL42
	.long	.LVL43
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x68
	.long	.LVL44
	.long	.LVL45
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL45
	.long	.LVL46
	.word	0x1
	.byte	0x68
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL47
	.long	.LVL48
	.word	0x1
	.byte	0x68
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL49
	.long	.LVL51
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x68
	.long	.LVL62
	.long	.LVL63
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x68
	.long	.LVL64
	.long	.LVL65
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL65
	.long	.LVL66
	.word	0x1
	.byte	0x68
	.long	.LVL66
	.long	.LVL67
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL67
	.long	.LVL68
	.word	0x1
	.byte	0x68
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	.LVL70
	.long	.LVL71
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x68
	.long	.LVL72
	.long	.LVL73
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x68
	.long	.LVL74
	.long	.LVL75
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL75
	.long	.LVL76
	.word	0x1
	.byte	0x68
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL77
	.long	.LVL78
	.word	0x1
	.byte	0x68
	.long	.LVL78
	.long	.LVL79
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL79
	.long	.LVL80
	.word	0x1
	.byte	0x68
	.long	.LVL80
	.long	.LVL81
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL81
	.long	.LVL82
	.word	0x1
	.byte	0x68
	.long	.LVL82
	.long	.LVL83
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL83
	.long	.LVL84
	.word	0x1
	.byte	0x68
	.long	.LVL84
	.long	.LVL85
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL85
	.long	.LVL86
	.word	0x1
	.byte	0x68
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL87
	.long	.LVL88
	.word	0x1
	.byte	0x68
	.long	.LVL88
	.long	.LVL89
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL89
	.long	.LVL90
	.word	0x1
	.byte	0x68
	.long	.LVL90
	.long	.LVL91
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	0
	.long	0
.LVUS10:
	.uleb128 .LVU274
	.uleb128 .LVU304
.LLST10:
	.long	.LVL54
	.long	.LVL59
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LVUS11:
	.uleb128 .LVU274
	.uleb128 .LVU304
.LLST11:
	.long	.LVL54
	.long	.LVL59
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LVUS12:
	.uleb128 .LVU274
	.uleb128 .LVU304
.LLST12:
	.long	.LVL54
	.long	.LVL59
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS13:
	.uleb128 .LVU274
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU304
.LLST13:
	.long	.LVL54
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LVL58
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS4:
	.uleb128 .LVU133
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL13
	.long	.LFE7
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LVUS3:
	.uleb128 .LVU106
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LFE6
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5
	.long	.LFE5
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS1:
	.uleb128 .LVU18
	.uleb128 .LVU21
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LFE3
	.word	0x2
	.byte	0x8e
	.sleb128 0
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
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB8
	.long	.LBE8
	.long	0
	.long	0
	.long	.LBB11
	.long	.LBE11
	.long	.LBB19
	.long	.LBE19
	.long	.LBB20
	.long	.LBE20
	.long	.LBB21
	.long	.LBE21
	.long	.LBB23
	.long	.LBE23
	.long	0
	.long	0
	.long	.LBB12
	.long	.LBE12
	.long	.LBB13
	.long	.LBE13
	.long	.LBB14
	.long	.LBE14
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB22
	.long	.LBE22
	.long	0
	.long	0
	.long	.LBB17
	.long	.LBE17
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"/Users/owen1/repos/201-PocketPiano/controllers/bbimx/atmega164"
.LASF27:
	.string	"apa102_init"
.LASF17:
	.string	"button_changed"
.LASF12:
	.string	"buttons"
.LASF28:
	.string	"i2c_setCallbacks"
.LASF21:
	.string	"set_leds"
.LASF18:
	.string	"tmp0"
.LASF19:
	.string	"tmp1"
.LASF20:
	.string	"tmp2"
.LASF22:
	.string	"read_adc"
.LASF41:
	.string	"data"
.LASF26:
	.string	"apa102_set_all_leds"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"delay_ms"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"data_pi"
.LASF16:
	.string	"ms_count"
.LASF29:
	.string	"i2c_init"
.LASF10:
	.string	"data_po"
.LASF11:
	.string	"debounce_timer"
.LASF36:
	.string	"main"
.LASF33:
	.string	"GNU C99 9.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections"
.LASF40:
	.string	"i2c_transmitByte"
.LASF14:
	.string	"i2c_recv_index"
.LASF4:
	.string	"unsigned int"
.LASF38:
	.string	"i2c_requested"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF37:
	.string	"dtime"
.LASF34:
	.string	"load.c"
.LASF24:
	.string	"time"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"i2c_send_index"
.LASF3:
	.string	"uint16_t"
.LASF25:
	.string	"i2c_received"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"apa102_end"
.LASF30:
	.string	"apa102_set_led"
.LASF39:
	.string	"received_data"
.LASF31:
	.string	"apa102_start"
	.ident	"GCC: (Homebrew AVR GCC 9.3.0_3) 9.3.0"
.global __do_copy_data
.global __do_clear_bss
