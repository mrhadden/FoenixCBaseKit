.include "VKYII_CFP9553_SDMA_def.asm"

* = $3B4000
SS_SDMA_TRANSFER_1D_SRAM_2_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( SDMA_CTRL0_Enable )
        STA @l SDMA_CTRL_REG0
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$00
        STA @l SDMA_BYTE_2_WRITE
        setal
        LDA #$2000      ; Set up the Source
        STA @l SDMA_SRC_ADDY_L
        setas
        LDA #$02
        STA @l SDMA_SRC_ADDY_H

        setal
        LDA #$3000      ; Set up the Source
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #$03
        STA @l SDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #$0020
        STA @l SDMA_SIZE_L
        setas
        LDA #$00
        STA @l SDMA_SIZE_H
        LDA #$00
        STA @l SDMA_SIZE_H+1 ; Just making sure there is no spurious data in the next register

        ; Begin Transfer
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        RTL
        .pend
;
;
SS_SDMA_TRANSFER_1D_SRAM_2_LUT .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( SDMA_CTRL0_Enable )
        STA @l SDMA_CTRL_REG0
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$00
        STA @l SDMA_BYTE_2_WRITE
        setal
        LDA #<>SS_SPLASH_SCREEN_LUT      ; Set up the Source
        STA @l SDMA_SRC_ADDY_L
        setas
        LDA #`SS_SPLASH_SCREEN_LUT
        STA @l SDMA_SRC_ADDY_H

        setal
        LDA #<>GRPH_LUT1_PTR     ; Set up the Source
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #`GRPH_LUT1_PTR
        STA @l SDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #1024
        STA @l SDMA_SIZE_L
        setas
        LDA #$00
        STA @l SDMA_SIZE_H
        LDA #$00
        STA @l SDMA_SIZE_H+1 ; Just making sure there is no spurious data in the next register

        ; Begin Transfer
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        RTL
        .pend

SS_SDMA_TRANSFER_1D_SRAM_2_TEXTMEMORY .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        ; Turn Off Border
        LDA #$00
        STA BORDER_CTRL_REG

        LDA #( SDMA_CTRL0_Enable | SDMA_CTRL0_TRF_Fill  )
        STA @l SDMA_CTRL_REG0
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$43
        STA @l SDMA_BYTE_2_WRITE

        setal
        LDA #<>CS_TEXT_MEM_PTR     ; Set up the Source
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #`CS_TEXT_MEM_PTR
        STA @l SDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #<>(80 * 60)
        STA @l SDMA_SIZE_L
        LDA #`(80 * 60)
        STA @l SDMA_SIZE_H
        setas
        LDA #$00
        STA @l SDMA_IGNORED
        ; Begin Transfer
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        RTL
        .pend

SS_SDMA_FILL_1D_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( SDMA_CTRL0_Enable | SDMA_CTRL0_TRF_Fill )
        STA @l SDMA_CTRL_REG0
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$AA
        STA @l SDMA_BYTE_2_WRITE
        setal
        LDA #$A000      ; Set up the Source
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #$AF
        STA @l SDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #$0020
        STA @l SDMA_SIZE_L
        setas
        LDA #$00
        STA @l SDMA_SIZE_H
        LDA #$00
        STA @l SDMA_SIZE_H+1 ; Just making sure there is no spurious data in the next register

        ; Begin Transfer
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        RTL
        .pend
;
SS_SDMA_TRANSFER_2D_SRAM_2_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( SDMA_CTRL0_Enable | SDMA_CTRL0_1D_2D )
        STA @l SDMA_CTRL_REG0
        setal
        LDA #$A000      ; Set up the Source (text memory)
        STA @l SDMA_SRC_ADDY_L
        setas
        LDA #$AF
        STA @l SDMA_SRC_ADDY_H

        setal
        LDA #$A000      ; Set up the Source
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #$01
        STA @l SDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #80
        STA @l SDMA_X_SIZE_L
        LDA #60
        STA @l SDMA_Y_SIZE_L

        LDA #80
        STA @l SDMA_SRC_STRIDE_L
        STA @l SDMA_DST_STRIDE_L

        setas
        ; Begin Transfer
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        RTL
        .pend
;
;
SS_SDMA_FILL_2D_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( SDMA_CTRL0_Enable | SDMA_CTRL0_TRF_Fill | SDMA_CTRL0_1D_2D)
        STA @l SDMA_CTRL_REG0
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$CC
        STA @l SDMA_BYTE_2_WRITE
        setal
        LDA #$3000      ; Set up the Source
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #$03
        STA @l SDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #$0020
        STA @l SDMA_X_SIZE_L
        LDA #$0002
        STA @l SDMA_Y_SIZE_L
        LDA #$0000
        STA @l SDMA_SRC_STRIDE_L
        LDA #$0040
        STA @l SDMA_DST_STRIDE_L
        setas
        ; Begin Transfer
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        RTL
        .pend
;
; VDMA Transfer
SS_VDMA_TRANSFER_1D_VRAM_2_VRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( VDMA_CTRL_Enable )
        STA @l VDMA_CONTROL_REG
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$00
        STA @l VDMA_BYTE_2_WRITE
        setal
        LDA #$FA00      ; Set up the Source
        STA @l VDMA_SRC_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_SRC_ADDY_H

        setal
        LDA #$0000      ; Set up the Source
        STA @l VDMA_DST_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #$1400
        STA @l VDMA_SIZE_L
        setas
        LDA #$00
        STA @l VDMA_SIZE_H
        LDA #$00
        STA @l VDMA_SIZE_H+1 ; Just making sure there is no spurious data in the next register

        ; Begin Transfer
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time

        ; Begin Transfer
SS_VDMA_CLR_LOOP1:
        LDA @l VDMA_STATUS_REG
        AND #$80
        CMP #$80  ; Check if bit $80 is cleared to indicate that the VDMA is done.
        BEQ SS_VDMA_CLR_LOOP1
        NOP
        LDA #$00
        STA @l VDMA_CONTROL_REG
        RTL
        .pend
;
;
; VDMA Transfer
SS_VDMA_TRANSFER_2D_VRAM_2_VRAM .proc
        setas
        LDA #( VDMA_CTRL_Enable | VDMA_CTRL_1D_2D )
        STA @l VDMA_CONTROL_REG
        setal
        LDA #$0000      ; Set up the Source
        STA @l VDMA_SRC_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_SRC_ADDY_H

        setal
        LDA #$90A0     ; Set up the Source
        STA @l VDMA_DST_ADDY_L
        setas
        LDA #$01
        STA @l VDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #320
        STA @l VDMA_X_SIZE_L
        LDA #240
        STA @l VDMA_Y_SIZE_L
        LDA #640
        STA @l VDMA_SRC_STRIDE_L
        LDA #640
        STA @l VDMA_DST_STRIDE_L

        ; Begin Transfer
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time

        ; Begin Transfer
SS_VDMA_CLR_LOOP1:
        LDA @l VDMA_STATUS_REG
        AND #$80
        CMP #$80  ; Check if bit $80 is cleared to indicate that the VDMA is done.
        BEQ SS_VDMA_CLR_LOOP1
        NOP
        LDA #$00
        STA @l VDMA_CONTROL_REG
        RTL
        .pend
;


SS_VDMA_FILL_1D_VRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( VDMA_CTRL_Enable | VDMA_CTRL_TRF_Fill )
        STA @l VDMA_CONTROL_REG
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$AA
        STA @l VDMA_BYTE_2_WRITE
        setal
        LDA #$0000      ; Set up the Source
        STA @l VDMA_DST_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #$0100
        STA @l VDMA_SIZE_L
        setas
        LDA #$00
        STA @l VDMA_SIZE_H
        LDA #$00
        STA @l VDMA_SIZE_H+1 ; Just making sure there is no spurious data in the next register

        ; Begin Transfer
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time

SS_VDMA_CLR_LOOP1:
        LDA @l VDMA_STATUS_REG
        AND #$80
        CMP #$80  ; Check if bit $80 is cleared to indicate that the VDMA is done.
        BEQ SS_VDMA_CLR_LOOP1
        NOP
        LDA #$00
        STA @l VDMA_CONTROL_REG
        RTL
.pend

SS_VDMA_FILL_2D_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( VDMA_CTRL_Enable | VDMA_CTRL_TRF_Fill | VDMA_CTRL_1D_2D)
        STA @l VDMA_CONTROL_REG
        ; This is the Address of Destination inside VRAM (this VICKY II offset)
        LDA #$47
        STA @l VDMA_BYTE_2_WRITE
        setal
        LDA #$0000      ; Set up the Destination
        STA @l VDMA_DST_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #328
        STA @l VDMA_X_SIZE_L
        LDA #248
        STA @l VDMA_Y_SIZE_L
        LDA #$0000
        STA @l VDMA_SRC_STRIDE_L
        LDA #0640
        STA @l VDMA_DST_STRIDE_L
        setas
        ; Begin Transfer
        ; Begin Transfer
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time

SS_VDMA_CLR_LOOP1:
        LDA @l VDMA_STATUS_REG
        AND #$80
        CMP #$80  ; Check if bit $80 is cleared to indicate that the VDMA is done.
        BEQ SS_VDMA_CLR_LOOP1
        NOP
        LDA #$00
        STA @l VDMA_CONTROL_REG
        RTL
        .pend
;
SS_VDMA_TRANSFER_2D_SRAM_2_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        LDA #( VDMA_CTRL_Enable | VDMA_CTRL_1D_2D )
        STA @l VDMA_CONTROL_REG
        setal
        LDA #$0000      ; Set up the Source
        STA @l VDMA_SRC_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_SRC_ADDY_H

        setal
        LDA #$58A0      ; Set up the Source
        STA @l VDMA_DST_ADDY_L
        setas
        LDA #$02
        STA @l VDMA_DST_ADDY_H

        ; This is the Size of the Transfer
        setal
        LDA #320
        STA @l VDMA_X_SIZE_L
        LDA #240
        STA @l VDMA_Y_SIZE_L

        LDA #$0280
        STA @l VDMA_SRC_STRIDE_L
        STA @l VDMA_DST_STRIDE_L

        setas
        ; Begin Transfer
        ; Begin Transfer
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time

SS_VDMA_CLR_LOOP2:
        LDA @l VDMA_STATUS_REG
        AND #$80
        CMP #$80  ; Check if bit $80 is cleared to indicate that the VDMA is done.
        BEQ SS_VDMA_CLR_LOOP2
        NOP
        LDA #$00
        STA @l VDMA_CONTROL_REG
        RTL

        .pend
;
SS_VDMA_TRANSFER_1D_SRAM_2_VRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        ; SDMA Master Control
        ; Source
        LDA #( SDMA_CTRL0_Enable | SDMA_CTRL0_SysRAM_Src )
        STA @l SDMA_CTRL_REG0
        ; VDMA Master Control
        ; Destination
        LDA #( VDMA_CTRL_Enable |  VDMA_CTRL_SysRAM_Src | VDMA_CTRL_1D_2D )
        STA @l VDMA_CONTROL_REG
        ; Set the Source Address in the SDMA Controller
        ; The Address set here is relative from $00:0000 - $3F:FFFF in SRAM
        setal
        LDA #<>SS_SPLASH_SCREEN      ; Set up the Source 381000
        STA @l SDMA_SRC_ADDY_L
        setas
        LDA #`SS_SPLASH_SCREEN
        STA @l SDMA_SRC_ADDY_H
        ; Set the Destination Address in the VDMA Controller
        ; The Address set here is relative from $00:0000 - $3F:FFFF in VRAM
        setal
        LDA #$0000      ; Set up the Source
        STA @l VDMA_DST_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_DST_ADDY_H
        ; Set the X and Y Size (it is a 2D Transfer) in SDMA and VDMA
        ; This is the Size of the Transfer
        ; They always need to be the SAME (if both Size are not the same, it will lock out the system)
        setal
        LDA #$2C00
        STA @l SDMA_SIZE_L
        LDA #$0001
        STA @l SDMA_SIZE_H

        LDA #320
        STA @l VDMA_X_SIZE_L
        LDA #240
        STA @l VDMA_Y_SIZE_L

        ; Well, the Stride for SRC and DST can be different (in this case they will be the same)
        LDA #$0000
        STA @l SDMA_SRC_STRIDE_L  ; Set the Source Stride in SDMA

        LDA #320
        STA @l VDMA_DST_STRIDE_L  ; Set the Destination Stride in the VDMA
        setas
        ; Begin Transfer
        ; Start the VDMA Controller First
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        ; Then, Start the SDMA Controller Second (Since the SDMA will lock the CPU while it is doing its job)
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        STA @l VDMA_CONTROL_REG
        RTL
        .pend
;
SS_VDMA_TRANSFER_2D_VRAM_2_SRAM .proc
        ;; This is the Source Address of the Data inside the SRAM Mem (this CPU offset)
        setas
        ; SDMA Master Control
        ; Source
        LDA #( SDMA_CTRL0_Enable | SDMA_CTRL0_SysRAM_Dst )
        STA @l SDMA_CTRL_REG0
        ; VDMA Master Control
        ; Destination
        LDA #( VDMA_CTRL_Enable |  VDMA_CTRL_SysRAM_Dst | VDMA_CTRL_1D_2D )
        ;LDA #( VDMA_CTRL_Enable |  VDMA_CTRL_SysRAM_Dst )
        STA @l VDMA_CONTROL_REG
        ; Set the Source Address in the VDMA Controller
        ; The Address set here is relative from $00:0000 - $3F:FFFF in VRAM
        setal
        LDA #$0000      ; Set up the Source
        STA @l VDMA_SRC_ADDY_L
        setas
        LDA #$00
        STA @l VDMA_SRC_ADDY_H
        setal
        LDA #$0008
        STA @l VDMA_X_SIZE_L
        LDA #$0008
        STA @l VDMA_Y_SIZE_L
        ; Set the Destination Address in the SDMA Controller
        ; The Address set here is relative from $00:0000 - $3F:FFFF in SRAM
        setal
        LDA #$8000      ; Set up the Source 381000
        ;LDA #$1000     ; Set up the Source 381000
        STA @l SDMA_DST_ADDY_L
        setas
        LDA #$00
        ;LDA #$38
        STA @l SDMA_DST_ADDY_H
        setal
        LDA #$0040
        STA @l SDMA_SIZE_L
        LDA #$0000
        STA @l SDMA_SIZE_H

        ; Well, the Stride for SRC and DST can be different (in this case they will be the same)
        LDA #640
        STA @l VDMA_SRC_STRIDE_L  ; Set the Source Stride in VDMA
        STA @l VDMA_DST_STRIDE_L  ; Set the Destination Stride in the SDMA

        setas
        ; Begin Transfer
        ; Start the VDMA Controller First
        LDA VDMA_CONTROL_REG
        ORA #VDMA_CTRL_Start_TRF
        STA @l VDMA_CONTROL_REG
        ; Then, Start the SDMA Controller Second (Since the SDMA will lock the CPU while it is doing its job)
        LDA SDMA_CTRL_REG0
        ORA #SDMA_CTRL0_Start_TRF
        STA @l SDMA_CTRL_REG0
        NOP ; When the transfer is started the CPU will be put on Hold (RDYn)...
        NOP ; Before it actually gets to stop it will execute a couple more instructions
        NOP ; From that point on, the CPU is halted (keep that in mind) No IRQ will be processed either during that time
        NOP
        NOP
        LDA #$00
        STA @l SDMA_CTRL_REG0
        STA @l VDMA_CONTROL_REG
        RTL
        .pend
