/*!*****************************************************************
 * \file    mcu_rf_rodata.h
 * \brief   read only memory map file.
 *******************************************************************
 * \copyright
 *
 * Copyright (c) 2022, UnaBiz SAS
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  1 Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *  2 Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *  3 Neither the name of UnaBiz SAS nor the names of its contributors may be
 *    used to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE GRANTED BY
 * THIS LICENSE. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
 * IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *******************************************************************/

#ifndef __MCU_RF_RODATA_H__
#define __MCU_RF_RODATA_H__

#include "sigfox_types.h"

typedef struct {
	sfx_u8 size;
	sfx_u16 delta_f;
	sfx_u8 tab[100];
}MCU_RF_table_const_t;


typedef struct {
	sfx_u8 id[4];
	sfx_u8 key[16];
	sfx_u8 pac[8];
	MCU_RF_table_const_t pwrtab_100bps_HP;
	MCU_RF_table_const_t pwrtab_100bps_LP;
	MCU_RF_table_const_t pwrtab_600bps_HP;
	MCU_RF_table_const_t pwrtab_600bps_LP;
    sfx_u8 version[16];
    sfx_u8 empty[56];
} MCU_RF_RODATA_t;

extern __attribute__((at(0x1E00))) const MCU_RF_RODATA_t mcu_rf_rodata;

#endif /* __MCU_RF_RODATA_H__ */
