/*
 * fmx_vicky.h
 *
 *  Created on: Nov 17, 2020
 *      Author: mtbush
 */

#ifndef FMX_VICKY_H_
#define FMX_VICKY_H_

#include "fxtypes.h"

#define BM_ENABLE             (0x01)

#define BM_LUT0               (0x00)
#define BM_LUT1               (0x02)
#define BM_LUT2               (0x04)
#define BM_LUT3               (0x06)
#define BM_LUT4               (0x08)
#define BM_LUT5               (0x0A)
#define BM_LUT6               (0x0C)
#define BM_LUT7               (0x0E)

#define BM_COLLISION_ON       (0x40)

//FIRST BITMAP PLANE
#define BM0_CONTROL_REG     ((LPSTR)0xAF0100)
#define BM0_START_ADDY_L    ((LPSTR)0xAF0101)
#define BM0_START_ADDY_M    ((LPSTR)0xAF0102)
#define BM0_START_ADDY_H    ((LPSTR)0xAF0103)
//#define BM0_X_OFFSET        (0xAF0104   ; NOT IMPLEMENTED
//#define BM0_Y_OFFSET        (0xAF0105   ; NOT IMPLEMENTED
#define BM0_RESERVED_6      ((LPSTR)0xAF0106)
#define BM0_RESERVED_7      ((LPSTR)0xAF0107)
//SECOND BITMAP PLANE
#define BM1_CONTROL_REG     ((LPSTR)0xAF0108)
#define BM1_START_ADDY_L    ((LPSTR)0xAF0109)
#define BM1_START_ADDY_M    ((LPSTR)0xAF010A)
#define BM1_START_ADDY_H    ((LPSTR)0xAF010B)
//BM1_X_OFFSET        (0xAF010C   ; NOT IMPLEMENTED
//BM1_Y_OFFSET        (0xAF010D   ; NOT IMPLEMENTED
#define BM1_RESERVED_6      ((LPSTR)0xAF010E)
#define BM1_RESERVED_7      ((LPSTR)0xAF010F)

#define BM_START_ADDY_L           ((VOLATILE unsigned char FAR*)0xAF0141)
#define BM_START_ADDY_M           ((VOLATILE unsigned char FAR*)0xAF0142)
#define BM_START_ADDY_H           ((VOLATILE unsigned char FAR*)0xAF0143)
#define BM_X_SIZE_L               ((VOLATILE unsigned char FAR*)0xAF0144)
#define BM_X_SIZE_H               ((VOLATILE unsigned char FAR*)0xAF0145)
#define BM_Y_SIZE_L               ((VOLATILE unsigned char FAR*)0xAF0146)
#define BM_Y_SIZE_H               ((VOLATILE unsigned char FAR*)0xAF0147)

//#define ASM_BM_CONTROL_REG           $AF0140
//#define ASM_BM_START_ADDY_L          $AF0141
//#define ASM_BM_START_ADDY_M          $AF0142
//#define ASM_BM_START_ADDY_H          $AF0143
//#define ASM_BM_X_SIZE_L              $AF0144
//#define ASM_BM_X_SIZE_H              $AF0145
//#define ASM_BM_Y_SIZE_L              $AF0146
//#define ASM_BM_Y_SIZE_H              $AF0147

#define BM_RESERVED_0             ((VOLATILE unsigned char FAR*)0xAF0148)
#define BM_RESERVED_1             ((VOLATILE unsigned char FAR*)0xAF0149)
#define BM_RESERVED_2             ((VOLATILE unsigned char FAR*)0xAF014A)
#define BM_RESERVED_3             ((VOLATILE unsigned char FAR*)0xAF014B)
#define BM_RESERVED_4             ((VOLATILE unsigned char FAR*)0xAF014C)
#define BM_RESERVED_5             ((VOLATILE unsigned char FAR*)0xAF014D)
#define BM_RESERVED_6             ((VOLATILE unsigned char FAR*)0xAF014E)
#define BM_RESERVED_7             ((VOLATILE unsigned char FAR*)0xAF014F)


#endif /* FMX_VICKY_H_ */
