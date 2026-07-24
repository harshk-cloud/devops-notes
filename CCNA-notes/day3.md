# Day 3 - OSI Model & TCP/IP Model


## Birth of the Internet (1969)

Meaning: The Internet began with ARPANET.

Purpose: To understand why networking was needed.

Example:
- Computer A (IBM)
- Computer B (Another Company)

Initially, these computers could not communicate with each other.

My Notes:
- In the 1960s, computers were isolated.
- File sharing was not possible.
- Scientists came up with the idea of connecting computers.
- In 1969, ARPANET was created.
- ARPANET is known as the Grandfather of the Internet.

Diagram:

```
Computer A      Computer B
     ❌
(No Communication)

↓

ARPANET (1969)

Computer A ───── Computer B
        ✔
```

## Proprietary Networks

Meaning: Every company created its own networking system.

Purpose: To understand the problems caused by the lack of a common networking standard.

Example:
IBM Network → Only IBM Devices

Apple Network → Only Apple Devices

My Notes:
- Every company had its own networking language.
- IBM devices could not communicate with Apple devices.
- These were called Proprietary Networks.
- Similar to how an Android charger is not compatible with an older iPhone.

Diagram:

```
IBM ───── IBM ✅

IBM ───── Apple ❌
```

## Packet Switching

Meaning: A method of sending data by breaking it into small packets instead of sending it as one large block.

Purpose: To make communication faster, more efficient, and more reliable.

Example:
When you send a photo on WhatsApp, it is divided into multiple small packets. These packets travel through the network and are reassembled at the destination.

My Notes:
- Packet Switching was introduced with ARPANET.
- Data is divided into small packets before transmission.
- Each packet can take a different path to reach the destination.
- The destination device reassembles all packets into the original data.
- Packet Switching is the foundation of modern computer networks and the Internet.

Diagram:

```
Original Data

[Large File]

        │
        ▼

+------+------+------+------+
|Pkt 1 |Pkt 2 |Pkt 3 |Pkt 4 |
+------+------+------+------+

        │
        ▼

Packets travel through the network

        │
        ▼

Destination

+------+------+------+------+
|Pkt 1 |Pkt 2 |Pkt 3 |Pkt 4 |
+------+------+------+------+

        │
        ▼

Original File Reassembled
```


## Networking Standards

Meaning: A common set of networking rules followed by all companies.

Purpose: To allow devices from different manufacturers to communicate.

Example:
Windows Laptop ↔ Android Phone ↔ iPhone ↔ Linux Server

My Notes:
- Companies agreed to use common networking standards.
- This allows devices from different companies to communicate.
- The modern Internet works because everyone follows the same standards.


## Networking Model

Meaning: A set of rules, instructions, and guidelines that define how devices communicate.

Purpose: To standardize communication between all networking devices.

Example:
- Blueprint for a building.
- Networking Model for a computer network.

My Notes:
- A networking model works like a blueprint.
- It defines how communication should happen.
- Two networking models were created:
  - TCP/IP Model
  - OSI Model


## TCP/IP Model

Meaning: The networking model used in real-world networking.

Purpose: Internet communication.

My Notes:
- The Internet runs on the TCP/IP Model.
- Cisco usually explains it using five layers.

Diagram:

```
Application

Transport

Network

Data Link

Physical
```

## TCP/IP Layers


### Application Layer

Meaning: The layer where users interact with network applications.

Purpose: Provides network services to end users.

Examples:
- Chrome
- Netflix
- WhatsApp
- YouTube
- HTTP
- HTTPS
- DNS

My Notes:
- This is where users access Internet services.


### Transport Layer

Meaning: Delivers data reliably or quickly.

Purpose: End-to-end communication.

Examples:
- TCP
- UDP
- Port Numbers

My Notes:
- TCP provides reliable communication.
- UDP provides faster communication.


### Network Layer

Meaning: The IP Address layer.

Purpose: Routes packets between different networks.

Example:
Router

My Notes:
- Routers operate at Layer 3.
- IP Addresses belong to this layer.


### Data Link Layer

Meaning: The MAC Address layer.

Purpose: Communication within the same network.

Example:
Switch

My Notes:
- Switches use MAC Addresses.
- Switches operate at Layer 2.


### Physical Layer

Meaning: The signal transmission layer.

Purpose: Transfers bits through physical media.

Examples:
- Ethernet Cable
- Fiber Cable
- RJ45 Connector
- Network Interface Card (NIC)

My Notes:
- Only transmits electrical or optical signals.
- Does not understand the actual data.


## OSI Model ( Open Systems Interconnection )

Meaning: A reference model used for learning and troubleshooting.

Purpose: To divide networking functions into seven layers.

My Notes:
- The OSI Model contains 7 layers.
- Real-world networking uses TCP/IP.
- OSI is mainly used for learning and troubleshooting.
- OSI stands for Open Systems Interconnection.
- It is a reference model, not the networking model used on today's Internet.
- It divides networking into seven layers.
- It makes networking concepts easier to learn.
- Network engineers commonly use OSI layer numbers (Layer 1, Layer 2, Layer 3, etc.) while troubleshooting.
- The TCP/IP model is used in real-world networking, but OSI terminology is still widely used.

Diagram:

```
7  Application

6  Presentation

5  Session

4  Transport

3  Network

2  Data Link

1  Physical
```

## Difference Between TCP/IP and OSI

Meaning: Both are networking models, but they organize networking functions differently.

Purpose: To understand how the two models compare.

My Notes:
- Layers 1 to 4 are almost identical.
- OSI has two additional layers:
  - Presentation
  - Session
- In TCP/IP, these two layers are merged into the Application Layer.

Diagram:

```
OSI                  TCP/IP

Application   ─┐
Presentation  ─┤
Session       ─┘ → Application

Transport   → Transport

Network     → Network

Data Link   → Data Link

Physical    → Physical
```


## Why Study the OSI Model?

Meaning: Network engineers use OSI terminology every day.

Purpose: Troubleshooting and communication.

My Notes:
- Engineers commonly say:
  - Layer 1 Issue
  - Layer 2 Issue
  - Layer 3 Issue
  - Layer 7 Issue
- They rarely say:
  - "TCP/IP Application Layer Issue"
- OSI terminology has become the industry standard.


## Mnemonics

Top to Bottom

```
Application
Presentation
Session
Transport
Network
Data Link
Physical
```

Remember:

All People Seem To Need Data Processing

Bottom to Top

```
Physical
Data Link
Network
Transport
Session
Presentation
Application
```

Remember:

Please Do Not Throw Sausage Pizza Away


## Important Networking Devices

### Hub

Meaning: A basic networking device that simply repeats signals.

Purpose: Sends incoming electrical signals to every port.

My Notes:
- Operates at Layer 1.
- Does not understand MAC Addresses.
- Also known as a Dumb Device.


### Repeater

Meaning: Regenerates weak signals.

Purpose: Extends the transmission distance.

My Notes:
- Operates at Layer 1.
- Strengthens weak electrical signals.


### Switch

Meaning: Forwards frames using MAC Addresses.

Purpose: Communication within the same network.

My Notes:
- Operates at Layer 2.
- Uses a MAC Address Table.


### Router

Meaning: Connects different networks.

Purpose: Routes packets between networks.

My Notes:
- Operates at Layer 3.
- Uses IP Addresses.


### Wireless Access Point (WAP)

Meaning: Connects wireless devices to a wired network.

Purpose: Provides Wi-Fi connectivity.

My Notes:
- Operates at both Layer 1 and Layer 2.


## CCNA Exam Questions

Question:
Which device primarily operates at Layer 2?

Answer:
Switch

Question:
Which device primarily operates at Layer 1?

Answer:
Hub

Question:
Which device regenerates weak signals?

Answer:
Repeater

Question:
Which device operates at Layer 3?

Answer:
Router


## Quick Revision

| Layer | Device / Example | Remember |
|--------|------------------|-----------|
| L1 | Hub, Repeater, Cable | Electricity / Signal |
| L2 | Switch | MAC Address |
| L3 | Router | IP Address |
| L4 | TCP, UDP | Reliable / Fast Transport |
| L5 | Session | Connection Management |
| L6 | Presentation | Encryption, Compression, Translation |
| L7 | Application | HTTP, HTTPS, DNS, Browser |


# Key Learnings

- Learned why networking was invented and how ARPANET became the first computer network.
- Understood why Proprietary Networks created compatibility problems.
- Learned the importance of networking standards.
- Understood what a Networking Model is.
- Learned that TCP/IP is the networking model used in the real world.
- Learned that the OSI Model is mainly used for learning and troubleshooting.
- Compared the TCP/IP Model with the OSI Model.
- Memorized all seven OSI layers.
- Learned why network engineers refer to issues using OSI layer numbers.
- Identified the operating layers of common networking devices:
  - Hub → Layer 1
  - Repeater → Layer 1
  - Switch → Layer 2
  - Router → Layer 3
  - Wireless Access Point → Layer 1 & Layer 2
- Practiced CCNA-style questions related to networking layers and devices.
- Built a strong foundation for understanding packet flow, which will be covered in the next lesson.
