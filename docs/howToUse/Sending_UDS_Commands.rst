.. _Sending_UDS_Commands:

Sending UDS Commands
====================

UDS is a set of standard diagnostic commands that can be sent using the ISO-TP transport layer.
You can use the isotpsend, isotprecv, and isotpdump commands to easily interact with these layers.
Type the following command to dump CAN messages containing UDS commands:

.. code-block:: console

    $ candump can0,7e0:7F0

This command will dump messages with IDs ranging from 0x7e0 to 0x7eF, which correspond to the IDs
used by the UDS layer of RAMN. It should show nothing now as no UDS messages are being sent.
Open another terminal, and type the following command:

.. code-block:: console

    $ isotpdump -s 7e1 -d 7e9 -c -u -a can0

This command will dump and parse UDS commands for ECU B, which accepts commands at ID 0x7e1 and answers at ID 0x7e9.
This command should also show nothing for now.
Open yet another terminal, and type the following command:

.. code-block:: console

    $ isotprecv -s 7e1 -d 7e9 -l can0

This command will receive and display the answers to the UDS commands that you send to ECU B.
Finally, open a fourth terminal and type the following command to send your first UDS command to ECU B:

.. code-block:: console

    $ echo "3E 00" | isotpsend -s 7e1 -d 7e9 can0

Notice that the source and destination arguments have been swapped from the previous command.
This command sends the 2-byte command “3E 00” to ECU B, which corresponds to the “Tester Present” command.
This is an optional command to let the ECU know that you are currently diagnosing it and that it should
wait for your commands. You should see on your “isotprecv” terminal that ECU B has answered “7E 00”,
which means the command was accepted. You can look at your “isotpdump” terminal and observe the corresponding
interaction in color (red is the request, blue is the answer). If you look at your “candump” terminal,
you will observe the corresponding CAN messages. Notice that they are actually 3-bytes long: this is because
the first byte is used to specify the length of the UDS payload, which is 2 bytes.
You can use UDS to send and receive large payloads. For example, use the “Read Data By Identifier” service (0x22)
to ask the ECU its compile time (argument 0xF184):

.. code-block:: console

    $ echo "22 F1 84" | isotpsend -s 7e1 -d 7e9 can0

You should see in your “isotprecv” terminal that you have received a large answer, which should be interpreted
by your “isotpdump” terminal. In your “candump” terminal, you can observe that many CAN messages have been exchanged.
This corresponds to the ISO-TP layer, which allows sending large messages using only CAN frames with less than 8 bytes each.
Isotpdump, isotpsend, and isotprecv make this layer transparent to you.
Finally, you can use RAMN custom routine controls (UDS service 0x31) to ask ECU B to stop sending CAN messages
(Routine 0x0200).

.. code-block:: console

    $ echo "31 01 02 00" | isotpsend -s 7e1 -d 7e9 can0

Move the lighting switch and observe how the LEDs of ECU D do not change anymore.
You can now control the lighting switch with the following commands, without ECU B being in your way.

.. code-block:: console

    $ cansend can0 150#02
    $ cansend can0 150#03
    $ cansend can0 150#04
    




