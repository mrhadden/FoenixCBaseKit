;Internal VICKY Registers and Internal Memory Locations (LUTs)
MASTER_CTRL_REG_L	       EQU  $AF0000
;Control Bits Fields
Mstr_Ctrl_Text_Mode_En   EQU  $01       ; Enable the Text Mode
Mstr_Ctrl_Text_Overlay   EQU  $02       ; Enable the Overlay of the text mode on top of Graphic Mode (the Background Color is ignored)
Mstr_Ctrl_Graph_Mode_En  EQU  $04       ; Enable the Graphic Mode
Mstr_Ctrl_Bitmap_En      EQU  $08       ; Enable the Bitmap Module In Vicky
Mstr_Ctrl_TileMap_En     EQU  $10       ; Enable the Tile Module in Vicky
Mstr_Ctrl_Sprite_En      EQU  $20       ; Enable the Sprite Module in Vicky
Mstr_Ctrl_GAMMA_En       EQU  $40       ; this Enable the GAMMA correction - The Analog and DVI have different color value, the GAMMA is great to correct the difference
Mstr_Ctrl_Disable_Vid    EQU  $80       ; This will disable the Scanning of the Video hence giving 100% bandwith to the CPU
MASTER_CTRL_REG_H	       EQU  $AF0001
; Reserved - TBD
VKY_RESERVED_00          EQU  $AF0002
VKY_RESERVED_01          EQU  $AF0003
BORDER_CTRL_REG          EQU  $AF0004
Border_Ctrl_Enable       EQU  $01

BORDER_COLOR_B           EQU  $AF0005
BORDER_COLOR_G           EQU  $AF0006
BORDER_COLOR_R           EQU  $AF0007

BACKGROUND_COLOR_B       EQU  $AF0008 ; When in Graphic Mode, if a pixel is "0" then the Background pixel is chosen
BACKGROUND_COLOR_G       EQU  $AF0009
BACKGROUND_COLOR_R       EQU  $AF000A ;

VKY_TXT_CURSOR_CTRL_REG  EQU  $AF0010   ;[0]  Enable Text Mode
Vky_Cursor_Enable        EQU  $01
Vky_Cursor_Flash_Rate0   EQU  $02
Vky_Cursor_Flash_Rate1   EQU  $04
Vky_Cursor_FONT_Page0    EQU  $08       ; Pick Font Page 0 or Font Page 1
Vky_Cursor_FONT_Page1    EQU  $10       ; Pick Font Page 0 or Font Page 1
VKY_TXT_RESERVED         EQU  $AF0011   ;Not in Use
VKY_TXT_CURSOR_CHAR_REG  EQU  $AF0012

VKY_TXT_CURSOR_COLR_REG  EQU  $AF0013
VKY_TXT_CURSOR_X_REG_L   EQU  $AF0014
VKY_TXT_CURSOR_X_REG_H   EQU  $AF0015
VKY_TXT_CURSOR_Y_REG_L   EQU  $AF0016
VKY_TXT_CURSOR_Y_REG_H   EQU  $AF0017

VKY_INFO_CHIP_NUM_L      EQU  $AF001C
VKY_INFO_CHIP_NUM_H      EQU  $AF001D
VKY_INFO_CHIP_VER_L      EQU  $AF001E
VKY_INFO_CHIP_VER_H      EQU  $AF001F

;
; Bit Field Definition for the Control Register
TILE_Enable              EQU  $01
TILE_LUT0                EQU  $02
TILE_LUT1                EQU  $04
TILE_LUT2                EQU  $08
TILESHEET_256x256_En     EQU  $80   ; 0 -> Sequential, 1-> 256x256 Tile Sheet Striding
;
;Tile MAP Layer 0 Registers
TL0_CONTROL_REG          EQU  $AF0100       ; Bit[0] - Enable, Bit[3:1] - LUT Select,
TL0_START_ADDY_L         EQU  $AF0101       ; Not USed right now - Starting Address to where is the MAP
TL0_START_ADDY_M         EQU  $AF0102
TL0_START_ADDY_H         EQU  $AF0103
TL0_MAP_X_STRIDE_L       EQU  $AF0104       ; The Stride of the Map
TL0_MAP_X_STRIDE_H       EQU  $AF0105
TL0_MAP_Y_STRIDE_L       EQU  $AF0106       ; The Stride of the Map
TL0_MAP_Y_STRIDE_H       EQU  $AF0107
;TL0_RESERVED_0           EQU  $AF0108
;TL0_RESERVED_1           EQU  $AF0109
;TL0_RESERVED_2           EQU  $AF010A
;TL0_RESERVED_3           EQU  $AF010B
;TL0_RESERVED_4           EQU  $AF010C
;TL0_RESERVED_5           EQU  $AF010D
;TL0_RESERVED_6           EQU  $AF010E
;TL0_RESERVED_7           EQU  $AF010F
;Tile MAP Layer 1 Registers
TL1_CONTROL_REG          EQU  $AF0108       ; Bit[0] - Enable, Bit[3:1] - LUT Select,
TL1_START_ADDY_L         EQU  $AF0109       ; Not USed right now - Starting Address to where is the MAP
TL1_START_ADDY_M         EQU  $AF010A
TL1_START_ADDY_H         EQU  $AF010B
TL1_MAP_X_STRIDE_L       EQU  $AF010C       ; The Stride of the Map
TL1_MAP_X_STRIDE_H       EQU  $AF010D
TL1_MAP_Y_STRIDE_L       EQU  $AF010E       ; The Stride of the Map
TL1_MAP_Y_STRIDE_H       EQU  $AF010F
;TL1_RESERVED_0           EQU  $AF0118
;TL1_RESERVED_1           EQU  $AF0119
;TL1_RESERVED_2           EQU  $AF011A
;TL1_RESERVED_3           EQU  $AF011B
;TL1_RESERVED_4           EQU  $AF011C
;TL1_RESERVED_5           EQU  $AF011D
;TL1_RESERVED_6           EQU  $AF011E
;TL1_RESERVED_7           EQU  $AF011F
;Tile MAP Layer 2 Registers
TL2_CONTROL_REG          EQU  $AF0110       ; Bit[0] - Enable, Bit[3:1] - LUT Select,
TL2_START_ADDY_L         EQU  $AF0111       ; Not USed right now - Starting Address to where is the MAP
TL2_START_ADDY_M         EQU  $AF0112
TL2_START_ADDY_H         EQU  $AF0113
TL2_MAP_X_STRIDE_L       EQU  $AF0114       ; The Stride of the Map
TL2_MAP_X_STRIDE_H       EQU  $AF0115
TL2_MAP_Y_STRIDE_L       EQU  $AF0116       ; The Stride of the Map
TL2_MAP_Y_STRIDE_H       EQU  $AF0117
;TL2_RESERVED_0           EQU  $AF0128
;TL2_RESERVED_1           EQU  $AF0129
;TL2_RESERVED_2           EQU  $AF012A
;TL2_RESERVED_3           EQU  $AF012B
;TL2_RESERVED_4           EQU  $AF012C
;TL2_RESERVED_5           EQU  $AF012D
;TL2_RESERVED_6           EQU  $AF012E
;TL2_RESERVED_7           EQU  $AF012F
;Tile MAP Layer 3 Registers
TL3_CONTROL_REG          EQU  $AF0118       ; Bit[0] - Enable, Bit[3:1] - LUT Select,
TL3_START_ADDY_L         EQU  $AF0119       ; Not USed right now - Starting Address to where is the MAP
TL3_START_ADDY_M         EQU  $AF011A
TL3_START_ADDY_H         EQU  $AF011B
TL3_MAP_X_STRIDE_L       EQU  $AF011C       ; The Stride of the Map
TL3_MAP_X_STRIDE_H       EQU  $AF011D
TL3_MAP_Y_STRIDE_L       EQU  $AF011E       ; The Stride of the Map
TL3_MAP_Y_STRIDE_H       EQU  $AF011F
;TL3_RESERVED_0           EQU  $AF0138
;TL3_RESERVED_1           EQU  $AF0139
;TL3_RESERVED_2           EQU  $AF013A
;TL3_RESERVED_3           EQU  $AF013B
;TL3_RESERVED_4           EQU  $AF013C
;TL3_RESERVED_5           EQU  $AF013D
;TL3_RESERVED_6           EQU  $AF013E
;TL3_RESERVED_7           EQU  $AF013F
;Bitmap Registers
BM_CONTROL_REG           EQU  $AF0140
BM_START_ADDY_L          EQU  $AF0141
BM_START_ADDY_M          EQU  $AF0142
BM_START_ADDY_H          EQU  $AF0143
BM_X_SIZE_L              EQU  $AF0144
BM_X_SIZE_H              EQU  $AF0145
BM_Y_SIZE_L              EQU  $AF0146
BM_Y_SIZE_H              EQU  $AF0147
BM_RESERVED_0            EQU  $AF0148
BM_RESERVED_1            EQU  $AF0149
BM_RESERVED_2            EQU  $AF014A
BM_RESERVED_3            EQU  $AF014B
BM_RESERVED_4            EQU  $AF014C
BM_RESERVED_5            EQU  $AF014D
BM_RESERVED_6            EQU  $AF014E
BM_RESERVED_7            EQU  $AF014F
;Sprite Registers
; Bit Field Definition for the Control Register
SPRITE_Enable              EQU  $01
SPRITE_LUT0                EQU  $02 ; This is the LUT that the Sprite will use
SPRITE_LUT1                EQU  $04
SPRITE_LUT2                EQU  $08 ; Only 4 LUT for Now, So this bit is not used.
SPRITE_DEPTH0              EQU  $10 ; This is the Layer the Sprite will be Displayed in
SPRITE_DEPTH1              EQU  $20
SPRITE_DEPTH2              EQU  $40

; Sprite 0 (Highest Priority)
SP00_CONTROL_REG         EQU  $AF0200
SP00_ADDY_PTR_L          EQU  $AF0201
SP00_ADDY_PTR_M          EQU  $AF0202
SP00_ADDY_PTR_H          EQU  $AF0203
SP00_X_POS_L             EQU  $AF0204
SP00_X_POS_H             EQU  $AF0205
SP00_Y_POS_L             EQU  $AF0206
SP00_Y_POS_H             EQU  $AF0207
; Sprite 1
SP01_CONTROL_REG         EQU  $AF0208
SP01_ADDY_PTR_L          EQU  $AF0209
SP01_ADDY_PTR_M          EQU  $AF020A
SP01_ADDY_PTR_H          EQU  $AF020B
SP01_X_POS_L             EQU  $AF020C
SP01_X_POS_H             EQU  $AF020D
SP01_Y_POS_L             EQU  $AF020E
SP01_Y_POS_H             EQU  $AF020F
; Sprite 2
SP02_CONTROL_REG         EQU  $AF0210
SP02_ADDY_PTR_L          EQU  $AF0211
SP02_ADDY_PTR_M          EQU  $AF0212
SP02_ADDY_PTR_H          EQU  $AF0213
SP02_X_POS_L             EQU  $AF0214
SP02_X_POS_H             EQU  $AF0215
SP02_Y_POS_L             EQU  $AF0216
SP02_Y_POS_H             EQU  $AF0217
; Sprite 3
SP03_CONTROL_REG         EQU  $AF0218
SP03_ADDY_PTR_L          EQU  $AF0219
SP03_ADDY_PTR_M          EQU  $AF021A
SP03_ADDY_PTR_H          EQU  $AF021B
SP03_X_POS_L             EQU  $AF021C
SP03_X_POS_H             EQU  $AF021D
SP03_Y_POS_L             EQU  $AF021E
SP03_Y_POS_H             EQU  $AF021F
; Sprite 4
SP04_CONTROL_REG         EQU  $AF0220
SP04_ADDY_PTR_L          EQU  $AF0221
SP04_ADDY_PTR_M          EQU  $AF0222
SP04_ADDY_PTR_H          EQU  $AF0223
SP04_X_POS_L             EQU  $AF0224
SP04_X_POS_H             EQU  $AF0225
SP04_Y_POS_L             EQU  $AF0226
SP04_Y_POS_H             EQU  $AF0227
; Sprite 5
SP05_CONTROL_REG         EQU  $AF0228
SP05_ADDY_PTR_L          EQU  $AF0229
SP05_ADDY_PTR_M          EQU  $AF022A
SP05_ADDY_PTR_H          EQU  $AF022B
SP05_X_POS_L             EQU  $AF022C
SP05_X_POS_H             EQU  $AF022D
SP05_Y_POS_L             EQU  $AF022E
SP05_Y_POS_H             EQU  $AF022F
; Sprite 6
SP06_CONTROL_REG         EQU  $AF0230
SP06_ADDY_PTR_L          EQU  $AF0231
SP06_ADDY_PTR_M          EQU  $AF0232
SP06_ADDY_PTR_H          EQU  $AF0233
SP06_X_POS_L             EQU  $AF0234
SP06_X_POS_H             EQU  $AF0235
SP06_Y_POS_L             EQU  $AF0236
SP06_Y_POS_H             EQU  $AF0237
; Sprite 7
SP07_CONTROL_REG         EQU  $AF0238
SP07_ADDY_PTR_L          EQU  $AF0239
SP07_ADDY_PTR_M          EQU  $AF023A
SP07_ADDY_PTR_H          EQU  $AF023B
SP07_X_POS_L             EQU  $AF023C
SP07_X_POS_H             EQU  $AF023D
SP07_Y_POS_L             EQU  $AF023E
SP07_Y_POS_H             EQU  $AF023F
; Sprite 8
SP08_CONTROL_REG         EQU  $AF0240
SP08_ADDY_PTR_L          EQU  $AF0241
SP08_ADDY_PTR_M          EQU  $AF0242
SP08_ADDY_PTR_H          EQU  $AF0243
SP08_X_POS_L             EQU  $AF0244
SP08_X_POS_H             EQU  $AF0245
SP08_Y_POS_L             EQU  $AF0246
SP08_Y_POS_H             EQU  $AF0247
; Sprite 9
SP09_CONTROL_REG         EQU  $AF0248
SP09_ADDY_PTR_L          EQU  $AF0249
SP09_ADDY_PTR_M          EQU  $AF024A
SP09_ADDY_PTR_H          EQU  $AF024B
SP09_X_POS_L             EQU  $AF024C
SP09_X_POS_H             EQU  $AF024D
SP09_Y_POS_L             EQU  $AF024E
SP09_Y_POS_H             EQU  $AF024F
; Sprite 10
SP10_CONTROL_REG         EQU  $AF0250
SP10_ADDY_PTR_L          EQU  $AF0251
SP10_ADDY_PTR_M          EQU  $AF0252
SP10_ADDY_PTR_H          EQU  $AF0253
SP10_X_POS_L             EQU  $AF0254
SP10_X_POS_H             EQU  $AF0255
SP10_Y_POS_L             EQU  $AF0256
SP10_Y_POS_H             EQU  $AF0257
; Sprite 11
SP11_CONTROL_REG         EQU  $AF0258
SP11_ADDY_PTR_L          EQU  $AF0259
SP11_ADDY_PTR_M          EQU  $AF025A
SP11_ADDY_PTR_H          EQU  $AF025B
SP11_X_POS_L             EQU  $AF025C
SP11_X_POS_H             EQU  $AF025D
SP11_Y_POS_L             EQU  $AF025E
SP11_Y_POS_H             EQU  $AF025F
; Sprite 12
SP12_CONTROL_REG         EQU  $AF0260
SP12_ADDY_PTR_L          EQU  $AF0261
SP12_ADDY_PTR_M          EQU  $AF0262
SP12_ADDY_PTR_H          EQU  $AF0263
SP12_X_POS_L             EQU  $AF0264
SP12_X_POS_H             EQU  $AF0265
SP12_Y_POS_L             EQU  $AF0266
SP12_Y_POS_H             EQU  $AF0267
; Sprite 13
SP13_CONTROL_REG         EQU  $AF0268
SP13_ADDY_PTR_L          EQU  $AF0269
SP13_ADDY_PTR_M          EQU  $AF026A
SP13_ADDY_PTR_H          EQU  $AF026B
SP13_X_POS_L             EQU  $AF026C
SP13_X_POS_H             EQU  $AF026D
SP13_Y_POS_L             EQU  $AF026E
SP13_Y_POS_H             EQU  $AF026F
; Sprite 14
SP14_CONTROL_REG         EQU  $AF0270
SP14_ADDY_PTR_L          EQU  $AF0271
SP14_ADDY_PTR_M          EQU  $AF0272
SP14_ADDY_PTR_H          EQU  $AF0273
SP14_X_POS_L             EQU  $AF0274
SP14_X_POS_H             EQU  $AF0275
SP14_Y_POS_L             EQU  $AF0276
SP14_Y_POS_H             EQU  $AF0277
; Sprite 15
SP15_CONTROL_REG         EQU  $AF0278
SP15_ADDY_PTR_L          EQU  $AF0279
SP15_ADDY_PTR_M          EQU  $AF027A
SP15_ADDY_PTR_H          EQU  $AF027B
SP15_X_POS_L             EQU  $AF027C
SP15_X_POS_H             EQU  $AF027D
SP15_Y_POS_L             EQU  $AF027E
SP15_Y_POS_H             EQU  $AF027F
; Sprite 16
SP16_CONTROL_REG         EQU  $AF0280
SP16_ADDY_PTR_L          EQU  $AF0281
SP16_ADDY_PTR_M          EQU  $AF0282
SP16_ADDY_PTR_H          EQU  $AF0283
SP16_X_POS_L             EQU  $AF0284
SP16_X_POS_H             EQU  $AF0285
SP16_Y_POS_L             EQU  $AF0286
SP16_Y_POS_H             EQU  $AF0287
; Sprite 17
SP17_CONTROL_REG         EQU  $AF0288
SP17_ADDY_PTR_L          EQU  $AF0289
SP17_ADDY_PTR_M          EQU  $AF028A
SP17_ADDY_PTR_H          EQU  $AF028B
SP17_X_POS_L             EQU  $AF028C
SP17_X_POS_H             EQU  $AF028D
SP17_Y_POS_L             EQU  $AF028E
SP17_Y_POS_H             EQU  $AF028F
; DMA Controller $AF0400 - $AF04FF
VDMA_CONTROL_REG         EQU  $AF0400
VDMA_COUNT_REG_L         EQU  $AF0401
VDMA_COUNT_REG_M         EQU  $AF0402
VDMA_COUNT_REG_H         EQU  $AF0403
VDMA_DATA_2_WRITE_L      EQU  $AF0404
VDMA_DATA_2_WRITE_H      EQU  $AF0405
VDMA_STRIDE_L            EQU  $AF0406
VDMA_STRIDE_H            EQU  $AF0407
VDMA_SRC_ADDY_L          EQU  $AF0408
VDMA_SRC_ADDY_M          EQU  $AF0409
VDMA_SRC_ADDY_H          EQU  $AF040A
VDMA_RESERVED_0          EQU  $AF040B
VDMA_DST_ADDY_L          EQU  $AF040C
VDMA_DST_ADDY_M          EQU  $AF040D
VDMA_DST_ADDY_H          EQU  $AF040E
VDMA_RESERVED_1          EQU  $AF040F

; Mouse Pointer Graphic Memory
MOUSE_PTR_GRAP0_START     EQU  $AF0500 ; 16 x 16  EQU  256 Pixels (Grey Scale) 0  EQU  Transparent, 1  EQU  Black , 255  EQU  White
MOUSE_PTR_GRAP0_END       EQU  $AF05FF ; Pointer 0
MOUSE_PTR_GRAP1_START     EQU  $AF0600 ;
MOUSE_PTR_GRAP1_END       EQU  $AF06FF ; Pointer 1

MOUSE_PTR_CTRL_REG_L     EQU  $AF0700 ; Bit[0] Enable, Bit[1]  EQU  0  ( 0  EQU  Pointer0, 1  EQU  Pointer1)
MOUSE_PTR_CTRL_REG_H     EQU  $AF0701 ;
MOUSE_PTR_X_POS_L        EQU  $AF0702 ; X Position (0 - 639) (Can only read now) Writing will have no effect
MOUSE_PTR_X_POS_H        EQU  $AF0703 ;
MOUSE_PTR_Y_POS_L        EQU  $AF0704 ; Y Position (0 - 479) (Can only read now) Writing will have no effect
MOUSE_PTR_Y_POS_H        EQU  $AF0705 ;
MOUSE_PTR_BYTE0          EQU  $AF0706 ; Byte 0 of Mouse Packet (you must write 3 Bytes)
MOUSE_PTR_BYTE1          EQU  $AF0707 ; Byte 1 of Mouse Packet (if you don't, then )
MOUSE_PTR_BYTE2          EQU  $AF0708 ; Byte 2 of Mouse Packet (state Machine will be jammed in 1 state)
                                  ; (And the mouse won't work)
C256F_MODEL_MAJOR        EQU  $AF070B ;
C256F_MODEL_MINOR        EQU  $AF070C ;
FPGA_DOR                 EQU  $AF070D ;
FPGA_MOR                 EQU  $AF070E ;
FPGA_YOR                 EQU  $AF070F ;

;                        EQU  $AF0800 ; the RTC is Here
;                        EQU  $AF1000 ; The SuperIO Start is Here
;                        EQU  $AF13FF ; The SuperIO Start is Here

FG_CHAR_LUT_PTR          EQU  $AF1F40
BG_CHAR_LUT_PTR		       EQU  $AF1F80

GRPH_LUT0_PTR		         EQU  $AF2000
GRPH_LUT1_PTR		         EQU  $AF2400
GRPH_LUT2_PTR		         EQU  $AF2800
GRPH_LUT3_PTR		         EQU  $AF2C00
GRPH_LUT4_PTR		         EQU  $AF3000
GRPH_LUT5_PTR		         EQU  $AF3400
GRPH_LUT6_PTR		         EQU  $AF3800
GRPH_LUT7_PTR		         EQU  $AF3C00

GAMMA_B_LUT_PTR		       EQU  $AF4000
GAMMA_G_LUT_PTR		       EQU  $AF4100
GAMMA_R_LUT_PTR		       EQU  $AF4200

TILE_MAP0       		     EQU  $AF5000     ;$AF5000 - $AF57FF
TILE_MAP1                EQU  $AF5800     ;$AF5800 - $AF5FFF
TILE_MAP2                EQU  $AF6000     ;$AF6000 - $AF67FF
TILE_MAP3                EQU  $AF6800     ;$AF6800 - $AF6FFF

FONT_MEMORY_BANK0        EQU  $AF8000     ;$AF8000 - $AF87FF
FONT_MEMORY_BANK1        EQU  $AF8800     ;$AF8800 - $AF8FFF
CS_TEXT_MEM_PTR          EQU  $AFA000
CS_COLOR_MEM_PTR         EQU  $AFC000


BTX_START                EQU  $AFE000     ; BEATRIX Registers
BTX_END                  EQU  $AFFFFF

; Line Interrupt Registers
VKY_LINE_IRQ_CTRL_REG    EQU  $AF001B ;[0] - Enable Line 0, [1] -Enable Line 1
VKY_LINE0_CMP_VALUE_LO   EQU  $AF001C ;Write Only [7:0]
VKY_LINE0_CMP_VALUE_HI   EQU  $AF001D ;Write Only [3:0]
VKY_LINE1_CMP_VALUE_LO   EQU  $AF001E ;Write Only [7:0]
VKY_LINE1_CMP_VALUE_HI   EQU  $AF001F ;Write Only [3:0]

