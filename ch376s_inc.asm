DEF_NULL_CHAR       EQU $00
DEF_WILDCARD_CHAR   EQU $2A
DEF_SEPAR_CHAR1     EQU $5C
DEF_SEPAR_CHAR2     EQU $2F

; CH376S Commands
CH_CMD_RD_VAR8        EQU $0A     ; Read 8Bit Value
CH_CMD_WR_VAR8        EQU $0B     ; Write 8Bit Value to controller
CH_CMD_RD_VAR32       EQU $0C     ; Read 32Bit Value
CH_CMD_WR_VAR32       EQU $0D
CH_CMD_SET_MODE       EQU $15     ; Set the Controller's mode, in our Case in SDCARD

CH_CMD_GET_STATUS     EQU $22     ; Get Interrupt Status
CH_CMD_RD_DATA0       EQU $27     ;
CH_CMD_SET_FILENAME   EQU $2F     ;SET_FILE_NAME
CH_CMD_DISK_MOUNT     EQU $31     ;DISK_MOUNT
CH_CMD_FILE_OPEN      EQU $32     ;FILE_OPEN
CH_CMD_FILE_ENUM_GO   EQU $33
CH_CMD_FILE_CLOSE     EQU $36     ; To be Implemented
CH_CMD_BYTE_LOCATE    EQU $39
CH_CMD_BYTE_READ      EQU $3A
CH_CMD_BYTE_RD_GO     EQU $3B
CH_CMD_BYTE_WRITE     EQU $3C
CH_CMD_BYTE_WR_GO     EQU $3D

; Varial When Reading 8Bits or 32Bits Values From controller
CH_VAR_DISK_ROOT		  EQU $44
CH_VAR_DSK_TOTAL_CLUS	EQU $48
CH_VAR_DSK_START_LBA	EQU $4C
CH_VAR_DSK_DAT_START	EQU $50
CH_VAR_LBA_BUFFER		  EQU $54
CH_VAR_LBA_CURRENT		EQU $58
CH_VAR_FAT_DIR_LBA		EQU $5C
CH_VAR_START_CLUSTER	EQU $60
CH_VAR_CURRENT_CLUST	EQU $64
CH_VAR_FILE_SIZE		  EQU $68
CH_VAR_CURRENT_OFFSET	EQU $6C


; Interruption state in SD card
CH376S_STAT_SUCCESS  EQU $14
CH376S_STAT_BUF_OVF  EQU $17
CH376S_STAT_DSK_RD   EQU $1D
CH376S_STAT_DSK_WR   EQU $1E
; File system notice code in SD card
CH376S_ERR_OPEN_DIR  EQU $41
CH376S_ERR_MISS_FIL  EQU $42
CH376S_ERR_FND_NAME  EQU $43
;File system error code in SD card
CH376S_ERR_DISK_DSC  EQU $82
CH376S_ERR_LRG_SEC   EQU $84
CH376S_ERR_PARTTION  EQU $92
CH376S_ERR_NOT_FORM  EQU $A1
CH376S_ERR_DSK_FULL  EQU $B1
CH376S_FDT_OVER      EQU $B2
CH376S_FILE_CLOSED   EQU $B4

SDCARD_PRSNT_NO_CARD EQU $00
SDCARD_PRSNT_CD      EQU $01
SDCARD_PRSNT_WP      EQU $02
SDCARD_PRSNT_MNTED   EQU $04  ; Card is present and Mounted1
