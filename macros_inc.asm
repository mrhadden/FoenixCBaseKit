; Set 8-bit accumulator
setaxs          .macro
                SEP #$30        ; set A&X short
                LONGA OFF
                LONGI OFF 
                .endm
                
; Set 16-bit accumulator
setaxl          .macro
                REP #$30        ; set A&X long 
                LONGA ON
                LONGI ON
                .endm

; Set 8-bit accumulator
setas           .macro
                SEP #$20        ; set A short 
                LONGA OFF
                .endm
                
; Set 16-bit accumulator
setal           .macro
                REP #$20        ; set A long 
                LONGA ON
                .endm

; Set 8 bit index registers               
setxs           .macro
                SEP #$10        ; set X short 
                LONGI OFF
                .endm
                
; Set 16-bit index registers
setxl           .macro
                REP #$10        ; set X long 
                LONGI ON
                .endm

; Set the direct page. 
; Note: This uses the accumulator and leaves A set to 16 bits. 
setdp           .macro                
                PHA             ; begin setdp macro 
	PHP
                setal
                LDA #\1         ; set DP to page 0
                TCD             
                .dpage \1
	PLP
                PLA             ; end setdp macro 
                .endm 

setdbr          .macro          ; Set the B (Data bank) register 
                PHA             ; begin setdbr macro 
                PHP
                setas
	LDA #\1         
                PHA
                PLB
                .databank \1
                PLP
                PLA             ; end setdbr macro 
                .endm 

