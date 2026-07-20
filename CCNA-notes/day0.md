# Day 0 - Introduction to Networking

## What is Networking?

Meaning:
Networking means connecting two or more devices so they can exchange data with each other.

Purpose:
It allows devices to communicate, share files, printers, internet, and other resources.

Examples:
- PC
- Laptop
- Mobile
- Server
- Smart TV
- Printer
- CCTV Camera

My Notes:
- Networking connects devices for data exchange.
- Devices send and receive data through the network.

## Basic Home Network

```
                Internet
                    │
                  Modem
                    │
                Firewall
                    │
                  Router
                    │
                  Switch
      ┌────────┼────────┬────────┐
      │        │        │        │
     PC     Laptop   Printer   Smart TV
```


## Data Packets

Meaning:
Data is sent over a network in small pieces called packets.

Purpose:
Breaking data into packets makes communication faster and more reliable.

Example:
In an online game like Call of Duty, pressing the shoot button sends a data packet instead of a real bullet.

My Notes:
- Networking sends data packets, not physical objects.
- Packets travel through the network to reach their destination.


## Packet Flow

Meaning:
A packet follows multiple networking devices before reaching its destination.

Example:

PC
→ Ethernet Cable
→ Wall Jack
→ Switch
→ Router
→ Firewall
→ Modem
→ ISP Fiber
→ Internet
→ Game Server
→ Internet
→ Opponent's Modem
→ Router
→ Switch
→ Opponent's PC

My Notes:
- Every packet follows a defined path.
- Servers process requests before responding.

```
PC
 │
Ethernet Cable
 │
Switch
 │
Router
 │
Firewall
 │
Modem
 │
ISP
 │
Internet
 │
Game Server
 │
Opponent
```

## Ethernet Cable

Meaning:
A wired network cable used for data transfer.

Purpose:
Provides fast and stable communication.

Example:
RJ45 Ethernet Cable

My Notes:
- Faster than Wi-Fi.
- Lower latency.
- Preferred for gaming.


## IDF Room

Meaning:
Intermediate Distribution Frame (IDF) is a networking room inside a building.

Purpose:
Keeps networking equipment organized.

Contains:
- Switches
- Patch Panels
- Network Cables
- Other Network Equipment


## Switch

Meaning:
A switch connects devices within the same local network.

Purpose:
Allows devices inside one network to communicate.

Example:
PC, Laptop, Printer, Server

My Notes:
- Switch connects devices.
- It does not connect different networks.


## Router

Meaning:
A router connects different networks.

Purpose:
Allows communication between separate networks.

Example:
Home Network ↔ Internet

My Notes:
- Switch connects devices.
- Router connects networks.


## Firewall

Meaning:
A firewall protects a network from unauthorized access.

Purpose:
Allows safe traffic and blocks harmful traffic.

Functions:
- Allow
- Deny
- Block
- Monitor


## Modem

Meaning:
Modem stands for Modulator-Demodulator.

Purpose:
Converts ISP signals into signals your home network can use.

My Notes:
- Connects your home to the ISP.


## ISP

Meaning:
Internet Service Provider.

Examples:
- JioFiber
- Airtel Xstream Fiber
- BSNL Fiber


## LAN

Meaning:
Local Area Network.

Purpose:
Connects devices within a small area.

Examples:
- Home
- Office
- School

My Notes:
- Devices communicate locally.


## WAN

Meaning:
Wide Area Network.

Purpose:
Connects multiple LANs across large distances.

My Notes:
- Internet is the world's largest WAN.


## Internet

Meaning:
The Internet is a network of networks.

Purpose:
Connects millions of networks worldwide.

My Notes:
- Internet is not a magic cloud.
- It is built using routers, switches, fiber cables, servers, ISPs, and other networking devices.


## Wireless Access Point (WAP)

Meaning:
A device that broadcasts Wi-Fi signals.

Purpose:
Allows wireless devices to connect to the network.

Example Flow:

Internet
→ Router
→ Switch
→ Wireless Access Point
→ Phone / Laptop / TV

My Notes:
- Most home Wi-Fi routers combine:
  - Modem
  - Router
  - Switch
  - Firewall
  - Wireless Access Point

```
 Internet
    │
 Router
    │
 Switch
    │
Wireless Access Point
   )))   )))   )))
 Phone  Laptop  TV
```


## CCNA

Meaning:
Cisco Certified Network Associate.

Purpose:
An entry-level networking certification.

My Notes:
- It is one of the most popular certifications for Network Engineers.
