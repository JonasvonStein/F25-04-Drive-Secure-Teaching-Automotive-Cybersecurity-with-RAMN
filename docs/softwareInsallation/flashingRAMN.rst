.. _flashingRAMN:

Flashing the RAMN
===============

To flash the RAMN, follow the `Flashing Scripts Section <https://ramn.readthedocs.io/en/latest/hardware/Fabrication/flashing.html#flashing-scripts>`_.

Firmware Flashing Troubleshooting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When flashing the RAMN board, we have run into an issue, where sometimes the board will exit bootloader
mode and enter DFU mode. We are not sure why this happens, but the problem is that the board is not
recognized by our computers, and the device did not show up in the COM ports of our Device Manager.
Another telltale sign of this problem is that the LCD screen will be powered on but will remain black.
Follow the steps below to reclaim your RAMN board from any mistakes that were made.
We highly recommend using the debugger to reflash all four ECUs anytime after you initially flash the
board with the .bat files.  

1. Insert the debugger expansion into ECU A pin header, overhanging the edge of the board (not over the microcontroller)
2. Plug the ST-LINK/V2 JTAG Debugger into the Debugger expansion board. 
3. Open the STM32CubeProgrammer program and select “ST-LINK” in the top-right menu, then click “Connect”. You may be prompted about a debugger firmware update first. If connecting fails, try using the same settings as those in the screenshot below. Also, try setting ‘Shared: Enabled’ and _then_ clicking the refresh (🔁) button next to the serial drop-down box.
4. Click the “Erasing & Programming icon” in the left pane (second icon from the top).
5. Click “Browse”, select the firmware file (ECUA.hex file for your ECU), check “Verify programming” and “Run after programming”, then click “Start Programming”.
6. Wait for the flashing process to finish.
7. Continue flashing in your normal preferred way, via Windows or Linux, to flash the remaining ECUS.
