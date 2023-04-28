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
	.loc 1 27 42 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 28 5 view .LVU1
	.loc 1 28 12 is_stmt 0 view .LVU2
	lds r25,i2c_recv_index
	mov r30,r25
	ldi r31,0
	.loc 1 28 29 view .LVU3
	subi r30,lo8(-(data_pi))
	sbci r31,hi8(-(data_pi))
	st Z,r24
	.loc 1 29 5 is_stmt 1 view .LVU4
	.loc 1 29 19 is_stmt 0 view .LVU5
	ldi r24,lo8(1)
.LVL1:
	.loc 1 29 19 view .LVU6
	add r24,r25
	.loc 1 30 5 is_stmt 1 view .LVU7
	.loc 1 30 8 is_stmt 0 view .LVU8
	cpi r25,lo8(8)
	breq .L2
	.loc 1 29 19 view .LVU9
	sts i2c_recv_index,r24
	ret
.L2:
	.loc 1 30 30 is_stmt 1 discriminator 1 view .LVU10
	.loc 1 30 45 is_stmt 0 discriminator 1 view .LVU11
	sts i2c_recv_index,__zero_reg__
/* epilogue start */
	.loc 1 31 2 discriminator 1 view .LVU12
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_received, .-i2c_received
	.section	.text.i2c_requested,"ax",@progbits
.global	i2c_requested
	.type	i2c_requested, @function
i2c_requested:
.LFB4:
	.loc 1 33 22 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 4 view .LVU14
	.loc 1 35 4 is_stmt 0 view .LVU15
	cbi 0x8,2
	.loc 1 35 14 is_stmt 1 view .LVU16
	.loc 1 36 5 view .LVU17
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
	.loc 1 37 5 is_stmt 1 view .LVU22
	.loc 1 37 19 is_stmt 0 view .LVU23
	lds r24,i2c_send_index
	ldi r25,lo8(1)
	add r25,r24
	.loc 1 38 5 is_stmt 1 view .LVU24
	.loc 1 38 8 is_stmt 0 view .LVU25
	cpi r24,lo8(6)
	breq .L5
	.loc 1 37 19 view .LVU26
	sts i2c_send_index,r25
	ret
.L5:
	.loc 1 38 30 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 38 45 is_stmt 0 discriminator 1 view .LVU28
	sts i2c_send_index,__zero_reg__
/* epilogue start */
	.loc 1 39 1 discriminator 1 view .LVU29
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
	.loc 1 42 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 43 5 view .LVU31
	.loc 1 44 5 view .LVU32
	.loc 1 45 5 view .LVU33
	.loc 1 45 10 is_stmt 0 view .LVU34
	movw r18,r24
	ldi r26,lo8(125)
	ldi r27,0
	call __umulhisi3
.LVL5:
	.loc 1 46 5 is_stmt 1 view .LVU35
.L8:
	.loc 1 46 10 view .LVU36
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L9
/* epilogue start */
	.loc 1 50 1 is_stmt 0 view .LVU37
	ret
.L9:
	.loc 1 47 10 is_stmt 1 view .LVU38
/* #APP */
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 30 view .LVU39
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 50 view .LVU40
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 70 view .LVU41
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 90 view .LVU42
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 110 view .LVU43
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 130 view .LVU44
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 150 view .LVU45
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 171 view .LVU46
	.loc 1 47 173 view .LVU47
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 193 view .LVU48
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 213 view .LVU49
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 233 view .LVU50
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 253 view .LVU51
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 273 view .LVU52
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 293 view .LVU53
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 313 view .LVU54
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 334 view .LVU55
	.loc 1 47 336 view .LVU56
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 356 view .LVU57
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 376 view .LVU58
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 396 view .LVU59
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 416 view .LVU60
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 436 view .LVU61
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 456 view .LVU62
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 476 view .LVU63
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 497 view .LVU64
	.loc 1 47 499 view .LVU65
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 519 view .LVU66
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 539 view .LVU67
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 559 view .LVU68
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 579 view .LVU69
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 599 view .LVU70
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 619 view .LVU71
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 639 view .LVU72
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 660 view .LVU73
	.loc 1 47 662 view .LVU74
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 682 view .LVU75
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 702 view .LVU76
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 722 view .LVU77
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 742 view .LVU78
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 762 view .LVU79
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 782 view .LVU80
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 802 view .LVU81
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 823 view .LVU82
	.loc 1 47 825 view .LVU83
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 845 view .LVU84
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 865 view .LVU85
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 885 view .LVU86
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 905 view .LVU87
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 925 view .LVU88
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 945 view .LVU89
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 965 view .LVU90
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 986 view .LVU91
	.loc 1 47 988 view .LVU92
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1008 view .LVU93
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1028 view .LVU94
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1048 view .LVU95
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1068 view .LVU96
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1088 view .LVU97
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1108 view .LVU98
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1128 view .LVU99
 ;  47 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 47 1149 view .LVU100
	.loc 1 48 9 view .LVU101
	.loc 1 48 13 is_stmt 0 view .LVU102
/* #NOAPP */
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
.LVL6:
	.loc 1 48 13 view .LVU103
	rjmp .L8
	.cfi_endproc
.LFE5:
	.size	delay_ms, .-delay_ms
	.section	.text.read_adc,"ax",@progbits
.global	read_adc
	.type	read_adc, @function
read_adc:
.LFB6:
	.loc 1 52 21 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 53 5 view .LVU105
.LVL7:
	.loc 1 54 5 view .LVU106
	.loc 1 54 18 view .LVU107
	ldi r30,lo8(data_po+3)
	ldi r31,hi8(data_po+3)
	.loc 1 54 13 is_stmt 0 view .LVU108
	ldi r24,0
	.loc 1 57 15 view .LVU109
	ldi r18,lo8(-42)
.LVL8:
.L12:
	.loc 1 55 8 is_stmt 1 view .LVU110
	.loc 1 55 14 is_stmt 0 view .LVU111
	sts 124,r24
	.loc 1 56 8 is_stmt 1 view .LVU112
	.loc 1 56 14 is_stmt 0 view .LVU113
	lds r25,124
	ori r25,lo8(32)
	sts 124,r25
	.loc 1 57 8 is_stmt 1 view .LVU114
	.loc 1 57 15 is_stmt 0 view .LVU115
	sts 122,r18
	.loc 1 58 9 is_stmt 1 view .LVU116
.L11:
	.loc 1 58 34 discriminator 1 view .LVU117
	.loc 1 58 14 discriminator 1 view .LVU118
	.loc 1 58 17 is_stmt 0 discriminator 1 view .LVU119
	lds r25,122
	.loc 1 58 14 discriminator 1 view .LVU120
	sbrs r25,4
	rjmp .L11
	.loc 1 59 9 is_stmt 1 discriminator 2 view .LVU121
	.loc 1 59 27 is_stmt 0 discriminator 2 view .LVU122
	lds r25,121
	.loc 1 59 25 discriminator 2 view .LVU123
	st Z+,r25
	.loc 1 54 26 is_stmt 1 discriminator 2 view .LVU124
	.loc 1 54 28 is_stmt 0 discriminator 2 view .LVU125
	subi r24,lo8(-(1))
.LVL9:
	.loc 1 54 18 is_stmt 1 discriminator 2 view .LVU126
	.loc 1 54 5 is_stmt 0 discriminator 2 view .LVU127
	cpi r24,lo8(4)
	brne .L12
/* epilogue start */
	.loc 1 61 1 view .LVU128
	ret
	.cfi_endproc
.LFE6:
	.size	read_adc, .-read_adc
	.section	.text.set_leds,"ax",@progbits
.global	set_leds
	.type	set_leds, @function
set_leds:
.LFB7:
	.loc 1 63 21 is_stmt 1 view -0
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
	.loc 1 64 5 view .LVU130
	call apa102_start
.LVL10:
	.loc 1 65 5 view .LVU131
.LBB6:
	.loc 1 65 10 view .LVU132
	.loc 1 65 25 view .LVU133
	.loc 1 66 9 view .LVU134
	ldi r28,lo8(data_pi)
	ldi r29,hi8(data_pi)
	ldd r20,Y+2
	ldd r22,Y+1
	ld r24,Y
	call apa102_set_led
.LVL11:
	.loc 1 65 32 view .LVU135
	.loc 1 65 25 view .LVU136
	.loc 1 66 9 view .LVU137
	ldd r20,Y+5
	ldd r22,Y+4
	ldd r24,Y+3
	call apa102_set_led
.LVL12:
	.loc 1 65 32 view .LVU138
	.loc 1 65 25 view .LVU139
	.loc 1 66 9 view .LVU140
	ldd r20,Y+8
	ldd r22,Y+7
	ldd r24,Y+6
	call apa102_set_led
.LVL13:
	.loc 1 65 32 view .LVU141
	.loc 1 65 25 view .LVU142
.LBE6:
	.loc 1 68 5 view .LVU143
/* epilogue start */
	.loc 1 69 1 is_stmt 0 view .LVU144
	pop r29
	pop r28
	.loc 1 68 5 view .LVU145
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
	.loc 1 71 16 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 74 4 view .LVU147
	.loc 1 74 9 is_stmt 0 view .LVU148
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 75 4 is_stmt 1 view .LVU149
	.loc 1 75 9 is_stmt 0 view .LVU150
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 77 5 is_stmt 1 view .LVU151
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL15:
	.loc 1 80 4 view .LVU152
	.loc 1 80 9 is_stmt 0 view .LVU153
	out 0xa,__zero_reg__
	.loc 1 81 4 is_stmt 1 view .LVU154
	.loc 1 81 10 is_stmt 0 view .LVU155
	ldi r24,lo8(-1)
	out 0xb,r24
	.loc 1 83 4 is_stmt 1 view .LVU156
	.loc 1 83 9 is_stmt 0 view .LVU157
	in r24,0x7
	andi r24,lo8(7)
	out 0x7,r24
	.loc 1 84 4 is_stmt 1 view .LVU158
	.loc 1 84 10 is_stmt 0 view .LVU159
	in r24,0x8
	ori r24,lo8(-8)
	out 0x8,r24
	.loc 1 86 4 is_stmt 1 view .LVU160
	.loc 1 86 9 is_stmt 0 view .LVU161
	in r24,0x4
	andi r24,lo8(-32)
	out 0x4,r24
	.loc 1 87 4 is_stmt 1 view .LVU162
	.loc 1 87 10 is_stmt 0 view .LVU163
	in r24,0x5
	ori r24,lo8(31)
	out 0x5,r24
	.loc 1 89 4 is_stmt 1 view .LVU164
	.loc 1 89 9 is_stmt 0 view .LVU165
	in r24,0x1
	andi r24,lo8(31)
	out 0x1,r24
	.loc 1 90 4 is_stmt 1 view .LVU166
	.loc 1 90 10 is_stmt 0 view .LVU167
	in r24,0x2
	ori r24,lo8(-32)
	out 0x2,r24
	.loc 1 93 4 is_stmt 1 view .LVU168
	.loc 1 93 9 is_stmt 0 view .LVU169
	sbi 0x7,2
	.loc 1 94 4 is_stmt 1 view .LVU170
	.loc 1 94 4 is_stmt 0 view .LVU171
	cbi 0x8,2
	.loc 1 94 14 is_stmt 1 view .LVU172
	.loc 1 97 5 view .LVU173
	call apa102_init
.LVL16:
	.loc 1 100 5 view .LVU174
	ldi r22,lo8(gs(i2c_requested))
	ldi r23,hi8(gs(i2c_requested))
	ldi r24,lo8(gs(i2c_received))
	ldi r25,hi8(gs(i2c_received))
	call i2c_setCallbacks
.LVL17:
	.loc 1 101 5 view .LVU175
	ldi r24,lo8(16)
	call i2c_init
.LVL18:
	.loc 1 103 4 view .LVU176
/* #APP */
 ;  103 "load.c" 1
	sei
 ;  0 "" 2
	.loc 1 106 9 view .LVU177
/* #NOAPP */
	ldi r20,0
	ldi r22,0
	ldi r24,0
	call apa102_set_all_leds
.LVL19:
	.loc 1 106 38 view .LVU178
	ldi r24,lo8(44)
	ldi r25,lo8(1)
	call delay_ms
.LVL20:
	.loc 1 107 9 view .LVU179
	ldi r20,0
	ldi r22,0
	ldi r24,lo8(100)
	call apa102_set_all_leds
.LVL21:
	.loc 1 107 40 view .LVU180
	ldi r24,lo8(44)
	ldi r25,lo8(1)
	call delay_ms
.LVL22:
	.loc 1 108 9 view .LVU181
	ldi r20,0
	ldi r22,lo8(100)
	ldi r24,0
	call apa102_set_all_leds
.LVL23:
	.loc 1 108 40 view .LVU182
	ldi r24,lo8(44)
	ldi r25,lo8(1)
	call delay_ms
.LVL24:
	.loc 1 109 9 view .LVU183
	ldi r20,lo8(100)
	ldi r22,0
	ldi r24,0
	call apa102_set_all_leds
.LVL25:
	.loc 1 109 40 view .LVU184
	ldi r24,lo8(44)
	ldi r25,lo8(1)
	call delay_ms
.LVL26:
	.loc 1 111 5 view .LVU185
	.loc 1 112 5 view .LVU186
	.loc 1 111 13 is_stmt 0 view .LVU187
	ldi r17,0
.LBB7:
.LBB8:
	.loc 1 165 39 view .LVU188
	ldi r16,lo8(25)
.LBE8:
.LBE7:
.LBB12:
.LBB13:
	.loc 1 179 43 view .LVU189
	ldi r28,lo8(1)
	ldi r29,0
.LVL27:
.L49:
	.loc 1 179 43 view .LVU190
.LBE13:
.LBE12:
	.loc 1 113 5 is_stmt 1 view .LVU191
	.loc 1 116 9 view .LVU192
	.loc 1 116 12 is_stmt 0 view .LVU193
	cpi r17,lo8(10)
	brlo .L18
	.loc 1 117 13 is_stmt 1 view .LVU194
.LVL28:
	.loc 1 119 13 view .LVU195
	call set_leds
.LVL29:
	.loc 1 122 13 view .LVU196
	call read_adc
.LVL30:
	.loc 1 117 22 is_stmt 0 view .LVU197
	ldi r17,0
.LVL31:
.L19:
	.loc 1 126 9 is_stmt 1 view .LVU198
.LBB15:
	.loc 1 126 14 view .LVU199
	.loc 1 126 29 view .LVU200
	ldi r30,lo8(debounce_timer)
	ldi r31,hi8(debounce_timer)
.LBE15:
	.loc 1 117 22 is_stmt 0 view .LVU201
	ldi r19,0
	ldi r18,0
	ldi r25,0
.LVL32:
.L43:
.LBB16:
	.loc 1 129 13 is_stmt 1 view .LVU202
	.loc 1 129 31 is_stmt 0 view .LVU203
	ld r24,Z+
	.loc 1 129 16 view .LVU204
	cpse r24,__zero_reg__
	rjmp .L20
.LBB9:
	.loc 1 131 17 is_stmt 1 view .LVU205
.LVL33:
	.loc 1 134 17 view .LVU206
	.loc 1 134 20 is_stmt 0 view .LVU207
	cpse r18,__zero_reg__
	rjmp .L21
	.loc 1 134 29 is_stmt 1 discriminator 1 view .LVU208
	.loc 1 134 46 is_stmt 0 discriminator 1 view .LVU209
	in r24,0x9
.LVL34:
.L70:
	.loc 1 154 34 discriminator 1 view .LVU210
	andi r24,lo8(1)
.LVL35:
	.loc 1 155 17 is_stmt 1 discriminator 1 view .LVU211
	rjmp .L41
.LVL36:
.L18:
	.loc 1 155 17 is_stmt 0 discriminator 1 view .LVU212
.LBE9:
.LBE16:
	.loc 1 124 14 is_stmt 1 view .LVU213
	.loc 1 124 22 is_stmt 0 view .LVU214
	subi r17,lo8(-(1))
.LVL37:
	.loc 1 124 22 view .LVU215
	rjmp .L19
.LVL38:
.L21:
.LBB17:
.LBB10:
	.loc 1 135 17 is_stmt 1 view .LVU216
	.loc 1 135 20 is_stmt 0 view .LVU217
	cpi r18,lo8(1)
	brne .L22
	.loc 1 135 29 is_stmt 1 discriminator 1 view .LVU218
	.loc 1 135 36 is_stmt 0 discriminator 1 view .LVU219
	in r24,0x9
.LVL39:
.L71:
	.loc 1 155 34 discriminator 1 view .LVU220
	lsr r24
	andi r24,1
.LVL40:
	.loc 1 156 17 is_stmt 1 discriminator 1 view .LVU221
	rjmp .L41
.LVL41:
.L22:
	.loc 1 136 17 view .LVU222
	.loc 1 136 20 is_stmt 0 view .LVU223
	cpi r18,lo8(2)
	brne .L23
	.loc 1 136 29 is_stmt 1 discriminator 1 view .LVU224
	.loc 1 136 36 is_stmt 0 discriminator 1 view .LVU225
	in r24,0x9
.LVL42:
.L69:
	.loc 1 156 34 discriminator 1 view .LVU226
	bst r24,2
	clr r24
	bld r24,0
.LVL43:
	.loc 1 157 17 is_stmt 1 discriminator 1 view .LVU227
	rjmp .L41
.L23:
	.loc 1 137 17 view .LVU228
	.loc 1 137 20 is_stmt 0 view .LVU229
	cpi r18,lo8(3)
	brne .L24
	.loc 1 137 29 is_stmt 1 discriminator 1 view .LVU230
	.loc 1 137 36 is_stmt 0 discriminator 1 view .LVU231
	in r24,0x9
.LVL44:
.L68:
	.loc 1 157 34 discriminator 1 view .LVU232
	bst r24,3
	clr r24
	bld r24,0
.LVL45:
	.loc 1 159 17 is_stmt 1 discriminator 1 view .LVU233
	rjmp .L41
.L24:
	.loc 1 139 17 view .LVU234
	.loc 1 139 20 is_stmt 0 view .LVU235
	cpi r18,lo8(4)
	brne .L25
	.loc 1 139 29 is_stmt 1 discriminator 1 view .LVU236
	.loc 1 139 36 is_stmt 0 discriminator 1 view .LVU237
	in r24,0x9
.LVL46:
.L65:
	.loc 1 159 34 discriminator 1 view .LVU238
	swap r24
	andi r24,1
.LVL47:
	.loc 1 159 34 discriminator 1 view .LVU239
	rjmp .L41
.L25:
	.loc 1 140 17 is_stmt 1 view .LVU240
	.loc 1 140 20 is_stmt 0 view .LVU241
	cpi r18,lo8(5)
	breq .+2
	rjmp .L26
	.loc 1 140 29 is_stmt 1 discriminator 1 view .LVU242
	.loc 1 140 36 is_stmt 0 discriminator 1 view .LVU243
	in r24,0x9
.LVL48:
.L67:
	.loc 1 150 34 discriminator 1 view .LVU244
	bst r24,5
	clr r24
	bld r24,0
.LVL49:
	.loc 1 151 17 is_stmt 1 discriminator 1 view .LVU245
.L41:
	.loc 1 163 17 view .LVU246
	movw r26,r18
	subi r26,lo8(-(buttons))
	sbci r27,hi8(-(buttons))
	.loc 1 163 20 is_stmt 0 view .LVU247
	ld r20,X
	cp r20,r24
	breq .L42
	.loc 1 164 21 is_stmt 1 view .LVU248
	.loc 1 164 32 is_stmt 0 view .LVU249
	st X,r24
	.loc 1 165 21 is_stmt 1 view .LVU250
	.loc 1 165 39 is_stmt 0 view .LVU251
	movw r26,r30
	sbiw r26,1
	st X,r16
	.loc 1 166 21 is_stmt 1 view .LVU252
.LVL50:
	.loc 1 166 36 is_stmt 0 view .LVU253
	ldi r25,lo8(1)
.LVL51:
.L42:
	.loc 1 166 36 view .LVU254
.LBE10:
	.loc 1 126 37 is_stmt 1 discriminator 2 view .LVU255
	.loc 1 126 29 discriminator 2 view .LVU256
	subi r18,-1
	sbci r19,-1
.LVL52:
	.loc 1 126 9 is_stmt 0 discriminator 2 view .LVU257
	cpi r18,21
	cpc r19,__zero_reg__
	brne .L43
.LVL53:
	.loc 1 126 9 discriminator 2 view .LVU258
.LBE17:
	.loc 1 174 9 is_stmt 1 view .LVU259
	.loc 1 174 12 is_stmt 0 view .LVU260
	tst r25
	breq .L44
	.loc 1 174 12 view .LVU261
	ldi r30,lo8(buttons)
	ldi r31,hi8(buttons)
	ldi r25,0
	ldi r24,0
.LBB18:
	.loc 1 177 27 view .LVU262
	ldi r18,0
	.loc 1 177 22 view .LVU263
	ldi r19,0
	.loc 1 177 17 view .LVU264
	ldi r20,0
.L48:
.LVL54:
.LBB14:
	.loc 1 179 17 is_stmt 1 view .LVU265
	.loc 1 179 28 is_stmt 0 view .LVU266
	mov r21,r24
	ld r22,Z+
	.loc 1 179 20 view .LVU267
	tst r22
	breq .L45
	.loc 1 179 33 is_stmt 1 discriminator 1 view .LVU268
	.loc 1 179 43 is_stmt 0 discriminator 1 view .LVU269
	movw r22,r28
	mov r0,r24
	rjmp 2f
	1:
	lsl r22
	2:
	dec r0
	brpl 1b
	.loc 1 179 38 discriminator 1 view .LVU270
	or r20,r22
.LVL55:
.L45:
	.loc 1 180 17 is_stmt 1 view .LVU271
	.loc 1 180 20 is_stmt 0 view .LVU272
	ldd r22,Z+7
	tst r22
	breq .L46
	.loc 1 180 37 is_stmt 1 discriminator 1 view .LVU273
	.loc 1 180 47 is_stmt 0 discriminator 1 view .LVU274
	movw r22,r28
	mov r0,r21
	rjmp 2f
	1:
	lsl r22
	2:
	dec r0
	brpl 1b
	.loc 1 180 42 discriminator 1 view .LVU275
	or r19,r22
.LVL56:
.L46:
	.loc 1 181 17 is_stmt 1 view .LVU276
	.loc 1 181 20 is_stmt 0 view .LVU277
	ldd r22,Z+15
	tst r22
	breq .L47
	.loc 1 181 38 is_stmt 1 discriminator 1 view .LVU278
	.loc 1 181 48 is_stmt 0 discriminator 1 view .LVU279
	movw r22,r28
	rjmp 2f
	1:
	lsl r22
	2:
	dec r21
	brpl 1b
	.loc 1 181 43 discriminator 1 view .LVU280
	or r18,r22
.LVL57:
.L47:
	.loc 1 178 40 is_stmt 1 discriminator 2 view .LVU281
	.loc 1 178 33 discriminator 2 view .LVU282
	adiw r24,1
.LVL58:
	.loc 1 178 13 is_stmt 0 discriminator 2 view .LVU283
	cpi r24,8
	cpc r25,__zero_reg__
	brne .L48
	.loc 1 178 13 discriminator 2 view .LVU284
.LBE14:
	.loc 1 183 13 is_stmt 1 view .LVU285
	.loc 1 183 24 is_stmt 0 view .LVU286
	sts data_po,r20
	.loc 1 184 13 is_stmt 1 view .LVU287
	.loc 1 184 24 is_stmt 0 view .LVU288
	sts data_po+1,r19
	.loc 1 185 13 is_stmt 1 view .LVU289
	.loc 1 185 24 is_stmt 0 view .LVU290
	sts data_po+2,r18
	.loc 1 187 12 is_stmt 1 view .LVU291
	.loc 1 187 12 is_stmt 0 view .LVU292
	sbi 0x8,2
	.loc 1 187 21 is_stmt 1 view .LVU293
	.loc 1 188 13 view .LVU294
.LVL59:
.L44:
	.loc 1 188 13 is_stmt 0 view .LVU295
.LBE18:
	.loc 1 191 9 is_stmt 1 view .LVU296
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL60:
	.loc 1 113 10 view .LVU297
	.loc 1 116 12 is_stmt 0 view .LVU298
	rjmp .L49
.LVL61:
.L26:
.LBB19:
.LBB11:
	.loc 1 141 17 is_stmt 1 view .LVU299
	.loc 1 141 20 is_stmt 0 view .LVU300
	cpi r18,lo8(6)
	brne .L27
	.loc 1 141 29 is_stmt 1 discriminator 1 view .LVU301
	.loc 1 141 36 is_stmt 0 discriminator 1 view .LVU302
	in r24,0x9
.LVL62:
.L64:
	.loc 1 151 34 discriminator 1 view .LVU303
	bst r24,6
	clr r24
	bld r24,0
.LVL63:
	.loc 1 152 17 is_stmt 1 discriminator 1 view .LVU304
	rjmp .L41
.L27:
	.loc 1 142 17 view .LVU305
	.loc 1 142 20 is_stmt 0 view .LVU306
	cpi r18,lo8(7)
	brne .L28
	.loc 1 142 29 is_stmt 1 discriminator 1 view .LVU307
	.loc 1 142 36 is_stmt 0 discriminator 1 view .LVU308
	in r24,0x9
.LVL64:
.L66:
	.loc 1 152 47 discriminator 1 view .LVU309
	rol r24
	clr r24
	rol r24
.LVL65:
	.loc 1 154 17 is_stmt 1 discriminator 1 view .LVU310
	rjmp .L41
.L28:
	.loc 1 144 17 view .LVU311
	.loc 1 144 20 is_stmt 0 view .LVU312
	cpi r18,lo8(8)
	brne .L29
	.loc 1 144 29 is_stmt 1 discriminator 1 view .LVU313
	.loc 1 144 36 is_stmt 0 discriminator 1 view .LVU314
	in r24,0x6
.LVL66:
	.loc 1 144 36 discriminator 1 view .LVU315
	rjmp .L68
.LVL67:
.L29:
	.loc 1 145 17 is_stmt 1 view .LVU316
	.loc 1 145 20 is_stmt 0 view .LVU317
	cpi r18,lo8(9)
	brne .L30
	.loc 1 145 29 is_stmt 1 discriminator 1 view .LVU318
	.loc 1 145 36 is_stmt 0 discriminator 1 view .LVU319
	in r24,0x6
.LVL68:
	.loc 1 145 36 discriminator 1 view .LVU320
	rjmp .L65
.LVL69:
.L30:
	.loc 1 146 17 is_stmt 1 view .LVU321
	.loc 1 146 20 is_stmt 0 view .LVU322
	cpi r18,lo8(10)
	brne .L31
	.loc 1 146 30 is_stmt 1 discriminator 1 view .LVU323
	.loc 1 146 37 is_stmt 0 discriminator 1 view .LVU324
	in r24,0x6
.LVL70:
	.loc 1 146 37 discriminator 1 view .LVU325
	rjmp .L67
.LVL71:
.L31:
	.loc 1 147 17 is_stmt 1 view .LVU326
	.loc 1 147 20 is_stmt 0 view .LVU327
	cpi r18,lo8(11)
	brne .L32
	.loc 1 147 30 is_stmt 1 discriminator 1 view .LVU328
	.loc 1 147 37 is_stmt 0 discriminator 1 view .LVU329
	in r24,0x6
.LVL72:
	.loc 1 147 37 discriminator 1 view .LVU330
	rjmp .L64
.LVL73:
.L32:
	.loc 1 149 17 is_stmt 1 view .LVU331
	.loc 1 149 20 is_stmt 0 view .LVU332
	cpi r18,lo8(12)
	brne .L33
	.loc 1 149 30 is_stmt 1 discriminator 1 view .LVU333
	.loc 1 149 37 is_stmt 0 discriminator 1 view .LVU334
	in r24,0x6
.LVL74:
	.loc 1 149 37 discriminator 1 view .LVU335
	rjmp .L66
.LVL75:
.L33:
	.loc 1 150 17 is_stmt 1 view .LVU336
	.loc 1 150 20 is_stmt 0 view .LVU337
	cpi r18,lo8(13)
	brne .L34
	.loc 1 150 30 is_stmt 1 discriminator 1 view .LVU338
	.loc 1 150 37 is_stmt 0 discriminator 1 view .LVU339
	in r24,0
.LVL76:
	.loc 1 150 37 discriminator 1 view .LVU340
	rjmp .L67
.LVL77:
.L34:
	.loc 1 151 17 is_stmt 1 view .LVU341
	.loc 1 151 20 is_stmt 0 view .LVU342
	cpi r18,lo8(14)
	brne .L35
	.loc 1 151 30 is_stmt 1 discriminator 1 view .LVU343
	.loc 1 151 37 is_stmt 0 discriminator 1 view .LVU344
	in r24,0
.LVL78:
	.loc 1 151 37 discriminator 1 view .LVU345
	rjmp .L64
.LVL79:
.L35:
	.loc 1 152 17 is_stmt 1 view .LVU346
	.loc 1 152 20 is_stmt 0 view .LVU347
	cpi r18,lo8(15)
	brne .L36
	.loc 1 152 30 is_stmt 1 discriminator 1 view .LVU348
	.loc 1 152 37 is_stmt 0 discriminator 1 view .LVU349
	in r24,0
.LVL80:
	.loc 1 152 37 discriminator 1 view .LVU350
	rjmp .L66
.LVL81:
.L36:
	.loc 1 154 17 is_stmt 1 view .LVU351
	.loc 1 154 20 is_stmt 0 view .LVU352
	cpi r18,lo8(16)
	brne .L37
	.loc 1 154 30 is_stmt 1 discriminator 1 view .LVU353
	.loc 1 154 47 is_stmt 0 discriminator 1 view .LVU354
	in r24,0x3
.LVL82:
	.loc 1 154 47 discriminator 1 view .LVU355
	rjmp .L70
.LVL83:
.L37:
	.loc 1 155 17 is_stmt 1 view .LVU356
	.loc 1 155 20 is_stmt 0 view .LVU357
	cpi r18,lo8(17)
	brne .L38
	.loc 1 155 30 is_stmt 1 discriminator 1 view .LVU358
	.loc 1 155 37 is_stmt 0 discriminator 1 view .LVU359
	in r24,0x3
.LVL84:
	.loc 1 155 37 discriminator 1 view .LVU360
	rjmp .L71
.LVL85:
.L38:
	.loc 1 156 17 is_stmt 1 view .LVU361
	.loc 1 156 20 is_stmt 0 view .LVU362
	cpi r18,lo8(18)
	brne .L39
	.loc 1 156 30 is_stmt 1 discriminator 1 view .LVU363
	.loc 1 156 37 is_stmt 0 discriminator 1 view .LVU364
	in r24,0x3
.LVL86:
	.loc 1 156 37 discriminator 1 view .LVU365
	rjmp .L69
.LVL87:
.L39:
	.loc 1 157 17 is_stmt 1 view .LVU366
	.loc 1 157 20 is_stmt 0 view .LVU367
	cpi r18,lo8(19)
	brne .L40
	.loc 1 157 30 is_stmt 1 discriminator 1 view .LVU368
	.loc 1 157 37 is_stmt 0 discriminator 1 view .LVU369
	in r24,0x3
.LVL88:
	.loc 1 157 37 discriminator 1 view .LVU370
	rjmp .L68
.LVL89:
.L40:
	.loc 1 159 17 is_stmt 1 view .LVU371
	.loc 1 159 20 is_stmt 0 view .LVU372
	cpi r18,lo8(20)
	breq .+2
	rjmp .L41
	.loc 1 159 30 is_stmt 1 discriminator 1 view .LVU373
	.loc 1 159 37 is_stmt 0 discriminator 1 view .LVU374
	in r24,0x3
.LVL90:
	.loc 1 159 37 discriminator 1 view .LVU375
	rjmp .L65
.LVL91:
.L20:
	.loc 1 159 37 discriminator 1 view .LVU376
.LBE11:
	.loc 1 170 17 is_stmt 1 view .LVU377
	.loc 1 170 34 is_stmt 0 view .LVU378
	movw r26,r30
	sbiw r26,1
	subi r24,lo8(-(-1))
	st X,r24
	rjmp .L42
.LBE19:
	.cfi_endproc
.LFE8:
	.size	main, .-main
.global	data_pi
	.section	.data.data_pi,"aw"
	.type	data_pi, @object
	.size	data_pi, 9
data_pi:
	.string	"\n"
	.string	""
	.string	"\024"
	.string	""
	.string	"2"
	.string	""
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
	.long	0x4e8
	.word	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF33
	.byte	0xc
	.long	.LASF34
	.long	.LASF35
	.long	.Ldebug_ranges0+0x88
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	debounce_timer
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x11
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
	.byte	0x14
	.byte	0x9
	.long	0xd7
	.uleb128 0x5
	.byte	0x3
	.long	data_pi
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.long	0x2c
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x19
	.byte	0x10
	.long	0x2c
	.uleb128 0x9
	.long	.LASF36
	.byte	0x1
	.byte	0x47
	.byte	0x5
	.long	0x3f
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x34c
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.long	0x2c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.long	0x2c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xb
	.long	.Ldebug_ranges0+0
	.long	0x189
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.byte	0x16
	.long	0x2c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xd
	.long	.Ldebug_ranges0+0x30
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x83
	.byte	0x19
	.long	0x2c
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.Ldebug_ranges0+0x58
	.long	0x1e7
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0xb0
	.byte	0x15
	.long	0x2c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xb0
	.byte	0x1b
	.long	0x2c
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0xb0
	.byte	0x21
	.long	0x2c
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xd
	.long	.Ldebug_ranges0+0x70
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xb2
	.byte	0x1a
	.long	0x2c
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LVL15
	.long	0x3da
	.long	0x1ff
	.uleb128 0xf
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
	.uleb128 0x10
	.long	.LVL16
	.long	0x497
	.uleb128 0xe
	.long	.LVL17
	.long	0x4a3
	.long	0x232
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xe
	.long	.LVL18
	.long	0x4af
	.long	0x245
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.long	.LVL19
	.long	0x4bb
	.long	0x262
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LVL20
	.long	0x3da
	.long	0x27c
	.uleb128 0xf
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3
	.byte	0xa
	.word	0x12c
	.byte	0
	.uleb128 0xe
	.long	.LVL21
	.long	0x4bb
	.long	0x29a
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LVL22
	.long	0x3da
	.long	0x2b4
	.uleb128 0xf
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3
	.byte	0xa
	.word	0x12c
	.byte	0
	.uleb128 0xe
	.long	.LVL23
	.long	0x4bb
	.long	0x2d2
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LVL24
	.long	0x3da
	.long	0x2ec
	.uleb128 0xf
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3
	.byte	0xa
	.word	0x12c
	.byte	0
	.uleb128 0xe
	.long	.LVL25
	.long	0x4bb
	.long	0x30a
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0xe
	.long	.LVL26
	.long	0x3da
	.long	0x324
	.uleb128 0xf
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3
	.byte	0xa
	.word	0x12c
	.byte	0
	.uleb128 0x10
	.long	.LVL29
	.long	0x34c
	.uleb128 0x10
	.long	.LVL30
	.long	0x3b0
	.uleb128 0x11
	.long	.LVL60
	.long	0x3da
	.uleb128 0xf
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
	.uleb128 0x12
	.long	.LASF21
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b0
	.uleb128 0x13
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0x39d
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x41
	.byte	0x12
	.long	0x2c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x10
	.long	.LVL11
	.long	0x4c7
	.uleb128 0x10
	.long	.LVL12
	.long	0x4c7
	.uleb128 0x10
	.long	.LVL13
	.long	0x4c7
	.byte	0
	.uleb128 0x10
	.long	.LVL10
	.long	0x4d3
	.uleb128 0x14
	.long	.LVL14
	.long	0x4df
	.byte	0
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da
	.uleb128 0xc
	.string	"ch"
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.long	0x2c
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x418
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0x2a
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
	.byte	0x2b
	.byte	0xe
	.long	0x60
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x452
	.uleb128 0x17
	.long	0x47d
	.long	.LBI4
	.byte	.LVU18
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.uleb128 0x18
	.long	0x48a
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x47d
	.uleb128 0x19
	.long	.LASF39
	.byte	0x1
	.byte	0x1b
	.byte	0x1b
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x1a
	.long	.LASF40
	.byte	0x2
	.byte	0xb
	.byte	0x2c
	.byte	0x3
	.long	0x497
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x2
	.byte	0xb
	.byte	0x45
	.long	0x2c
	.byte	0
	.uleb128 0x1c
	.long	.LASF26
	.long	.LASF26
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF27
	.long	.LASF27
	.byte	0x2
	.byte	0x9
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF28
	.long	.LASF28
	.byte	0x2
	.byte	0x7
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF29
	.long	.LASF29
	.byte	0x4
	.byte	0xf
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF30
	.long	.LASF30
	.byte	0x4
	.byte	0xe
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF31
	.long	.LASF31
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 .LVU186
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST5:
	.long	.LVL26
	.long	.LVL27
	.word	0x2
	.byte	0x30
	.byte	0x9f
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
	.uleb128 .LVU187
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU253
	.uleb128 .LVU254
	.uleb128 .LVU295
	.uleb128 .LVU299
.LLST6:
	.long	.LVL26
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
	.uleb128 .LVU200
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 0
.LLST7:
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
.LVUS8:
	.uleb128 .LVU206
	.uleb128 .LVU210
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU254
	.uleb128 .LVU299
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU345
	.uleb128 .LVU345
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU371
	.uleb128 .LVU371
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU376
.LLST8:
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
.LVUS9:
	.uleb128 .LVU265
	.uleb128 .LVU295
.LLST9:
	.long	.LVL54
	.long	.LVL59
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LVUS10:
	.uleb128 .LVU265
	.uleb128 .LVU295
.LLST10:
	.long	.LVL54
	.long	.LVL59
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LVUS11:
	.uleb128 .LVU265
	.uleb128 .LVU295
.LLST11:
	.long	.LVL54
	.long	.LVL59
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS12:
	.uleb128 .LVU265
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU295
.LLST12:
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
	.long	.LBB15
	.long	.LBE15
	.long	.LBB16
	.long	.LBE16
	.long	.LBB17
	.long	.LBE17
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB8
	.long	.LBE8
	.long	.LBB9
	.long	.LBE9
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LBB12
	.long	.LBE12
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LBB13
	.long	.LBE13
	.long	.LBB14
	.long	.LBE14
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
.LASF26:
	.string	"apa102_init"
.LASF17:
	.string	"button_changed"
.LASF12:
	.string	"buttons"
.LASF27:
	.string	"i2c_setCallbacks"
.LASF21:
	.string	"set_leds"
.LASF35:
	.string	"/Users/owen1/repos/pp22/interface/mcu-i2c/atmega164"
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
.LASF29:
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
.LASF28:
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
