.. _softwareInsallation:

Software Installation Guides
============================

This section details how to download the necessary software.

- STM32CubeProgrammer: Necessary for firmware flashing and board debugging/reset.
- RAMN GitHub Repository: Necessary for CAN interaction, CARLA integration, and UDS Commands.
- Linux VM / VirtualBox: Necessary for interacting via canutils, the easiest way to interact with the RAMN without third-party software.
- Ubuntu Linux version 22.04: Necessary for CARLA output for ECU Manipulation, can also replace Linux VM as a native environment.
- CARLA: Necessary to visualize RAMN output, and to understand the physical controls of the RAMN.


.. toctree::
   :maxdepth: 3

  softwareInsallation/flashingRAMN
  softwareInsallation/TeraTerm
  softwareInsallation/CARLA
  softwareInsallation/Linux

