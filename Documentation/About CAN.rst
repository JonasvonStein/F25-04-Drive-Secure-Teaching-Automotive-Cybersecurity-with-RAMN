
Description: 
According to Google:
CAN FD is a modern evolution of the CAN bus protocol, short for Controller Area Network with Flexible Data-Rate. It significantly increases data payload capacity from the classical CAN's 8 bytes to 64 bytes and supports a dynamically switchable, higher bit rate during the data transmission phase, improving overall data throughput. This enhanced protocol addresses the growing bandwidth needs of applications like those in high-performance vehicles

CAN exploitation:
CAN FD exploitation means a cyberattack targeting the Controller Area Network with Flexible Data-Rate (CAN FD) protocol, a communication standard used in modern vehicles and industrial systems. Since CAN FD lacks built-in security features like encryption and authentication, attackers can gain unauthorized access and send malicious messages to control or disrupt electronic systems

Types of Attacks:
Spoofing: An attacker forges and injects messages to impersonate a legitimate Electronic Control Unit (ECU). The victim ECU receives and acts on these fake commands because the protocol has no built-in way to verify the sender's authenticity.
Denial-of-Service (DoS) attacks: An attacker floods the network with continuous, high-priority messages. Because the CAN protocol prioritizes lower ID messages, the malicious frames win arbitration and prevent legitimate, lower-priority traffic from getting through.
Data replay attacks: An attacker records legitimate CAN messages and then re-sends them later. For instance, an attacker could record the command to unlock a car's doors and later replay that message to gain unauthorized entry.
Fuzzing attacks: An attacker injects random or malformed data into the network to cause system confusion or crashes. These unpredictable messages can cause erratic vehicle behavior, such as unusual signal light activations or steering wheel jitters.
Data theft: Since CAN FD communication is unencrypted, an attacker who gains access can eavesdrop on all bus traffic. By sniffing the data, they can reverse-engineer message IDs and steal sensitive information, such as driving history or mileage. 

For More Information about CAN-FD, not necessarily cybersecurity: https://www.csselectronics.com/pages/can-fd-flexible-data-rate-intro



