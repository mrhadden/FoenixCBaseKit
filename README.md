# FoenixCBaseKit

## A base WDC Project to get started with the C256 Foenix RevB or C

### Prerequisites:
* WDC development tools installed on your (Windows) computer. 
	http://westerndesigncenter.com/wdc/tools.cfm
* srec_cat.exe
	http://sourceforge.net/projects/srecord/files/srecord-win32/1.64/srecord-1.63-win32.zip 
* Java 1.8 - Needed to upload the code.  The C256 IDE won't load the image at the time of this writing.

* ONE TIME SETUP: Update the cmake.bat with the locations for your dev environment.


**You will need to attach the USB cable between the development computer to the C256**


### To make the project:
*From the source directory type: cmake*

### To make the project and push the code to the C256
*From the source directory type: cmake -t (t = transfer)*

### To NOT make the project and push the code to the C256
*From the source directory type: cmake -n -t (t = transfer/-n no build)*


**Build Output:**

```
G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src>cmake -t
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 29562 bytes of memory.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 27224 bytes of memory.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 28978 bytes of memory.
Compile fxstring
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 12698 bytes of memory.
Compile fxconsole
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 6746 bytes of memory.
Compile fxkernel
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 9538 bytes of memory.
Compile fxmain
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 1668 bytes of memory.
Compile fxirq
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 5562 bytes of memory.
WDC 65C816 Linker Version 3.49.1 Apr 24 2006 15:40:38
   Copyright (C) 1992-2006 The Western Design Center, Inc.

Section: ORG:    ROM ORG:  SIZE:
CODE     010000  010000     40F4H ( 16628)
DATA     020000  020000      46EH (  1134)
UDATA    02046E  ------      8E2H (  2274)
startup  007D00  007D00      1B7H (   439)
vectors  00FFE4  00FFE4       1CH (    28)
Total                       5017H ( 20503)

WDC 65C816 Linker Version 3.49.1 Apr 24 2006 15:40:38
   Copyright (C) 1992-2006 The Western Design Center, Inc.

Section: ORG:    ROM ORG:  SIZE:
CODE     010000  010000     40F4H ( 16628)
DATA     020000  020000      46EH (  1134)
UDATA    02046E  ------      8E2H (  2274)
startup  007D00  007D00      1B7H (   439)
vectors  00FFE4  00FFE4       1CH (    28)
Total                       5017H ( 20503)

srec_cat: boot.s28.hex: 1: warning: no header record
boot.hex
boot.s28.hex
        1 file(s) copied.
boot.bin
        1 file(s) copied.
Transferring Kernel: boot
```

**Build with transfer:**

```
G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src>cmake -t
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 29562 bytes of memory.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 27224 bytes of memory.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 28978 bytes of memory.
Compile fxstring
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 12698 bytes of memory.
Compile fxconsole
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 6746 bytes of memory.
Compile fxkernel
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 9538 bytes of memory.
Compile fxmain
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 1668 bytes of memory.
Compile fxirq
WDC 65816 C   Version 3.49  Jan 19 2006 14:38:08
      Copyright (C) 1992-2006 by The Western Design Center, Inc.
WDC 65C816 Assembler  Version 3.49.1 Feb  6 2006 17:24:51
       Copyright (C) 1992-2006 by The Western Design Center, Inc.
allocated 5562 bytes of memory.
WDC 65C816 Linker Version 3.49.1 Apr 24 2006 15:40:38
   Copyright (C) 1992-2006 The Western Design Center, Inc.

Section: ORG:    ROM ORG:  SIZE:
CODE     010000  010000     40F4H ( 16628)
DATA     020000  020000      46EH (  1134)
UDATA    02046E  ------      8E2H (  2274)
startup  007D00  007D00      1B7H (   439)
vectors  00FFE4  00FFE4       1CH (    28)
Total                       5017H ( 20503)

WDC 65C816 Linker Version 3.49.1 Apr 24 2006 15:40:38
   Copyright (C) 1992-2006 The Western Design Center, Inc.

Section: ORG:    ROM ORG:  SIZE:
CODE     010000  010000     40F4H ( 16628)
DATA     020000  020000      46EH (  1134)
UDATA    02046E  ------      8E2H (  2274)
startup  007D00  007D00      1B7H (   439)
vectors  00FFE4  00FFE4       1CH (    28)
Total                       5017H ( 20503)

srec_cat: boot.s28.hex: 1: warning: no header record
boot.hex
boot.s28.hex
        1 file(s) copied.
boot.bin
        1 file(s) copied.
Transferring Kernel: boot
Trying to start debug...
Started C256 debug mode...
Write: 0x10F00 Size:32
Write: 0x100E4 Size:32
Write: 0x12BC0 Size:32
Write: 0x12AA0 Size:32
Write: 0x12CE0 Size:32
Write: 0x10840 Size:32
Write: 0x10960 Size:32
Write: 0x10600 Size:32
Write: 0x10720 Size:32
Write: 0x13CA0 Size:32
Write: 0x122C0 Size:32
Write: 0x121A0 Size:32
Write: 0x123E0 Size:32
Write: 0x12900 Size:32
Write: 0x7E60 Size:32
Write: 0x7D40 Size:32
Write: 0x20400 Size:32
Write: 0x13CC0 Size:32
Write: 0x11AE0 Size:32
Write: 0x13BA0 Size:32
Write: 0x13DE0 Size:32
Write: 0x11940 Size:32
Write: 0x11700 Size:32
Write: 0x11820 Size:32
Write: 0x110C0 Size:32
Write: 0x133C0 Size:32
Write: 0x111E0 Size:32
Write: 0x132A0 Size:32
Write: 0x134E0 Size:32
Write: 0x10F20 Size:32
Write: 0x10E00 Size:32
Write: 0x12BE0 Size:32
Write: 0x12AC0 Size:32
Write: 0x10620 Size:32
Write: 0x12920 Size:32
Write: 0x10740 Size:32
Write: 0x12800 Size:32
Write: 0x10500 Size:32
Write: 0x10860 Size:32
Write: 0x10980 Size:32
Write: 0x120A0 Size:32
Write: 0x122E0 Size:32
Write: 0x121C0 Size:32
Write: 0x11F00 Size:32
Write: 0x20300 Size:32
Write: 0x20420 Size:32
Write: 0x13AA0 Size:32
Write: 0x13CE0 Size:32
Write: 0x13BC0 Size:32
Write: 0x7E80 Size:32
Write: 0x7D60 Size:32
Write: 0x11720 Size:32
Write: 0x11840 Size:32
Write: 0x13900 Size:32
Write: 0x11600 Size:32
Write: 0x11960 Size:32
Write: 0x131A0 Size:32
Write: 0x133E0 Size:32
Write: 0x132C0 Size:32
Write: 0x110E0 Size:32
Write: 0x10D00 Size:32
Write: 0x10E20 Size:32
Write: 0x10F40 Size:32
Write: 0x12AE0 Size:32
Write: 0x10400 Size:32
Write: 0x12700 Size:32
Write: 0x10520 Size:32
Write: 0x12940 Size:32
Write: 0x12820 Size:32
Write: 0x10880 Size:32
Write: 0x10640 Size:32
Write: 0x10760 Size:32
Write: 0x120C0 Size:32
Write: 0x121E0 Size:32
Write: 0x11E00 Size:32
Write: 0x20320 Size:32
Write: 0x11F20 Size:32
Write: 0x20440 Size:32
Write: 0x20200 Size:32
Write: 0x13AC0 Size:32
Write: 0x13BE0 Size:32
Write: 0x7D80 Size:32
Write: 0x11500 Size:32
Write: 0x13800 Size:32
Write: 0x11620 Size:32
Write: 0x13920 Size:32
Write: 0x11980 Size:32
Write: 0x11740 Size:32
Write: 0x11860 Size:32
Write: 0x131C0 Size:32
Write: 0x130A0 Size:32
Write: 0x132E0 Size:32
Write: 0x10C00 Size:32
Write: 0x12F00 Size:32
Write: 0x10F60 Size:32
Write: 0x10D20 Size:32
Write: 0x10E40 Size:32
Write: 0x10300 Size:32
Write: 0x12720 Size:32
Write: 0x12600 Size:32
Write: 0x10660 Size:32
Write: 0x12960 Size:32
Write: 0x10780 Size:32
Write: 0x12840 Size:32
Write: 0x10420 Size:32
Write: 0x10540 Size:32
Write: 0x120E0 Size:32
Write: 0x20360 Size:32
Write: 0x20100 Size:32
Write: 0x11D00 Size:32
Write: 0x20220 Size:32
Write: 0x20340 Size:32
Write: 0x20460 Size:14
Write: 0x11E20 Size:32
Write: 0x11F40 Size:32
Write: 0x10680 Size:32
Write: 0x13AE0 Size:32
Write: 0x11400 Size:32
Write: 0x13820 Size:32
Write: 0x13700 Size:32
Write: 0x11760 Size:32
Write: 0x11880 Size:32
Write: 0x13940 Size:32
Write: 0x11520 Size:32
Write: 0x11640 Size:32
Write: 0x131E0 Size:32
Write: 0x130C0 Size:32
Write: 0x12E00 Size:32
Write: 0x10D40 Size:32
Write: 0x10E60 Size:32
Write: 0x12F20 Size:32
Write: 0x10B00 Size:32
Write: 0x10C20 Size:32
Write: 0x11780 Size:32
Write: 0x10204 Size:32
Write: 0x12500 Size:32
Write: 0x10440 Size:32
Write: 0x12740 Size:32
Write: 0x10560 Size:32
Write: 0x12620 Size:32
Write: 0x12980 Size:32
Write: 0x10320 Size:32
Write: 0x12860 Size:32
Write: 0x10F80 Size:32
Write: 0x140A0 Size:32
Write: 0x20140 Size:32
Write: 0x20260 Size:32
Write: 0x20380 Size:32
Write: 0x20000 Size:32
Write: 0x13F00 Size:32
Write: 0x20120 Size:32
Write: 0x20240 Size:32
Write: 0x11E40 Size:32
Write: 0x11F60 Size:32
Write: 0x11C00 Size:32
Write: 0x11D20 Size:32
Write: 0x12880 Size:32
Write: 0x10460 Size:32
Write: 0x10580 Size:32
Write: 0x13600 Size:32
Write: 0x11540 Size:32
Write: 0x13840 Size:32
Write: 0x11660 Size:32
Write: 0x13720 Size:32
Write: 0x11300 Size:32
Write: 0x11420 Size:32
Write: 0x13960 Size:32
Write: 0x130E0 Size:32
Write: 0x10B20 Size:32
Write: 0x12E20 Size:32
Write: 0x10C40 Size:32
Write: 0x12D00 Size:32
Write: 0x10A00 Size:32
Write: 0x12F40 Size:32
Write: 0x13980 Size:32
Write: 0x11560 Size:32
Write: 0x11680 Size:32
Write: 0x109A0 Size:32
Write: 0x10224 Size:32
Write: 0x10104 Size:32
Write: 0x12520 Size:32
Write: 0x10340 Size:32
Write: 0x12400 Size:32
Write: 0x12760 Size:32
Write: 0x12640 Size:32
Write: 0x10D60 Size:32
Write: 0x10E80 Size:32
Write: 0x140C0 Size:32
Write: 0x20040 Size:32
Write: 0x20160 Size:32
Write: 0x20280 Size:32
Write: 0x20020 Size:32
Write: 0x11C20 Size:32
Write: 0x13F20 Size:32
Write: 0x11D40 Size:32
Write: 0x13E00 Size:32
Write: 0x11B00 Size:32
Write: 0x10480 Size:32
Write: 0x12780 Size:32
Write: 0x12660 Size:32
Write: 0x10360 Size:32
Write: 0x11320 Size:32
Write: 0x13620 Size:32
Write: 0x11440 Size:32
Write: 0x13500 Size:32
Write: 0x13860 Size:32
Write: 0x7EA0 Size:23
Write: 0x11200 Size:32
Write: 0x13740 Size:32
Write: 0x11E60 Size:32
Write: 0x11F80 Size:32
Write: 0x109C0 Size:32
Write: 0x12C00 Size:32
Write: 0x10A20 Size:32
Write: 0x12E40 Size:32
Write: 0x12D20 Size:32
Write: 0x11580 Size:32
Write: 0x13880 Size:32
Write: 0x13760 Size:32
Write: 0x11340 Size:32
Write: 0x11460 Size:32
Write: 0x108A0 Size:32
Write: 0x10004 Size:32
Write: 0x10124 Size:32
Write: 0x12300 Size:32
Write: 0x10244 Size:32
Write: 0x12540 Size:32
Write: 0x12420 Size:32
Write: 0x10D80 Size:32
Write: 0x20180 Size:32
Write: 0x12F60 Size:32
Write: 0x10B40 Size:32
Write: 0x10C60 Size:32
Write: 0x140E0 Size:20
Write: 0x20060 Size:32
Write: 0x11A00 Size:32
Write: 0x13D00 Size:32
Write: 0x11B20 Size:32
Write: 0x13F40 Size:32
Write: 0x13E20 Size:32
Write: 0x12560 Size:32
Write: 0x10380 Size:32
Write: 0x12440 Size:32
Write: 0x12680 Size:32
Write: 0x119A0 Size:32
Write: 0x11100 Size:32
Write: 0x13400 Size:32
Write: 0x11220 Size:32
Write: 0x7DA0 Size:32
Write: 0x13640 Size:32
Write: 0x13520 Size:32
Write: 0x11E80 Size:32
Write: 0x11C40 Size:32
Write: 0x11D60 Size:32
Write: 0x109E0 Size:32
Write: 0x107A0 Size:32
Write: 0x108C0 Size:32
Write: 0x12C20 Size:32
Write: 0x12B00 Size:32
Write: 0x11360 Size:32
Write: 0x13660 Size:32
Write: 0x11480 Size:32
Write: 0x13540 Size:32
Write: 0x11120 Size:32
Write: 0x11240 Size:32
Write: 0x13780 Size:32
Write: 0x10264 Size:32
Write: 0x10024 Size:32
Write: 0x12320 Size:32
Write: 0x10144 Size:32
Write: 0x12200 Size:32
Write: 0x10B60 Size:32
Write: 0x12E60 Size:32
Write: 0x10C80 Size:32
Write: 0x12D40 Size:32
Write: 0x20080 Size:32
Write: 0x10A40 Size:32
Write: 0x12F80 Size:32
Write: 0x118A0 Size:32
Write: 0x119C0 Size:32
Write: 0x13D20 Size:32
Write: 0x13C00 Size:32
Write: 0x12340 Size:32
Write: 0x12220 Size:32
Write: 0x10284 Size:32
Write: 0x12580 Size:32
Write: 0x12460 Size:32
Write: 0x7DC0 Size:32
Write: 0x11000 Size:32
Write: 0x13420 Size:32
Write: 0x13300 Size:32
Write: 0x11C60 Size:32
Write: 0x13F60 Size:32
Write: 0x11D80 Size:32
Write: 0x13E40 Size:32
Write: 0x11A20 Size:32
Write: 0x11B40 Size:32
Write: 0x107C0 Size:32
Write: 0x108E0 Size:32
Write: 0x129A0 Size:32
Write: 0x106A0 Size:32
Write: 0x12A00 Size:32
Write: 0x11140 Size:32
Write: 0x13440 Size:32
Write: 0x11260 Size:32
Write: 0x13320 Size:32
Write: 0x13680 Size:32
Write: 0x11020 Size:32
Write: 0x13560 Size:32
Write: 0x11380 Size:32
Write: 0x10044 Size:32
Write: 0x10164 Size:32
Write: 0x12100 Size:32
Write: 0x12C40 Size:32
Write: 0x10A60 Size:32
Write: 0x12B20 Size:32
Write: 0x12E80 Size:32
Write: 0x12D60 Size:32
Write: 0x10B80 Size:32
Write: 0x118C0 Size:32
Write: 0x119E0 Size:32
Write: 0x117A0 Size:32
Write: 0x13B00 Size:32
Write: 0x12120 Size:32
Write: 0x12000 Size:32
Write: 0x10064 Size:32
Write: 0x12360 Size:32
Write: 0x10184 Size:32
Write: 0x12240 Size:32
Write: 0x12480 Size:32
Write: 0x7DE0 Size:32
Write: 0x10FA0 Size:32
Write: 0x13200 Size:32
Write: 0x11A40 Size:32
Write: 0x13D40 Size:32
Write: 0x11B60 Size:32
Write: 0x13C20 Size:32
Write: 0x13F80 Size:32
Write: 0x13E60 Size:32
Write: 0x11C80 Size:32
Write: 0x105A0 Size:32
Write: 0x128A0 Size:32
Write: 0x106C0 Size:32
Write: 0x129C0 Size:32
Write: 0x107E0 Size:32
Write: 0x13220 Size:32
Write: 0x11040 Size:32
Write: 0x13100 Size:32
Write: 0x13460 Size:32
Write: 0x13340 Size:32
Write: 0x13580 Size:32
Write: 0x11160 Size:32
Write: 0x11280 Size:32
Write: 0x12A20 Size:32
Write: 0x12C60 Size:32
Write: 0x12B40 Size:32
Write: 0x12D80 Size:32
Write: 0x10A80 Size:32
Write: 0x116A0 Size:32
Write: 0x139A0 Size:32
Write: 0x117C0 Size:32
Write: 0x118E0 Size:32
Write: 0x10084 Size:32
Write: 0x12140 Size:32
Write: 0x12020 Size:32
Write: 0x12380 Size:32
Write: 0x12260 Size:32
Write: 0x10EA0 Size:32
Write: 0x10FC0 Size:32
Write: 0x203A0 Size:32
Write: 0x13B20 Size:32
Write: 0x13A00 Size:32
Write: 0x13D60 Size:32
Write: 0x13C40 Size:32
Write: 0x13E80 Size:32
Write: 0x11A60 Size:32
Write: 0x11B80 Size:32
Write: 0x104A0 Size:32
Write: 0x128C0 Size:32
Write: 0x127A0 Size:32
Write: 0x129E0 Size:32
Write: 0x105C0 Size:32
Write: 0x106E0 Size:32
Write: 0x13000 Size:32
Write: 0x13240 Size:32
Write: 0x13120 Size:32
Write: 0x11180 Size:32
Write: 0x13480 Size:32
Write: 0x13360 Size:32
Write: 0x11060 Size:32
Write: 0x11FA0 Size:32
Write: 0x12A40 Size:32
Write: 0x12C80 Size:32
Write: 0x12B60 Size:32
Write: 0x115A0 Size:32
Write: 0x139C0 Size:32
Write: 0x138A0 Size:32
Write: 0x116C0 Size:32
Write: 0x117E0 Size:32
Write: 0x12160 Size:32
Write: 0x12040 Size:32
Write: 0x12280 Size:32
Write: 0x202A0 Size:32
Write: 0x10DA0 Size:32
Write: 0x203C0 Size:32
Write: 0x10EC0 Size:32
Write: 0x10FE0 Size:32
Write: 0x13B40 Size:32
Write: 0x13A20 Size:32
Write: 0x11A80 Size:32
Write: 0x13D80 Size:32
Write: 0x13C60 Size:32
Write: 0x126A0 Size:32
Write: 0x105E0 Size:32
Write: 0x128E0 Size:32
Write: 0x127C0 Size:32
Write: 0x103A0 Size:32
Write: 0x104C0 Size:32
Write: 0x13020 Size:32
Write: 0x13260 Size:32
Write: 0x11080 Size:32
Write: 0x13140 Size:32
Write: 0x13380 Size:32
Write: 0x11EA0 Size:32
Write: 0x11FC0 Size:32
Write: 0x12A60 Size:32
Write: 0x12B80 Size:32
Write: 0x137A0 Size:32
Write: 0x116E0 Size:32
Write: 0x139E0 Size:32
Write: 0x138C0 Size:32
Write: 0x114A0 Size:32
Write: 0x115C0 Size:32
Write: 0x14000 Size:32
Write: 0x12180 Size:32
Write: 0x12060 Size:32
Write: 0x201A0 Size:32
Write: 0x12FA0 Size:32
Write: 0x202C0 Size:32
Write: 0x203E0 Size:32
Write: 0x10EE0 Size:32
Write: 0x10CA0 Size:32
Write: 0x10DC0 Size:32
Write: 0x13B60 Size:32
Write: 0x13A40 Size:32
Write: 0x13C80 Size:32
Write: 0x102A4 Size:32
Write: 0x103C0 Size:32
Write: 0x126C0 Size:32
Write: 0x104E0 Size:32
Write: 0x125A0 Size:32
Write: 0x127E0 Size:32
Write: 0x13040 Size:32
Write: 0x13280 Size:32
Write: 0x13160 Size:32
Write: 0x11FE0 Size:32
Write: 0x11DA0 Size:32
Write: 0x11EC0 Size:32
Write: 0x12A80 Size:32
Write: 0x12080 Size:32
Write: 0x114C0 Size:32
Write: 0x137C0 Size:32
Write: 0x115E0 Size:32
Write: 0x136A0 Size:32
Write: 0x113A0 Size:32
Write: 0x138E0 Size:32
Write: 0x14020 Size:32
Write: 0x202E0 Size:32
Write: 0x200A0 Size:32
Write: 0x201C0 Size:32
Write: 0x10CC0 Size:32
Write: 0x12FC0 Size:32
Write: 0x10DE0 Size:32
Write: 0x12EA0 Size:32
Write: 0x10BA0 Size:32
Write: 0x13B80 Size:32
Write: 0x13A60 Size:32
Write: 0x101A4 Size:32
Write: 0x102C4 Size:32
Write: 0x13180 Size:32
Write: 0x124A0 Size:32
Write: 0x126E0 Size:32
Write: 0x125C0 Size:32
Write: 0x10CE0 Size:32
Write: 0x13060 Size:32
Write: 0x11DC0 Size:32
Write: 0x11EE0 Size:32
Write: 0x13FA0 Size:32
Write: 0x11CA0 Size:32
Write: 0x103E0 Size:32
Write: 0xFFE4 Size:32
Write: 0x10900 Size:32
Write: 0x7E00 Size:32
Write: 0x112A0 Size:32
Write: 0x135A0 Size:32
Write: 0x113C0 Size:32
Write: 0x137E0 Size:32
Write: 0x136C0 Size:32
Write: 0x11DE0 Size:32
Write: 0x200C0 Size:32
Write: 0x201E0 Size:32
Write: 0x14040 Size:32
Write: 0x13A80 Size:32
Write: 0x10AA0 Size:32
Write: 0x12DA0 Size:32
Write: 0x10BC0 Size:32
Write: 0x12FE0 Size:32
Write: 0x12EC0 Size:32
Write: 0x114E0 Size:32
Write: 0x13080 Size:32
Write: 0x100A4 Size:32
Write: 0x101C4 Size:32
Write: 0x124C0 Size:32
Write: 0x102E4 Size:28
Write: 0x123A0 Size:32
Write: 0x12EE0 Size:32
Write: 0x10AC0 Size:32
Write: 0x10BE0 Size:32
Write: 0x11BA0 Size:32
Write: 0x13EA0 Size:32
Write: 0x11CC0 Size:32
Write: 0x13FC0 Size:32
Write: 0x125E0 Size:32
Write: 0x10800 Size:32
Write: 0x10920 Size:32
Write: 0x14060 Size:32
Write: 0x111A0 Size:32
Write: 0x7E20 Size:32
Write: 0x135C0 Size:32
Write: 0x7D00 Size:32
Write: 0x134A0 Size:32
Write: 0x13FE0 Size:32
Write: 0x11BC0 Size:32
Write: 0x11CE0 Size:32
Write: 0x200E0 Size:32
Write: 0x12DC0 Size:32
Write: 0x12CA0 Size:32
Write: 0x136E0 Size:32
Write: 0x112C0 Size:32
Write: 0x113E0 Size:32
Write: 0x11900 Size:32
Write: 0x101E4 Size:32
Write: 0x122A0 Size:32
Write: 0x100C4 Size:32
Write: 0x10AE0 Size:32
Write: 0x12DE0 Size:32
Write: 0x12CC0 Size:32
Write: 0x10820 Size:32
Write: 0x10940 Size:32
Write: 0x11AA0 Size:32
Write: 0x13EC0 Size:32
Write: 0x13DA0 Size:32
Write: 0x124E0 Size:32
Write: 0x123C0 Size:32
Write: 0x10700 Size:32
Write: 0x7E40 Size:32
Write: 0x7D20 Size:32
Write: 0x14080 Size:32
Write: 0x133A0 Size:32
Write: 0x11BE0 Size:32
Write: 0x13EE0 Size:32
Write: 0x13DC0 Size:32
Write: 0x11AC0 Size:32
Write: 0x11920 Size:32
Write: 0x12BA0 Size:32
Write: 0x112E0 Size:32
Write: 0x135E0 Size:32
Write: 0x134C0 Size:32
Write: 0x110A0 Size:32
Write: 0x111C0 Size:32
Write: 0x11800 Size:32
```
