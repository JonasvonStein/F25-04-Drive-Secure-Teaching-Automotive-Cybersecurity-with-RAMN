.. _flashingRAMN:

Flashing the RAMN
===============

To flash the RAMN follow the `Flashing Scripts Section <https://ramn.readthedocs.io/en/latest/hardware/Fabrication/flashing.html#flashing-scripts>`_.

Firmware Flashing Troubleshooting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When flashing the RAMN board, we have run into the issue that sometimes it may exit bootloader mode and enter DFU mode.
We are not sure what causes this but we had the trouble of the board not being recognized by our computers and not
showing up in the COM ports of our devices. Another telltale sign of this is that the LCD screen will be powered
on but will remain black, and not output anything, no matter what inputs are made. Follow the below steps to reclaim
your RAMN board from the depths of hell.

1. Insert debugger expansion into ECU A pin header, overhanging the edge of the board (not over the microcontroller)
2. Plug ST-LINK/V2 JTAG Debugger into the Debugger expansion board. 
3. Open STM32CubeProgrammer program and select “ST-LINK” in the top-right menu, then click “Connect”. You may be prompted about a debugger firmware update first. If connecting fails, try using the same settings as those in the screenshot below. Also try setting ‘Shared: Enabled’ and _then_ clicking the refresh (🔁) button next to the serial drop-down box.
4. Click the “Erasing & Programming icon” in the left pane (second icon from the top).
5. Click “Browse”, select the firmware file (ECUA.hex file for your ECU), check “Verify programming” and “Run after programming”, then click “Start Programming”.
6. Wait for the flashing process to finish.
7. Continue Flashing in your normal preferred way, via windows or linux to flash the remaining ECUS.
