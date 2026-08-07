# Day 12 - We Ran Out of IP Addresses


## Why Did IPv4 Run Out?

Meaning: IPv4 has a limited number of addresses. As the Internet grew, those addresses started running out.

Purpose: Understand why IPv4 address exhaustion happened.

Example:

```
IPv4 = 32 Bits

1 Octet = 8 Bits

2^32
=
4,294,967,296

≈ 4.3 Billion IP Addresses
```

My Notes:
- IPv4 uses a 32-bit address.
- Each octet contains 8 bits.
- Total IPv4 addresses = 2³².
- Around 4.3 billion IPv4 addresses exist.
- The Internet officially started on **January 1, 1983**.
- At that time, engineers believed 4.3 billion addresses would never run out.
- Today, almost all public IPv4 addresses have been allocated.


### Reason 1 - Internet Became Huge

Meaning: The Internet grew much faster than anyone expected.

Purpose: Understand why billions of IP addresses became necessary.

My Notes:
- In 1983, only a few computers used the Internet.
- Today almost every device requires an IP address.

Examples:
- Laptop
- Smartphone
- Tablet
- Smart TV
- Smart Watch
- Router
- Printer
- Security Camera
- IoT Devices
- Smart Home Appliances


### Reason 2 - Poor Planning

Meaning: IPv4 addresses were not allocated efficiently.

Purpose: Learn how poor planning caused IPv4 exhaustion.

My Notes:
- Internet inventors never expected billions of connected devices.
- Large companies received extremely large IP address blocks.
- Most organizations never used all those addresses.
- Millions of IPv4 addresses were wasted.


## Classful Addressing

Meaning: IPv4 addresses were divided into predefined classes.

Purpose: Organize networks based on size.

My Notes:

```
Class A
Class B
Class C
Class D
Class E
```

Each class has:
- Different IP Range
- Default Subnet Mask
- Different Network Size


## IPv4 Classes

```
+-------+---------------------------+-----------------+
| Class | Range                     | Default Mask    |
+-------+---------------------------+-----------------+
| A     | 1.0.0.0 - 126.255.255.255 | 255.0.0.0       |
| B     | 128.0.0.0 - 191.255.255.255 | 255.255.0.0   |
| C     | 192.0.0.0 - 223.255.255.255 | 255.255.255.0 |
| D     | 224.0.0.0 - 239.255.255.255 | Reserved       |
| E     | 240.0.0.0 - 255.255.255.255 | Reserved       |
+-------+---------------------------+-----------------+
```

My Notes:
- Class A, B and C are used for host addressing.
- Class D is reserved for Multicast.
- Class E is reserved for Experimental use.


## Problems with Classful Addressing

Meaning: The original IPv4 addressing system had major drawbacks.

Purpose: Understand why IPv4 addresses were wasted.


### Problem 1

Reserved address blocks cannot be assigned to normal devices.


### Problem 2

Huge organizations received far more IP addresses than they actually needed.

This caused massive IPv4 address wastage.


## Class A Network

Meaning: Class A is designed for very large organizations.

Purpose: Provide a huge number of host addresses.

Example:

```
Network:
1.0.0.0

Subnet Mask:
255.0.0.0
```

Subnet Mask Analysis

```
255 = Fixed
0   = Can Change

Result

1.X.X.X
```

My Notes:
- Only the first octet stays fixed.
- The remaining three octets can change.
- One Class A network contains:

```
16,777,214 Usable Hosts
```

- Only about **126 Class A networks** exist.
- Very few networks.
- Extremely large host capacity.


## Home Network Comparison

Example

```
192.168.1.0

Subnet Mask

255.255.255.0
```

Result

```
192.168.1.X
```

My Notes:
- First three octets remain fixed.
- Only the last octet changes.
- Total addresses = 256
- Usable hosts = 254

Comparison

```
Home Network

254 Hosts

        VS

Class A Network

16,777,214 Hosts
```

This shows how oversized Class A networks were.


## Companies That Received Class A Networks

Meaning: Large organizations were allocated entire Class A networks.

Purpose: Understand how IPv4 addresses were wasted.

Examples

```
IBM   → 9.0.0.0
GE    → 3.0.0.0
AT&T  → 12.0.0.0
HP    → 15.0.0.0
```

My Notes:
- IANA allocated huge address blocks.
- Each company received more than 16 million addresses.
- Most companies never used all of them.
- This resulted in massive IPv4 wastage.


## IANA (Internet Assigned Numbers Authority)

Meaning: Organization responsible for allocating IP address blocks.

Purpose: Manage global IPv4 allocation.

My Notes:
- IANA allocates large address blocks.
- Organizations divide those blocks into smaller subnetworks according to their needs.


## Introduction to Subnetting

Meaning: Subnetting divides one large network into multiple smaller networks.

Purpose: Improve IP address utilization and simplify network management.

Example

Large Network

```
9.0.0.0/8
```

After Subnetting

```
9.1.4.0/24
```

Subnet Mask

```
255.255.255.0
```

My Notes:
- IBM receives one large network from IANA.
- IBM divides that network into many smaller subnetworks.
- Smaller networks are easier to manage.
- IP addresses are utilized more efficiently.

Example

```
9.0.0.0/8

       │
       ├── 9.1.1.0/24
       ├── 9.1.2.0/24
       ├── 9.1.3.0/24
       └── 9.1.4.0/24
```


## Classful vs Classless

Meaning: Compare default subnet masks with custom subnet masks.

Purpose: Understand modern IP addressing.


### Classful

Meaning: Uses the default subnet mask assigned to the class.

Example

```
9.0.0.0

255.0.0.0
```

My Notes:
- Uses the default subnet mask.
- Follows Class A rules.


### Classless

Meaning: Uses a custom subnet mask instead of the default mask.

Example

```
9.1.4.0

255.255.255.0
```

My Notes:
- IP belongs to Class A.
- Default subnet mask is changed.
- The large network becomes multiple smaller subnetworks.
- This improves IPv4 address utilization.
- Modern networking mainly uses **CIDR (Classless Inter-Domain Routing)**.


## Class B Network

Meaning: Class B is designed for medium-sized organizations.

Purpose: Balance between number of networks and number of hosts.

Example

```
Network

128.0.0.0

Subnet Mask

255.255.0.0
```

Subnet Mask Analysis

```
128.0.X.X
```

My Notes:
- First two octets remain fixed.
- Last two octets can change.
- One Class B network contains:

```
65,534 Usable Hosts
```

- Approximately **16,384 Class B networks** exist.
- More networks than Class A.
- Fewer hosts than Class A.

Comparison

```
Class A
Few Networks
Many Hosts

        ↓

Class B
More Networks
Fewer Hosts
```


## Class C Network

Meaning: Class C networks are designed for small networks.

Purpose: Provide a large number of networks with fewer hosts.

Example:

```
Network:
192.0.0.0

Subnet Mask:
255.255.255.0
```

Subnet Mask Analysis

```
255 = Fixed
255 = Fixed
255 = Fixed
0   = Can Change

Result

192.0.0.X
```

My Notes:
- First three octets remain fixed.
- Only the last octet changes.
- Total addresses = 256.
- Usable hosts = 254.
- Around **2,097,152 Class C networks** exist (approximately 2.09 million).
- This design is much more efficient than Class A because it creates many more networks.

Comparison

```
Class A
126 Networks
16,777,214 Hosts

↓

Class B
16,384 Networks
65,534 Hosts

↓

Class C
2,097,152 Networks
254 Hosts
```


## Purpose of the Subnet Mask

Meaning: A subnet mask determines the size of a network.

Purpose: Identify which bits belong to the Network ID and which belong to the Host ID.

My Notes:
- The subnet mask controls network size.
- More **255s** → Smaller network → More networks → Fewer hosts.
- More **0s** → Larger network → Fewer networks → More hosts.

Example

```
255.0.0.0

↓

Large Network
Many Hosts
```

```
255.255.255.0

↓

Small Network
Fewer Hosts
```


## Class D

Meaning: Reserved for Multicast communication.

Purpose: Send data from one sender to multiple selected receivers.

Range

```
224.0.0.0

to

239.255.255.255
```

My Notes:
- Not used for normal host addressing.
- Used by routing protocols and streaming services.
- One sender sends data to multiple devices that joined the multicast group.

Examples:
- Live Video Streaming
- IPTV
- Online TV
- Routing Protocols

Multicast Example

```
        Sender
           │
    ┌──────┼──────┐
    │      │      │
Receiver Receiver Receiver
```


## Class E

Meaning: Reserved for experimental and research purposes.

Purpose: Testing and future networking experiments.

Range

```
240.0.0.0

to

255.255.255.255
```

My Notes:
- Reserved addresses.
- Cannot be assigned to normal devices.
- Mainly used for research and experimentation.


## Missing Class (127.x.x.x)

Meaning: The entire 127.x.x.x range is reserved.

Purpose: Provide loopback addresses for testing.

Example

```
Class A Ends

126.x.x.x

↓

127.x.x.x

↓

Class B Starts

128.x.x.x
```

My Notes:
- The complete **127.0.0.0/8** network is reserved.
- It is called the **Loopback Network**.
- These addresses never leave your computer.
- Routers never forward loopback traffic.


## Loopback Address

Meaning: A virtual IP address that points back to your own computer.

Purpose: Test the local networking stack.

Most Common Address

```
127.0.0.1
```

Also Valid

```
127.5.10.20

127.100.50.1

127.255.255.254
```

My Notes:
- Every address beginning with **127** is a loopback address.
- They always point back to the local machine.
- They are never routed over the Internet.


## Ping Command

Meaning: Tests whether a device is reachable.

Purpose: Basic network troubleshooting.

Windows

```
ping 127.0.0.1
```

Linux

```
ping 127.0.0.1
```

Expected Output

```
Reply from 127.0.0.1
```

My Notes:
- Ping sends an ICMP Echo Request.
- The destination replies with an ICMP Echo Reply.
- If replies are received, the local TCP/IP stack is working.

Communication

```
PC

↓

Ping

↓

127.0.0.1

↓

Reply

↓

PC
```


## Why Use Loopback?

Meaning: Verify that your computer's networking software is functioning correctly.

Purpose: First troubleshooting step before checking the network.

My Notes:
- Tests the TCP/IP stack.
- Confirms the network software is working.
- Confirms the NIC driver is functioning correctly.
- Does not test the Internet.
- Does not test the router.
- Does not test cables.

Troubleshooting Flow

```
Ping 127.0.0.1

        │

        ▼

Reply Received?

   Yes
    │
TCP/IP Stack OK

   No
    │
Local Network Problem
```


## IPv4 Address Wastage

Meaning: Many IPv4 addresses were unavailable for normal use.

Purpose: Understand why IPv4 addresses were exhausted quickly.

Reasons

```
Large Class A Networks

↓

Reserved Class D

↓

Reserved Class E

↓

127 Loopback Network

↓

Internet Growth

↓

IPv4 Exhaustion
```

My Notes:
- Huge Class A allocations wasted millions of addresses.
- Class D addresses cannot be assigned to hosts.
- Class E addresses are reserved.
- Entire 127.x.x.x network is reserved for loopback.
- Billions of Internet-connected devices accelerated IPv4 exhaustion.


## Key Learnings

- IPv4 uses 32-bit addresses, giving approximately **4.3 billion** addresses.
- Classful Addressing divides IPv4 into Classes A, B, C, D and E.
- Class A provides very few networks but a huge number of hosts.
- Class B balances networks and hosts.
- Class C provides many networks with only 254 usable hosts each.
- Subnet masks determine the size of a network.
- Modern networks mainly use **Classless Addressing (CIDR)** instead of Classful Addressing.
- Class D is reserved for Multicast.
- Class E is reserved for Experimental purposes.
- The entire **127.0.0.0/8** range is reserved for Loopback.
- **127.0.0.1** is the localhost address used to test the local TCP/IP stack.
- `ping 127.0.0.1` is one of the first troubleshooting commands used by network engineers.
- Poor IP allocation and rapid Internet growth caused IPv4 exhaustion.
- Subnetting solves IP wastage by dividing large networks into smaller, more efficient subnetworks.
