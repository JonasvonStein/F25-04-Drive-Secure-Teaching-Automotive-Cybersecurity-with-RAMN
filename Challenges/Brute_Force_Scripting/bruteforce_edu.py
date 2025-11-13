# bruteforce_edu.py — brute force script going through &00000..&99999
import serial, time, sys

PORT = "???"        # change to the port you are using!!!
BAUD = 9600	    # change to the baudrate your device uses!!!
LE = b"\r\n"        # CRLF (Windows), if macOS/linux try b"\n" if needed
DELAY = ???         # change to 0.001..0.1 based on your device speed, make sure no numbers are being skipped

try:
    s = serial.Serial(PORT, BAUD, timeout=1)
except Exception as e:
    print("Can't open port:", e); sys.exit(1)

try:
    for i in range(???): # up to what number should you look to???
        cmd = f"&{i:0?d}".encode() # what should the number of digits be when looking for the password???
        s.write(cmd + LE)
        time.sleep(DELAY)
        raw = s.read_all()
        if raw:
            text = raw.decode(errors="replace").strip()
            print(f"{cmd.decode()} -> {text}")
            if "???" not in text.upper(): # what word can be used when checking to see if the password does not work if the output when it doesn't work is "Wrong Password"???
                print("FOUND:", cmd.decode(), "->", text)
                break
finally:
    s.close()
