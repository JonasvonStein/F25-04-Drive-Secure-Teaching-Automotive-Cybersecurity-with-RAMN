Two terminals are required to identify the flag. The spare part DID (Data Identifier) is 0xF187. The first step is to send a UDS ReadDataByIdentifier request (0x22) for DID 0xF187. The request bytes are ‘22 F1 87’. The command ‘isotpsend -s 7e1 -d 7e9 slcan0’ sends the ISO-TP message from CAN ID 0x7E1 to 0x7E9. The ECU then responds with an ISO-TP message containing a positive response to 0x22. The UDS SID response to 0x22 is 0x62. The DID echo follows ‘F1 87’, so the header in the reply is ‘62 F1 87’. The payload bytes with the response follow the header in Terminal 2. The bytes that follow the reply after the UDS header in Terminal 2 are the ASCII characters of ‘RAMN FLAG{lets_go_hokies}’. 

* Terminal 1: 

echo "22 F1 87" | isotpsend -s 7e1 -d 7e9 slcan0

* Terminal 2: 

kali㉿kali)-[~]

└─$ isotprecv -s 7e1 -d 7e9 -l slcan0            
62 F1 87 52 41 4D 4E 20 46 4C 41 47 7B 6C 65 74 73 5F 67 6F 5F 68 6F 6B 69 65 73 7D 
