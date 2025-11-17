# Capture the Flag Challenge

## Getting Started
Replace the existing 'ramn_uds.c' file with the file included in the GitHub. The location should be ...\RAMN-main\firmware\RAMNV1\Core\Src. DO NOT open the file in the GitHub because it will immediately reveal the flag. Refer to the F25-04 website for further instructions. 
## Learning Objectives
- Understand UDS / ISO-TP diagnostics
- Use can-utils to query an ECU
- Inspect firmware to find embedded data

## Overview
Unified Diagnostic Services (UDS) is a communication protocol that is primarily used in the automotive industry for diagnostics and testing. It runs on top of CAN FD and provides a common set of diagnostic functions like ECU programming and data monitoring. UDS enables ECUs to interact constantly across different vehicle manufacturers and systems. 
UDS exploitation refers to cyberattacks that target the diagnostic services in a vehicle. Attackers with access to the CAN FD bus can use UDS commands to read data or overwrite ECU memory. The RAMN device is used to simulate and practice UDS attacks. The type of attack used in this challenge is Service Identifier (SID) exploitation. 

When an attacker (you in this case) wants to utilize a specific service, the UDS request message should contain the UDS Service Identifier (SID) in the data payload [2]. SIDs are required in the UDS request message to utilize a specific UDS service. 

This is most easily done on a Linux system, you may use a virtual or local machine with can-utils installed. We will be using the commands from section 2.0, specifically sending UDS commands to retrieve the flag. 

![alt text](https://www.csselectronics.com/cdn/shop/files/Unified-Diagnostic-Services-UDS-overview-0x22-0x19.png)
![alt text](https://www.csselectronics.com/cdn/shop/files/UDS-standard-data-identifiers-did-VIN-0x22.png)

## Part 1: Retrieve the Flag 
Retrieve the hidden message embedded in the ECU firmware and submit the flag. The format of the flag is: “RAMN FLAG {‘flag’}.  Attached below is a list of UDS SID service requests and responses. Also included is a list of data identifiers. Use a linux terminal to retrieve the flag. See the “Installing Linux”, “UDS Background Information”, and “Viewing CAN” sections to get started with the project. Shown below are tables for the UDS Service Identifiers and UDS Data Identifiers. Do not disable any of the ECUs. 

Environment: 
- Linux
- CAN interface
- Can-utils

