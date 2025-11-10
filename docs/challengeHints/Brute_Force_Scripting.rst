.. _Brute_Force_Scripting_Hints:

Brute Force Scripting Challenge Hints
=====================================

Getting Started
^^^^^^^^^^^^^^^

1. Set the necessary initial values
2. Next, try to open the serial port
3. Find a way to find the password
4. Close the serial port

In-Depth Hints:
^^^^^^^^^^^^^^^

1. For 1, the initial values I had were Port, Baud, LE (bytes sent at the end of the command (I use Windows and my LE = b"\r\n")(For macOS/Linux it should be b"\n")), and Delay
2. For 4, I first tried some passwords on TeraTerm with the RAMN to see what it outputs to help with making the script

Step by Step
^^^^^^^^^^^^

How the Brute Force Flag should be found:

- Use Teraterm to know what COM port and baud rate to look at
- Create a script that will brute force through every password at the correct COM port and baud rate to see if something else is returned instead of “Wrong password.”
- Run the script in the command prompt to find the password and input it into TeraTerm if needed to find the flag.

