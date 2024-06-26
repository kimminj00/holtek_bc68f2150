; Generated by holtek-gcc v3.19, Thu May 23 14:41:49 2024
; 
; Configuration:
;       with long instruction
;       Single ROM, Multi-RAM
;       bits_per_rom_unit:16
;       with mp1
;       with tbhp, address(0x9)
;          Use tabrd-const
;       
; SFR address of long-instruction arch:
;    mp0 = -1,1,0
;    mp1 = 4,3,2
;    mp2 = 14,13,12
;    tbp = 9,7,8
;    acc = 5
;    pcl = 6
;    status = 10
;    bp = 11
;    intc = 16
;       
;       
; use 'tabrdc' instead of 'tabrd'
;       

#pragma translator "holtek-gcc 4.6.4" "3.19" "build 20130711"
; Rebuild 718

ir equ [2]
mp equ [3]
sbp equ [4]
acc equ [5]
bp equ [11]
tblp equ [7]
tbhp equ [9]
status equ [10]
c equ [10].0
ac equ [10].1
z equ [10].2
ov equ [10].3
cz equ [10].6
sc equ [10].7
intc equ [16]

extern ra:byte
extern rb:byte
extern rc:byte
extern rd:byte
extern re:byte
extern rf:byte
extern rg:byte
extern rh:byte
extern _Crom2Prom:near
extern _Crom2PromNext:near

RAMBANK 0 @BITDATASEC, @BITDATASEC1
@HCCINIT	.section 'data'
@HCCINIT0	.section 'data'
@BITDATASEC	 .section 'data'
@BITDATASEC1	 .section 'data'

#pragma debug scope 1 1
	extern __DELAY3:near
	extern __DELAYX3:near
	extern __DELAYX6:near
	extern __DELAYY5:near
	extern __DELAYY3:near
	extern _builtin_holtek_delay_2:byte
public _MCU_API_timer_start
#pragma debug scope 2 1
#line 46 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_timer_start .section 'code'
_MCU_API_timer_start proc
public _MCU_API_timer_start_2
    local _MCU_API_timer_start_2 db 2 dup(?)	; 2,0
#pragma debug struct_begin 42 "MCU_API_timer_t"
#pragma debug field 0 8 "instance"
#pragma debug field 0 8 "reason"
#pragma debug field 0 14 "duration_ms"
#pragma debug struct_end
#pragma debug pointer 43 42 2
#pragma debug variable 43 2 _MCU_API_timer_start_2+0 "timer"
#line 52 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
	mov a,2
	add a,_MCU_API_timer_start_2[0]
	mov mp,a
	mov a,0
	adc a,_MCU_API_timer_start_2[1]
	mov sbp,a
	call _Crom2Prom
	mov rd,a
	call _Crom2PromNext
	mov re,a
	call _Crom2PromNext
	mov rf,a
	call _Crom2PromNext
	mov rg,a
	clr rb
	clr rc
	jmp _L2
_L3:
#line 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF 4000>263690
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	ERRMESSAGE 'the value 4000of the argument exceeds the maxinum 263690'
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF 4000<0
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	ERRMESSAGE 'the value 4000 of the argument exceeds the mininum 0'
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF 4000==0
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	JMP $
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF 4000==1
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	NOP
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF 4000==2
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	NOP
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	NOP
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF 4000==3
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	NOP
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	NOP
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	NOP
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF (4000<8) AND (4000>3)
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	CALL __DELAY3 + 7 -4000
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF (4000< 0404h) AND (4000>7)
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV A,4000/4-1
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	CALL __DELAYX3 + 3 -(4000 MOD 4)
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF (4000< 0x40B) AND (4000> 0403h)
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV A,0 
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	CALL __DELAYX6 + 0x40a -4000
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF (4000 >= 0x40b) AND ((((4000-9)%0402h)/4+1)>256)
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV A,(4000-9)/0402h
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV _builtin_holtek_delay_2,A
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV A,0
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	CALL __DELAYY5 +5- (((4000-9)%0402h)%6)
	ENDIF
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	IF (4000 >= 0x40b) AND ((((4000-9)%0402h)/4+1)<=256)
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV A,(4000-9)/0402h
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV _builtin_holtek_delay_2,A
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	MOV A,((4000-9)%0402h)/4+1
;# 53 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c" 1
	CALL __DELAYY3 +3-(((4000-9)%0402h)%4)
	ENDIF
#line 52 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
	inc rb
	sz z
	inc rc
_L2:
	mov a,rb
	sub a,rd
	mov a,rc
	sbc a,re
	clr acc
	sbc a,rf
	clr acc
	sbc a,rg
	snz c
	jmp _L3
	ret
_MCU_API_timer_start endp
#line 52 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_timer_stop
#pragma debug scope 3 1
#line 61 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_timer_stop .section 'code'
_MCU_API_timer_stop proc
    local _MCU_API_timer_stop_2 db 1 dup(?)	; 0,1
#pragma debug variable 8 3 _MCU_API_timer_stop_2+0 "timer_instance"
	ret
_MCU_API_timer_stop endp
#line 61 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_timer_status
#pragma debug scope 4 1
#line 71 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_timer_status .section 'code'
_MCU_API_timer_status proc
public _MCU_API_timer_status_2
    local _MCU_API_timer_status_2 db 3 dup(?)	; 2,1
#pragma debug variable 8 4 _MCU_API_timer_status_2+2 "timer_instance"
#pragma debug pointer 44 8 4
#pragma debug variable 44 4 _MCU_API_timer_status_2+0 "timer_has_elapsed"
	ret
_MCU_API_timer_status endp
#line 71 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_timer_wait_cplt
#pragma debug scope 5 1
#line 81 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_timer_wait_cplt .section 'code'
_MCU_API_timer_wait_cplt proc
    local _MCU_API_timer_wait_cplt_2 db 1 dup(?)	; 0,1
#pragma debug variable 8 5 _MCU_API_timer_wait_cplt_2+0 "timer_instance"
	ret
_MCU_API_timer_wait_cplt endp
#line 81 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_aes_128_cbc_encrypt
#pragma debug scope 6 1
#line 90 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_aes_128_cbc_encrypt .section 'code'
_MCU_API_aes_128_cbc_encrypt proc
public _MCU_API_aes_128_cbc_encrypt_2
    local _MCU_API_aes_128_cbc_encrypt_2 db 2 dup(?)	; 2,0
#pragma debug struct_begin 45 "MCU_API_encryption_data_t"
#pragma debug field 4 8 "data"
#pragma debug field 0 8 "data_size_bytes"
#pragma debug struct_end
#pragma debug pointer 46 45 6
#pragma debug variable 46 6 _MCU_API_aes_128_cbc_encrypt_2+0 "aes_data"
#line 102 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
	mov a,low (offset _mcu_rf_rodata+4)
	mov _aes_encrypt_2[2],a
	mov a,high (offset _mcu_rf_rodata+4)
	mov _aes_encrypt_2[3],a
	mov a,_MCU_API_aes_128_cbc_encrypt_2[0]
	mov mp,a
	mov a,_MCU_API_aes_128_cbc_encrypt_2[1]
	mov sbp,a
	call _Crom2Prom
	mov _aes_encrypt_2[0],a
	call _Crom2PromNext
	mov _aes_encrypt_2[1],a
	call _aes_encrypt
	ret
_MCU_API_aes_128_cbc_encrypt endp
#line 102 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_get_ep_id
#pragma debug scope 7 1
#line 108 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_get_ep_id .section 'code'
_MCU_API_get_ep_id proc
public _MCU_API_get_ep_id_2
    local _MCU_API_get_ep_id_2 db 3 dup(?)	; 3,0
#pragma debug pointer 47 8 7
#pragma debug variable 47 7 _MCU_API_get_ep_id_2+0 "ep_id"
#pragma debug variable 8 7 _MCU_API_get_ep_id_2+2 "ep_id_size_bytes"
#line 113 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
	rra _MCU_API_get_ep_id_2[2]
	and a,07fh
	mov _IAP_read_2[4],a
	mov a,_MCU_API_get_ep_id_2[0]
	mov _IAP_read_2[2],a
	mov a,_MCU_API_get_ep_id_2[1]
	mov _IAP_read_2[3],a
	clr _IAP_read_2[0]
	mov a,30
	mov _IAP_read_2[1],a
	call _IAP_read
	ret
_MCU_API_get_ep_id endp
#line 113 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_get_nvm
#pragma debug scope 8 1
#line 118 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_get_nvm .section 'code'
_MCU_API_get_nvm proc
public _MCU_API_get_nvm_2
    local _MCU_API_get_nvm_2 db 3 dup(?)	; 3,0
#pragma debug pointer 48 8 8
#pragma debug variable 48 8 _MCU_API_get_nvm_2+0 "nvm_data"
#pragma debug variable 8 8 _MCU_API_get_nvm_2+2 "nvm_data_size_bytes"
#line 122 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
	rra _MCU_API_get_nvm_2[2]
	and a,07fh
	mov _IAP_read_2[4],a
	mov a,_MCU_API_get_nvm_2[0]
	mov _IAP_read_2[2],a
	mov a,_MCU_API_get_nvm_2[1]
	mov _IAP_read_2[3],a
	clr _IAP_read_2[0]
	mov a,31
	mov _IAP_read_2[1],a
	call _IAP_read
	ret
_MCU_API_get_nvm endp
#line 122 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1
public _MCU_API_set_nvm
#pragma debug scope 9 1
#line 127 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
_MCU_API_set_nvm .section 'code'
_MCU_API_set_nvm proc
public _MCU_API_set_nvm_2
    local _MCU_API_set_nvm_2 db 3 dup(?)	; 3,0
#pragma debug pointer 49 8 9
#pragma debug variable 49 9 _MCU_API_set_nvm_2+0 "nvm_data"
#pragma debug variable 8 9 _MCU_API_set_nvm_2+2 "nvm_data_size_bytes"
#line 131 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
	mov a,1
	mov _IAP_write_2[5],a
	rra _MCU_API_set_nvm_2[2]
	and a,07fh
	mov _IAP_write_2[4],a
	mov a,_MCU_API_set_nvm_2[0]
	mov _IAP_write_2[2],a
	mov a,_MCU_API_set_nvm_2[1]
	mov _IAP_write_2[3],a
	clr _IAP_write_2[0]
	mov a,31
	mov _IAP_write_2[1],a
	call _IAP_write
	ret
_MCU_API_set_nvm endp
#line 131 "d:\sigfox-ep-example-holtek-bc68f2150-master-tb0\middleware\sigfox\manuf\mcu_api.c"
#pragma debug scope 1 1

; output external variables
extern _mcu_rf_rodata:near
extern _aes_encrypt_2:byte
extern _aes_encrypt:near
extern _IAP_read_2:byte
extern _IAP_read:near
extern _IAP_write_2:byte
extern _IAP_write:near

; 
; Generated by holtek-gcc v3.19, Thu May 23 14:41:49 2024
; Rebuild 718
; end of file
