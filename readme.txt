

Find ports:

c256serial.bat --list


Example:


G:\devprojects\6502>c256serial.bat --ports
Port:COM1
        Desc  :Communications Port (COM1)[Serial0]
        Baud  :9600
        Data  :8
        Stop  :1
        Parity:0
        HS:0
Port:COM2
        Desc  :Communications Port (COM2)[Serial1]
        Baud  :9600
        Data  :8
        Stop  :1
        Parity:0
        HS:0
Port:COM23
        Desc  :XR21B1411 USB UART (COM23)[XR21B1411]
        Baud  :9600
        Data  :8
        Stop  :1
        Parity:0
        HS:0



Send Hex on PORT XR21B1411:

c256serial.bat -s28 G:\devprojects\6502\myprog.hex -p XR21B1411