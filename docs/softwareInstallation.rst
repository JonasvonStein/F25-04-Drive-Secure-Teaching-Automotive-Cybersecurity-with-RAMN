.. _softwareInsallation:

Software Installation Guides
============================

This section details how to download the necessary software.

- STM32CubeProgammer: Necessary for firmware flashing and board debugging/reset.
- RAMN github Repository: Necessary for CAN interaction, CARLA integration, UDS Commands.
- Linux VM / VirtualBox: Necessary for interacting via canutils, easiest way to interact with the RAMN without third party software.
- Ubuntu Linux version 22.04: Necessary for CARLA output for ECU Manipulation, can also replace Linux VM as a native environment.
- CARLA: Necessary to visualize RAMN output, and to understand the physical controls of the RAMN.


.. toctree::
   :maxdepth: 3

  softwareInsallation/flashingRAMN
  softwareInsallation/TeraTerm
  softwareInsallation/CARLA
  softwareInsallation/Linux

