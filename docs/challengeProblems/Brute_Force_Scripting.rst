.. _Brute_Force_Scripting:

Brute Force Scripting Challenge
===============================

This page contains the brute force scripting challenge.

Learning Objectives
===================

The learning objectives for this challenge are to
- Be able to connect with the RAMN over USB
- Learn how to write a Python script


Overview of Challenge
=====================
The purpose of brute forcing is to test many password combinations at a very high speed.
Brute forcing is effective against weak passwords or poorly secured systems.
Brute forcing allows hackers to gain unauthorized access to systems or data.

This way of hacking has been used to hack into automotive vehicles by rapidly putting in a 4-digit passcode and by
rapidly testing rolling codes used by keyless entry systems.
We will be using this technique to find a flag in the RAMN by testing every password combination possible. 

Challenge
=========
USB Challenge: A flag is accessible by sending the command “&” and a five-digit numerical password (e.g., “&12345”).

What's needed to make and run the script:
- Python file
- Command prompt

This challenge will need to be solved by using a brute force script because the only information given is how the password
is formatted, so the only way to find the flag is by going through all the possible passwords. To make a brute force script,
you will need to do it in some kind of Python application (we used Notepad).  You will also need to have the RAMN connected
to your device. Another thing that is important in creating the script is trying to type in a password in TeraTerm to see
what the RAMN outputs and using that to help in making your code.
