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

REQUIREMENTS:

- RAMN System
- RAMN Repository
- Python (3.7 recommended)

Now, these values worked on the RAMN system, but on a real automobile, this would not work.
These individual frames that are sent are not complete frames, a CAN frame is made up of 16 bytes,
here we only sent 2 or 4 bytes of information, which wouldn’t be enough. They will not be recognized
because they do not match the clock of the RAMN system either. In order to truly spoof these values
we would need to utilize packet crafting, and some scripting using python.

When using the candump command we can find out what values are being changed by interacting with the
physical component and observe the ID of the physical component as well as which bytes are changing due
to the user input. Most likely the first 4 bytes will be controlled by the analog to digital converter,
and will be the values that you will change for spoofing. We will then want to craft a packet with the
bytes we are spoofing, like the 0x0FFF hex value for 100% right on the steering, as well as the tail
bytes which enable communication across the CAN bus. 

The tail bytes seem to be somewhat arbitrary, but they must be present for the CAN frame to be valid,
I copied these bytes from an arbitrary steering (ID 0x062) frame:

.. image:: /img/ECU_Manipulation_Tail_Bytes.png
   :align: center
   :scale: 100%

Then you can craft the packet where the variable “val” will be whatever value you want to send,
and then craft the command to be sent to the command line.

.. image:: /img/ECU_Manipulation_Data_Bytes.png
   :align: center
   :scale: 100%

You can do all of this via the command line, but it is good to practice packet crafting utilizing
python as it can be used more in the future.

Try to write a python script to sweep the values of steering from left to right, if you need help
you can see ecu_control.py in our github, this will work to spoof the value of the steering, and
sweep back and forth, if you do not want the answer and want to figure it out on your own, do not
look at the solution. (Hint: the code snippets above are from ecu_control.py).


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
and create a bootable USB using `rufus <https://rufus.ie/>`_. There are many tutorials on this so I will not go in depth.
We recommend giving Ubuntu at least 100 GB to have ample room for your code and CARLA simulation.

Once you have Ubuntu running, you will need to clone the RAMN repository as well as download and install CARLA. 

Inside of the RAMN/scripts/utils we will find RAMN_Utils.py which we will need to modify lines 48 and 49.

.. image:: /img/ECU_Manipulation_Utils.png
   :align: center
   :scale: 100%

CAN_NAME = *name of whatever you name your network when you run:

.. code-block:: console

    $ sudo slcand -o -c /dev/ttyACM0 && sudo ip link set up can0

CAN_TYPE = “socketcan” - this will stay the same no matter what as long as you are using the RAMN system. 

If this does not work in later steps, you can change the values directly where they are referenced,
this is most likely the case as we could not get the variables to be referenced correctly.
In other words, you will most likely have to modify them in RAMN/scripts/carla/RAMN_Controller_CAN.py:

.. image:: /img/ECU_Manipulation_Controller_CAN.png
   :align: center
   :scale: 100%

In line 17, can.interface.Bus(“can0”, bustype = “socketcan”).

Now you will want to start your carla server, then in a new terminal navigate to RAMN/scripts/carla and run:

.. code-block:: console

    $ python3.7 RAMN_CARLA_Manual.py – CAN

This will allow you to interact with CARLA using the physical controls of the RAMN system as well as
manipulate the ECUs in a terminal window. You will do everything the same as the beginner and intermediate
tutorials, except you will now have a visual output.

**Utilize what you know to develop a script or attack on other ECUs and control a certain aspect of the vehicle.
This will show you how vulnerable automobiles can be and why we need to find ways to protect them.**
