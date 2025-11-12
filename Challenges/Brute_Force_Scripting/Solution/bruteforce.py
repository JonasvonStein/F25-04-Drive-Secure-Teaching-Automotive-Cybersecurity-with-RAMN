# bruteforce.py — brute force script going through &00000..&99999
import serial, time, sys

PORT = "COM4"        # change to the port you are using!!!
BAUD = 9600
LE = b"\r\n"         # CRLF (Windows), if macOS/linux try b"\n" if needed
DELAY = 0.003        # change to 0.001..0.1 based on your device speed

try:
    s = serial.Serial(PORT, BAUD, timeout=1)
except Exception as e:
    print("Can't open port:", e); sys.exit(1)

try:
    for i in range(100000):
        cmd = f"&{i:05d}".encode()
        s.write(cmd + LE)
        time.sleep(DELAY)
        raw = s.read_all()
        if raw:
            text = raw.decode(errors="replace").strip()
            print(f"{cmd.decode()} -> {text}")
            if "WRONG" not in text.upper():
                print("FOUND:", cmd.decode(), "->", text)
                break
finally:
    s.close()
