;
STATUS_PORT 	         EQU 	$AF1064
KBD_OUT_BUF 	         EQU 	$AF1060
KBD_INPT_BUF	         EQU  $AF1060
KBD_CMD_BUF		         EQU  $AF1064
KBD_DATA_BUF	         EQU  $AF1060
PORT_A			           EQU 	$AF1060
PORT_B			           EQU 	$AF1061

; Status
OUT_BUF_FULL   EQU 	$01
INPT_BUF_FULL	 EQU 	$02
SYS_FLAG		   EQU 	$04
CMD_DATA		   EQU 	$08
KEYBD_INH      EQU 	$10
TRANS_TMOUT	   EQU 	$20
RCV_TMOUT		   EQU 	$40
PARITY_EVEN		 EQU 	$80
INH_KEYBOARD	 EQU 	$10
KBD_ENA			   EQU 	$AE
KBD_DIS			   EQU 	$AD

; Keyboard Commands
KB_MENU			   EQU 	$F1
KB_ENABLE		   EQU 	$F4
KB_MAKEBREAK   EQU 	$F7
KB_ECHO			   EQU 	$FE
KB_RESET		   EQU 	$FF
KB_LED_CMD		 EQU 	$ED

; Keyboard responses
KB_OK			     EQU 	$AA
KB_ACK			   EQU 	$FA
KB_OVERRUN		 EQU 	$FF
KB_RESEND		   EQU 	$FE
KB_BREAK		   EQU 	$F0
KB_FA			     EQU 	$10
KB_FE			     EQU 	$20
KB_PR_LED		   EQU 	$40
