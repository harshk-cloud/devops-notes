# Day 11 - IP Address and Subnetting Basics


## What is an IP Address?

Meaning: An IP (Internet Protocol) Address is a unique address assigned to every device connected to a network.

Purpose: It identifies devices and allows them to communicate with each other.

Example:

```
Laptop  → 192.168.1.48
Phone   → 192.168.1.22
TV      → 192.168.1.27
Printer → 192.168.1.105
```

My Notes:

- IP stands for Internet Protocol.
- Protocol means a set of rules.
- Every device connected to a network must have a unique IP address.
- Without an IP address, devices cannot communicate with each other.
- An IP address works like a device's address on a network.


## What is Internet Protocol?

Meaning: Internet Protocol (IP) is a set of rules that controls how data is sent and received across a network.

Purpose: It ensures data reaches the correct destination.

My Notes:

- Protocol means rules.
- Every network device follows these rules while communicating.
- IP is one of the core networking protocols.


## Viewing Your IP Address

Meaning: You can check your device's IP configuration using command-line tools.

Purpose: It helps you identify your current network settings.

Example (Windows):

```bash
ipconfig
```

Example (Linux):

```bash
ifconfig
```

Output:

```
IPv4 Address    : 192.168.1.204
Subnet Mask     : 255.255.255.0
Default Gateway : 192.168.1.1
```

My Notes:

- IPv4 Address identifies your device.
- Subnet Mask identifies the network.
- Default Gateway is your router.


## IPv4 Address Structure

Meaning: An IPv4 address contains four numbers separated by dots.

Purpose: It uniquely identifies a device on a network.

Example:

```
192.168.1.204
```

My Notes:

- IPv4 consists of four octets.
- Each octet ranges from 0 to 255.
- Each octet contains 8 bits.

```
192 . 168 . 1 . 204
 |      |     |     |
Octet Octet Octet Octet
```


## How Does a Router Assign IP Addresses?

Meaning: A router automatically assigns an IP address to every device that joins the network.

Purpose: It allows devices to communicate without manual IP configuration.

Example:

```
Router
├── Phone   → 192.168.1.22
├── Laptop  → 192.168.1.48
├── TV      → 192.168.1.27
└── Printer → 192.168.1.105
```

My Notes:

- Home routers usually assign IP addresses automatically.
- This process is called DHCP.

DHCP = Dynamic Host Configuration Protocol


## Three Important Network Settings

Meaning: Every device needs three basic network settings to communicate.

Purpose: These settings help devices identify themselves and communicate inside or outside the network.

Example:

```
IPv4 Address
Subnet Mask
Default Gateway
```

My Notes:

- IPv4 Address identifies the device.
- Subnet Mask identifies the network.
- Default Gateway connects the device to other networks.


## What is a Subnet Mask?

Meaning: A Subnet Mask separates the network portion from the host portion of an IP address.

Purpose: It helps devices determine whether another device is on the same network.

Example:

```
IP Address  : 192.168.1.204
Subnet Mask : 255.255.255.0
```

My Notes:

- 255 means the value is fixed.
- 0 means the value can change.
- Devices with the same network portion belong to the same network.

```
IP Address

192 .168 .1 .204

Subnet Mask

255 .255 .255 .0

Network Portion

192.168.1

Host Portion

204
```


## Network Portion and Host Portion

Meaning: The Network Portion identifies the network, while the Host Portion identifies a specific device.

Purpose: It allows multiple devices to exist within the same network.

Example:

```
192.168.1.22
192.168.1.48
192.168.1.105
192.168.1.204
```

My Notes:

- Network Portion = 192.168.1
- Host Portion = Last octet.
- Devices in the same network share the same Network Portion.


## Same Network Communication

Meaning: Devices in the same network communicate directly.

Purpose: No router is required when both devices are in the same network.

Example:

```
Laptop
192.168.1.48
      │
      ▼
Phone
192.168.1.22
```

My Notes:

- Same Network Portion.
- Different Host Portion.
- Communication happens directly.


## Different Network Communication

Meaning: Devices in different networks require a router to communicate.

Purpose: The router forwards traffic outside the local network.

Example:

```
Laptop
192.168.1.48
      │
      ▼
Router (Default Gateway)
192.168.1.1
      │
      ▼
Internet
      │
      ▼
Netflix
3.225.92.8
```

My Notes:

- Different networks cannot communicate directly.
- The router forwards packets to other networks.


## Default Gateway

Meaning: The Default Gateway is the router's IP address.

Purpose: It acts as the exit point for traffic leaving the local network.

Example:

```
192.168.1.1
```

My Notes:

- Default Gateway is usually the router.
- Every internet request first goes to the router.
- It forwards packets to other networks.


## Total IP Addresses in a /24 Network

Meaning: A network with a subnet mask of 255.255.255.0 provides 256 total IP addresses.

Purpose: It determines how many IP addresses are available within the network.

Example:

```
IP Address  : 192.168.1.204
Subnet Mask : 255.255.255.0
```

My Notes:

- The first three octets are fixed.
- The last octet can change.
- The IP address range is:

```
192.168.1.0
      ↓
192.168.1.255
```

- Total IP addresses = 256.


## Network Address

Meaning: The first IP address in a network.

Purpose: It identifies the entire network.

Example:

```
192.168.1.0
```

My Notes:

- It represents the network itself.
- It cannot be assigned to any device.
- Every network has one Network Address.


## Broadcast Address

Meaning: The last IP address in a network.

Purpose: It sends data to every device in the same network.

Example:

```
192.168.1.255
```

My Notes:

- A broadcast packet is received by all devices in the network.
- It cannot be assigned to any device.
- Every network has one Broadcast Address.

```
Broadcast
     │
     ▼
+---------+
| Laptop  |
| Phone   |
| TV      |
| Printer |
+---------+
```


## Router Address

Meaning: The router also uses one IP address inside the network.

Purpose: It acts as the Default Gateway for all devices.

Example:

```
192.168.1.1
```

My Notes:

- The router must have an IP address.
- Devices send internet traffic to the router first.
- The router forwards packets to other networks.


## Usable Host Calculation

Meaning: Not every IP address in a network can be assigned to devices.

Purpose: It calculates the number of usable host IP addresses.

Example:

```
Total IP Addresses     = 256
Network Address        =   1
Broadcast Address      =   1
Router (Gateway)       =   1
----------------------------
Usable Host Addresses  = 253
```

My Notes:

- Total addresses = 256.
- Network Address is reserved.
- Broadcast Address is reserved.
- The router uses one IP address.
- In this example, 253 IP addresses remain available for hosts.


## Summary of Network Communication

Meaning: Devices communicate differently depending on whether the destination is inside or outside the network.

Purpose: It helps understand how packets travel.

Example:

```
Same Network

Laptop
   │
   ▼
Phone
```

```
Different Network

Laptop
   │
   ▼
Router
   │
   ▼
Internet
   │
   ▼
Website
```

My Notes:

- Same Network → Direct communication.
- Different Network → Router is required.
- The Default Gateway is the exit point from the local network.


## Key Learnings

- IP stands for Internet Protocol.
- Every device connected to a network requires a unique IP address.
- Protocol means a set of rules.
- IPv4 consists of four octets.
- Each octet ranges from 0 to 255.
- Routers automatically assign IP addresses using DHCP.
- A Subnet Mask separates the Network Portion and Host Portion.
- Devices with the same Network Portion belong to the same network.
- Devices in the same network communicate directly.
- Devices in different networks communicate through a router.
- The Default Gateway is the router's IP address.
- A /24 network (255.255.255.0) contains 256 total IP addresses.
- The first IP is the Network Address.
- The last IP is the Broadcast Address.
- In this example, 253 IP addresses remain available for hosts after reserving the Network Address, Broadcast Address, and the router IP.
