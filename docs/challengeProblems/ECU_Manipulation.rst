.. _ECU_Manipulation:

ECU Manipulation Challenge
==========================

Learning Objectives
^^^^^^^^^^^^^^^^^^^

The learning objectives for this challenge are to:

- asd
- asd

Overview of Challenge
^^^^^^^^^^^^^^^^^^^^^

This is most easily done on a Linux system, you may use a virtual or local machine with can-utils installed.
To have this interact with CARLA for a visual output, you will need to follow the instructions below the tutorial.

ECU Manipulation can be used to control the physical inputs on the RAMN without utilizing the physical components
on the expansion pods. This will give a step by step setup for manipulating the components on ECU B so that you may
replicate this process on the other ECUs. 

*Note that the outcomes of ECU Manipulation are not well-documented and some outcomes may result in the need
of resetting the board.*

We will be using the commands from section 2.0, specifically sending UDS commands.
These commands will allow you to disable an ECU so that the CAN frames are not constantly being updated by the ECU,
then you will be able to inject CAN frames via the command line or script using python to loop and send commands
to the command line. This attack can be utilized to control certain aspects of a car while someone is driving.

In our case, we have to have a physical connection to the RAMN system, but this has been done in real-world scenarios
where wireless connectivity is an option. In the future, there may be an expansion for the RAMN system that allows
wireless interaction.


Challenge
^^^^^^^^^

- Beginner:
    - Utilize UDS commands to disable an ECU.
    - Spoof values for a physical component on the ECU you disabled.
        - Environment: RAMN System, RAMN Repository, Linux VM or local machine with can-utils installed.
- Intermediate:
    - Write a python script to craft CAN Frame packets to spoof values for a physical input on the RAMN system.
        - Environment: RAMN System, RAMN Repository, Linux VM or local machine with can-utils installed, Python (3.7 recommended)
- Advanced:
    - Utilize packet crafting and spoofing to hack a simulated automobile on CARLA.
        - Environment: RAMN System, RAMN Repository, Ubuntu 22.04 Linux local machine with can-utils, pygame, numpy, Python (3.7 recommended), CARLA 0.9.12

*Tutorials are in the hints section if needed and are strongly suggested*
