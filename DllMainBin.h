/*
 * DllMainBin.h
 *
 *  Created on: Mar 13, 2020
 *      Author: mtbush
 */

#ifndef DLLMAINBIN_H_
#define DLLMAINBIN_H_

/*
UCHAR APGMBIN[] =
{
0x3B,0x38,0xE9,0x00,0x00,0x1B,0x0B,0x5B,0xF4,0x00,0x00,0xF4,0x15,0x01,0x20,0xF1,0x00,0xA5,0x01,0x85,0x07,
0x2B,0x3B,0x18,0x69,0x06,0x00,0x1B,0x60,0x3B,0x38,0xE9,0x00,0x00,0x1B,0x0B,0x5B,0xF4,0x00,0x00,0xF4,0x24,
0x01,0x20,0xF1,0x00,0xA9,0x2A,0x00,0xA8,0xA5,0x01,0x85,0x03,0x2B,0x3B,0x18,0x69,0x02,0x00,0x1B,0x98,0x60,
0x3B,0x38,0xE9,0x00,0x00,0x1B,0x0B,0x5B,0xA9,0x00,0x00,0xAA,0xA9,0x00,0x15,0xA8,0x2B,0x3B,0x18,0x69,0x00,
0x00,0x1B,0x98,0x60,0x3B,0x38,0xE9,0x04,0x00,0x1B,0x0B,0x5B,0x20,0x3F,0x00,0x85,0x01,0x86,0x03,0xA5,0x07,
0xA0,0x2C,0x00,0x97,0x01,0xA5,0x09,0xA0,0x30,0x00,0x97,0x01,0xA5,0x0B,0xA0,0x32,0x00,0x97,0x01,0x02,0x00,
0xA0,0x34,0x00,0xB7,0x01,0xA0,0x36,0x00,0x17,0x01,0xD0,0x03,0x82,0x11,0x00,0xA0,0x34,0x00,0xB7,0x01,0x87,
0x0D,0xA0,0x36,0x00,0xB7,0x01,0xA0,0x02,0x00,0x97,0x0D,0xA9,0x00,0x00,0xA8,0xA5,0x05,0x85,0x0F,0x2B,0x3B,
0x18,0x69,0x0E,0x00,0x1B,0x98,0x60,0x3B,0x38,0xE9,0x04,0x00,0x1B,0x0B,0x5B,0x20,0x3F,0x00,0x85,0x01,0x86,
0x03,0xA9,0x01,0x00,0xA0,0x2C,0x00,0x97,0x01,0xA5,0x07,0xA0,0x30,0x00,0x97,0x01,0xA5,0x09,0xA0,0x32,0x00,
0x97,0x01,0x02,0x00,0xA0,0x34,0x00,0xB7,0x01,0xA0,0x36,0x00,0x17,0x01,0xD0,0x03,0x82,0x00,0x00,0xA5,0x05,
0x85,0x09,0x2B,0x3B,0x18,0x69,0x08,0x00,0x1B,0x60,0x3B,0x38,0xE9,0x00,0x00,0x1B,0x0B,0x5B,0xF4,0x00,0x00,
0xF4,0x00,0x00,0xD4,0x05,0xD4,0x03,0xF4,0x32,0x00,0x20,0x58,0x00,0xA5,0x01,0x85,0x05,0x2B,0x3B,0x18,0x69,
0x04,0x00,0x1B,0x60,0x41,0x50,0x47,0x4D,0x20,0x44,0x6C,0x6C,0x4D,0x61,0x69,0x6E,0x0D,0x0A,0x00,0x41,0x50,
0x47,0x4D,0x20,0x44,0x6F,0x53,0x6F,0x6D,0x65,0x74,0x68,0x69,0x6E,0x67,0x0D,0x0A,0x00,0x00,0x1B,0x31,0x32,
0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x30,0x2D,0x3D,0x08,0x09,0x71,0x77,0x65,0x72,0x74,0x79,0x75,0x69,0x6F,
0x70,0x5B,0x5D,0x0D,0x00,0x61,0x73,0x64,0x66,0x67,0x68,0x6A,0x6B,0x6C,0x3B,0x27,0x60,0x00,0x5C,0x7A,0x78,
0x63,0x76,0x62,0x6E,0x6D,0x2C,0x2E,0x2F,0x00,0x2A,0x00,0x20,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x37,0x38,0x39,0x2D,0x34,0x35,0x36,0x2B,0x31,0x32,0x33,0x30,0x2E,0x00,0x00,0x00,0x00,
0x00,0x00,0x1B,0x21,0x40,0x23,0x24,0x25,0x5E,0x26,0x2A,0x28,0x29,0x5F,0x2B,0x08,0x09,0x51,0x57,0x45,0x52,
0x54,0x59,0x55,0x49,0x4F,0x50,0x7B,0x7D,0x0D,0x00,0x41,0x53,0x44,0x46,0x47,0x48,0x4A,0x4B,0x4C,0x3A,0x22,
0x7E,0x00,0x7C,0x5A,0x58,0x43,0x56,0x42,0x4E,0x4D,0x3C,0x3E,0x3F,0x00,0x2A,0x00,0x20,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x37,0x38,0x39,0x2D,0x34,0x35,0x36,0x2B,0x31,0x32,0x33,0x30,
0x2E,0x00,0x00,0x00,0x00,0x00,0x00
};

*/


#endif /* DLLMAINBIN_H_ */