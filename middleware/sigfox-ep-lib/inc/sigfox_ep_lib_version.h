/*!*****************************************************************
 * \file    sigfox_ep_lib_version.h
 * \brief   Sigfox End-Point library version.
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

#ifndef __SIGFOX_EP_LIB_VERSION_H__
#define __SIGFOX_EP_LIB_VERSION_H__

#ifdef USE_SIGFOX_EP_FLAGS_H
#include "sigfox_ep_flags.h"
#endif

/*** Main version ***/

#define SIGFOX_EP_LIB_VERSION			"v3.4"

/*** Compilation flags ***/

#define SIGFOX_VERSION_SEPARATOR		" "

#ifdef USE_SIGFOX_EP_FLAGS_H
#define FLAGS_OPT						"SIGFOX_EP_FLAGS_H"
#else
#define FLAGS_OPT						"COMMAND_LINE_FLAGS"
#endif

#ifdef RC1
#define RC1_OPT 						SIGFOX_VERSION_SEPARATOR "RC1"
#else
#define RC1_OPT
#endif

#ifdef RC2
#define RC2_OPT 						SIGFOX_VERSION_SEPARATOR "RC2"
#else
#define RC2_OPT
#endif

#ifdef RC3C
#define RC3C_OPT 						SIGFOX_VERSION_SEPARATOR "RC3C"
#else
#define RC3C_OPT
#endif

#ifdef RC3D
#define RC3D_OPT 						SIGFOX_VERSION_SEPARATOR "RC3D"
#else
#define RC3D_OPT
#endif

#ifdef RC4
#define RC4_OPT 						SIGFOX_VERSION_SEPARATOR "RC4"
#else
#define RC4_OPT
#endif

#ifdef RC5
#define RC5_OPT 						SIGFOX_VERSION_SEPARATOR "RC5"
#else
#define RC5_OPT
#endif

#ifdef RC6
#define RC6_OPT 						SIGFOX_VERSION_SEPARATOR "RC6"
#else
#define RC6_OPT
#endif

#ifdef RC7
#define RC7_OPT 						SIGFOX_VERSION_SEPARATOR "RC7"
#else
#define RC7_OPT
#endif

#ifdef APPLICATION_MESSAGES
#define APPLICATION_MESSAGES_OPT 		SIGFOX_VERSION_SEPARATOR "APPLICATION_MESSAGES"
#else
#define APPLICATION_MESSAGES_OPT
#endif

#ifdef CONTROL_KEEP_ALIVE_MESSAGE
#define CONTROL_KEEP_ALIVE_MESSAGE_OPT	SIGFOX_VERSION_SEPARATOR "CONTROL_KEEP_ALIVE_MESSAGE"
#else
#define CONTROL_KEEP_ALIVE_MESSAGE_OPT
#endif

#ifdef BIDIRECTIONAL
#define BIDIRECTIONAL_OPT 				SIGFOX_VERSION_SEPARATOR "BIDIRECTIONAL"
#else
#define BIDIRECTIONAL_OPT
#endif

#ifdef ASYNCHRONOUS
#define ASYNCHRONOUS_OPT 				SIGFOX_VERSION_SEPARATOR "ASYNCHRONOUS"
#else
#define ASYNCHRONOUS_OPT
#endif

#ifdef LOW_LEVEL_OPEN_CLOSE
#define LOW_LEVEL_OPEN_CLOSE_OPT		SIGFOX_VERSION_SEPARATOR "LOW_LEVEL_OPEN_CLOSE"
#else
#define LOW_LEVEL_OPEN_CLOSE_OPT
#endif

#ifdef REGULATORY
#define REGULATORY_OPT 					SIGFOX_VERSION_SEPARATOR "REGULATORY"
#else
#define REGULATORY_OPT
#endif

#ifdef LATENCY_COMPENSATION
#define LATENCY_COMPENSATION_OPT 		SIGFOX_VERSION_SEPARATOR "LATENCY_COMPENSATION"
#else
#define LATENCY_COMPENSATION_OPT
#endif

#ifdef SINGLE_FRAME
#define SINGLE_FRAME_OPT				SIGFOX_VERSION_SEPARATOR "SINGLE_FRAME"
#else
#define SINGLE_FRAME_OPT
#endif

#ifdef UL_BIT_RATE_BPS
#define UL_BIT_RATE_BPS_OPT 			SIGFOX_VERSION_SEPARATOR "UL_BIT_RATE_BPS"
#else
#define UL_BIT_RATE_BPS_OPT
#endif

#ifdef T_IFU_MS
#define T_IFU_MS_OPT					SIGFOX_VERSION_SEPARATOR "T_IFU_MS"
#else
#define T_IFU_MS_OPT
#endif

#ifdef T_CONF_MS
#define T_CONF_MS_OPT					SIGFOX_VERSION_SEPARATOR "T_CONF_MS"
#else
#define T_CONF_MS_OPT
#endif

#ifdef UL_PAYLOAD_SIZE
#define UL_PAYLOAD_SIZE_OPT				SIGFOX_VERSION_SEPARATOR "UL_PAYLOAD_SIZE"
#else
#define UL_PAYLOAD_SIZE_OPT
#endif

#ifdef CRC_HW
#define CRC_HW_OPT						SIGFOX_VERSION_SEPARATOR "CRC_HW"
#else
#define CRC_HW_OPT
#endif

#ifdef MESSAGE_COUNTER_ROLLOVER
#define MESSAGE_COUNTER_ROLLOVER_OPT	SIGFOX_VERSION_SEPARATOR "MESSAGE_COUNTER_ROLLOVER"
#else
#define MESSAGE_COUNTER_ROLLOVER_OPT
#endif

#ifdef PARAMETERS_CHECK
#define PARAMETERS_CHECK_OPT			SIGFOX_VERSION_SEPARATOR "PARAMETERS_CHECK"
#else
#define PARAMETERS_CHECK_OPT
#endif

#ifdef CERTIFICATION
#define CERTIFICATION_OPT				SIGFOX_VERSION_SEPARATOR "CERTIFICATION"
#else
#define CERTIFICATION_OPT
#endif

#ifdef PUBLIC_KEY_CAPABLE
#define PUBLIC_KEY_CAPABLE_OPT			SIGFOX_VERSION_SEPARATOR "PUBLIC_KEY_CAPABLE"
#else
#define PUBLIC_KEY_CAPABLE_OPT
#endif

#ifdef VERBOSE
#define VERBOSE_OPT						SIGFOX_VERSION_SEPARATOR "VERBOSE"
#else
#define VERBOSE_OPT
#endif

#ifdef ERROR_CODES
#define ERROR_CODES_OPT					SIGFOX_VERSION_SEPARATOR "ERROR_CODES"
#else
#define ERROR_CODES_OPT
#endif

#ifdef ERROR_STACK
#define ERROR_STACK_OPT					SIGFOX_VERSION_SEPARATOR "ERROR_STACK"
#else
#define ERROR_STACK_OPT
#endif

#define SIGFOX_EP_FLAGS \
	FLAGS_OPT \
	RC1_OPT \
	RC2_OPT \
	RC3C_OPT \
	RC3D_OPT \
	RC4_OPT \
	RC5_OPT \
	RC6_OPT \
	RC7_OPT \
	APPLICATION_MESSAGES_OPT \
	CONTROL_KEEP_ALIVE_MESSAGE_OPT \
	BIDIRECTIONAL_OPT \
	ASYNCHRONOUS_OPT \
	LOW_LEVEL_OPEN_CLOSE_OPT \
	REGULATORY_OPT \
	LATENCY_COMPENSATION_OPT \
	SINGLE_FRAME_OPT \
	UL_BIT_RATE_BPS_OPT \
	T_IFU_MS_OPT \
	T_CONF_MS_OPT \
	UL_PAYLOAD_SIZE_OPT \
	CRC_HW_OPT \
	MESSAGE_COUNTER_ROLLOVER_OPT \
	PARAMETERS_CHECK_OPT \
	CERTIFICATION_OPT \
	PUBLIC_KEY_CAPABLE_OPT \
	VERBOSE_OPT \
	ERROR_CODES_OPT \
	ERROR_STACK_OPT \

#endif /* __SIGFOX_EP_LIB_VERSION_H__ */
