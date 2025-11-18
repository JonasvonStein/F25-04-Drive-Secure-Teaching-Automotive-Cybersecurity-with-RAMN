.. _Using_RAMN:

Using the RAMN Board
====================

Viewing CAN traffic with Linux
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Open a terminal window (e.g., right-click the desktop and click “Open Terminal here”).
- Type the following commands to install can-utils:

.. code-block:: console

    $ sudo apt-get update

.. code-block:: console

    $ sudo apt-get install can-utils

USB Connection
^^^^^^^^^^^^^^

Connect your board to your computer using a USB cable. On Windows, it should appear as a “USB Serial Device”
(or Composite Device) and be attributed a COM port number (e.g., COM1). If that is not the case, you may need
to install STM32 Virtual COM Port Drivers.

Once the board is recognized by Windows, you must forward the USB port to VirtualBox.
Select Devices > USB and click Toyota Motor Corporation RAMN. You can open Devices > USB > USB Settings…,
then click the + icon to add RAMN so that Virtual Box will always automatically forward the USB port.

On Linux, RAMN should appear at the end of the dmesg command, and be attributed a device file (typically, /dev/ttyACM0).

Starting slcand
^^^^^^^^^^^^^^^

By default, RAMN acts as an SLCAN adapter. You can use the slcand command to start RAMN as a native Linux CAN interface.

.. code-block:: console

    $ sudo slcand -o -c /dev/ttyACM0 && sudo ip link set up can0

Replace /dev/ttyACM0 by the device file that was attributed by your computer.

After executing this command, you should be able to see the CAN interface as “can0” using ifconfig:

.. code-block:: console

    $ ifconfig
