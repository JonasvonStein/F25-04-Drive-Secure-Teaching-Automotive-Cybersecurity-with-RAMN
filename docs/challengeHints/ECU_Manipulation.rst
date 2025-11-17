.. _ECU_Manipulation_Hints:

ECU Manipulation Challenge Hints
===================================

Tutorial (Beginner)
^^^^^^^^^^^^^^^^^^^

REQUIREMENTS:

- RAMN system
- RAMN repository
- Linux VM or Local machine with can-utils

First, we will start by attaching all of the expansion pods to the RAMN main board, and plugging the system into our laptop.  Once that is complete, you will want to find what the kernel recognizes the RAMN board as:
Use this command to find the name of the RAMN on your machine
.. code-block:: console

    $ sudo dmesg | grep ttyACM*	

Next, you will want to set up a network so that you can read and send data in the RAMN system. The naming of this is not important, but for it to work with the CARLA simulation you will have to edit the name of the network in a different program file (in Advanced tutorial below).
.. code-block:: console

    $ sudo slcand -o -c /dev/ttyACM0 && sudo ip link set up can0


Ensure can0 (or whatever name you chose) is showing as a network with this command:
.. code-block:: console

    $ Ifconfig


Then you can do a candump from 7e0 to 7F0 values as these are the values for ECU B.
.. code-block:: console

    $ candump can0,7e0:7F0

This will leave you with a blank terminal, but will populate with can frames as we manipulate them later on.

In a new terminal window, utilize the following command that will echo your sent message and show the response,
7e1 is where ECU B accepts commands, and 7e9 is where ECU B answers (-s is source, -d is destination):
.. code-block:: console

    $ isotpdump -s 7e1 -d 7e9 -c -u -a can0

In another new terminal, utilize this command that will show the sent message and response from ECU B,
as well as verbose output, showing in english instead of HEX what is sent and received:
.. code-block:: console

    $ isotprecv -s 7e1 -d 7e9 -l can0

In a third new terminal window, we will send the tester present command to let ECU B know that it should be listening for commands:
.. code-block:: console

    $ echo "3E 00" | isotpsend -s 7e1 -d 7e9 can0

In-Depth Hints:
^^^^^^^^^^^^^^^


Step by Step
^^^^^^^^^^^^




