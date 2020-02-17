; Joystick Ports
JOYSTICK0     EQU $AFE800  ;(R) Joystick 0 - J7 (Next to Buzzer)
JOYSTICK1     EQU $AFE801  ;(R) Joystick 1 - J8
JOYSTICK2     EQU $AFE802  ;(R) Joystick 2 - J9
JOYSTICK3     EQU $AFE803  ;(R) Joystick 3 - J10 (next to SD Card)
; Dip switch Ports
DIPSWITCH     EQU $AFE804  ;(R) $AFE804...$AFE807
; SD Card CH376S Port
SDCARD_DATA   EQU $AFE808  ;(R/W) SDCARD (CH376S) Data PORT_A (A0 EQU 0)
SDCARD_CMD    EQU $AFE809  ;(R/W) SDCARD (CH376S) CMD/STATUS Port (A0 EQU 1)
; SD Card Card Presence / Write Protect Status Reg
SDCARD_STAT   EQU $AFE810  ;(R) SDCARD (Bit[0] EQU CD, Bit[1] EQU WP)
; Audio WM8776 CODEC Control Interface (Write Only)
CODEC_DATA_LO EQU $AFE820  ;(W) LSB of Add/Data Reg to Control CODEC See WM8776 Spec
CODEC_DATA_HI EQU $AFE821  ;(W) MSB od Add/Data Reg to Control CODEC See WM8776 Spec
CODEC_WR_CTRL EQU $AFE822  ;(W) Bit[0] EQU 1 -> Start Writing the CODEC Control Register
