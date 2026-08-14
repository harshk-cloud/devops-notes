# Day 15 - Subnetting and Subnet Masks


## 1. Subnet Mask

Meaning: A subnet mask tells us which part of an IP address is the network portion and which part is the host portion.

Purpose: It helps devices determine the network they belong to and how the IP address space is divided.

Example:

IP Address: `192.168.32.5/24`

Subnet Mask: `255.255.255.0`

A `/24` means:
- 24 network bits
- 8 host bits


## 2. Subnet Mask in Binary

Meaning: A subnet mask contains `1`s for network bits and `0`s for host bits.

Purpose: Binary makes it easy to see exactly where the network portion ends and the host portion begins.

Example:

Subnet Mask: `255.255.255.0`

Binary: `11111111.11111111.11111111.00000000`

Therefore:
- 24 bits = Network bits
- 8 bits = Host bits

Rule:

`1` = Network bit

`0` = Host bit


## 3. What Does 255 Mean?

Meaning: In a subnet mask, an octet of `255` means all 8 bits in that octet are network bits.

Purpose: It shows that the corresponding IP address octet is completely part of the network portion.

Example:

IP: `192.168.32.5`

Mask: `255.255.255.0`

Binary:

IP: `11000000.10101000.00100000.00000101`

Mask: `11111111.11111111.11111111.00000000`

The first 24 bits are network bits and the last 8 bits are host bits.

Important:

`255 = 11111111`

Therefore, that complete octet belongs to the network portion.


## 4. CIDR Notation

Meaning: CIDR notation represents the number of network bits after the slash.

Purpose: It provides a shorter way to write a subnet mask.

Example:

`192.168.32.5/24`

`/24` means:
- 24 network bits
- 8 host bits

Total IPv4 bits = 32

`32 - 24 = 8` host bits


## 5. Number of Host Addresses

Meaning: The number of possible IP addresses in a subnet depends on the number of host bits.

Purpose: It helps determine how many devices a subnet can support.

Formula:

Total IP addresses = `2^host bits`

Usable host addresses = `2^host bits - 2`

The 2 reserved addresses are:
1. Network address
2. Broadcast address

Example:

`/24` has 8 host bits.

`2^8 = 256` total IP addresses

`256 - 2 = 254` usable host addresses

Therefore:

`/24` = 256 total addresses

`/24` = 254 usable host addresses


## 6. Example - Need 500 Hosts

Meaning: If a network needs a specific number of hosts, we must keep enough host bits to provide those hosts.

Purpose: It helps select the correct subnet size.

Example:

Required hosts = 500

We need:

`2^h - 2 >= 500`

8 host bits:

`2^8 - 2 = 254`

254 is not enough.

9 host bits:

`2^9 - 2 = 512 - 2 = 510`

Therefore, we need 9 host bits.

IPv4 has 32 total bits.

`32 - 9 = 23` network bits

Therefore:

CIDR = `/23`

Subnet Mask:

`255.255.254.0`

Binary:

`11111111.11111111.11111110.00000000`

Usable hosts:

`2^9 - 2 = 510`

Therefore:

`/23` provides 510 usable host addresses.


## 7. Why Do We Need Subnetting?

Meaning: Subnetting divides one large network into multiple smaller networks.

Purpose: It reduces unnecessary broadcast traffic, improves network organization, and can improve security and network management.

Example:

Original network:

`192.168.1.0/24`

Suppose we want separate networks for:
- Wireless
- IoT
- DMZ
- Users

Instead of keeping everything in one network, we can divide the `/24` network into 4 smaller subnets.


## 8. When We Need More Networks

Meaning: To create more networks from an existing network, we borrow host bits and convert them into network bits.

Purpose: Borrowing host bits creates additional subnets.

Example:

Original:

`/24`

- 24 network bits
- 8 host bits

Suppose we need 4 networks.

We use:

`2^n >= 4`

`2^2 = 4`

Therefore, we need to borrow 2 host bits.

New:

`24 + 2 = 26` network bits

`8 - 2 = 6` host bits

New CIDR:

`/26`


## 9. Subnet Mask for /26

Meaning: A `/26` subnet mask has 26 network bits and 6 host bits.

Purpose: It divides a `/24` network into 4 equal subnets.

Binary:

`11111111.11111111.11111111.11000000`

The last octet is:

`11000000`

Using the binary values:

`128 64 32 16 8 4 2 1`

The first two bits are `1`:

`128 + 64 = 192`

Therefore:

`/26 = 255.255.255.192`


## 10. Borrowing Host Bits

Meaning: Subnetting works by borrowing host bits and converting them into network bits.

Purpose: Borrowing bits creates additional networks.

Example:

Original:

`/24`

- 24 network bits
- 8 host bits

Need 4 networks.

We need:

`2^n >= 4`

`2^2 = 4`

Therefore, borrow 2 host bits.

New:

`24 + 2 = 26` network bits

`8 - 2 = 6` host bits

New CIDR:

`/26`


## 11. Finding the Increment

Meaning: The increment tells us where each new subnet starts.

Purpose: It allows us to quickly calculate subnet ranges.

Formula:

`Increment = 256 - subnet mask value in the interesting octet`

Example:

`/26`

Subnet mask:

`255.255.255.192`

Interesting octet = `192`

Increment:

`256 - 192 = 64`

Therefore, the subnet boundaries increase by 64.

Subnet network addresses:

`0, 64, 128, 192`


## 12. Creating thr four /26 Subnet Ranges

Meaning: A `/26` divides a `/24` network into four equal subnets.

Example:

Starting network:

`192.168.1.0/24`

Increment = `64`


### Network 1

Network Address: `192.168.1.0`

Usable Hosts: `192.168.1.1 - 192.168.1.62`

Broadcast: `192.168.1.63`


### Network 2

Network Address: `192.168.1.64`

Usable Hosts: `192.168.1.65 - 192.168.1.126`

Broadcast: `192.168.1.127`


### Network 3

Network Address: `192.168.1.128`

Usable Hosts: `192.168.1.129 - 192.168.1.190`

Broadcast: `192.168.1.191`


### Network 4

Network Address: `192.168.1.192`

Usable Hosts: `192.168.1.193 - 192.168.1.254`

Broadcast: `192.168.1.255`

Therefore:

`192.168.1.0/24`

becomes:

- `192.168.1.0/26`
- `192.168.1.64/26`
- `192.168.1.128/26`
- `192.168.1.192/26`


## 13. Four-Step Subnetting Method

Meaning: A simple process can be used to solve basic subnetting problems.

Purpose: It makes subnetting calculations systematic and easier to remember.

Step 1: Determine how many networks are required.

Step 2: Borrow the required number of host bits.

Step 3: Find the subnet mask and increment.

Step 4: Create the subnet ranges.

Example:

Need 4 networks from:

`192.168.1.0/24`

Step 1:

4 networks are required.

`2^2 = 4`

Borrow 2 host bits.

Step 2:

`/24 -> /26`

Step 3:

`/26 = 255.255.255.192`

Increment:

`256 - 192 = 64`

Step 4:

Network boundaries:

`0, 64, 128, 192`

Ranges:

`0 - 63`

`64 - 127`

`128 - 191`

`192 - 255`


## 14. Number of Networks from Borrowed Bits

Meaning: The number of borrowed bits determines how many subnets can be created.

Purpose: It helps choose the correct number of bits to borrow.

Formula:

`Number of networks = 2^borrowed bits`

Examples:

1 borrowed bit:

`2^1 = 2 networks`

2 borrowed bits:

`2^2 = 4 networks`

3 borrowed bits:

`2^3 = 8 networks`

4 borrowed bits:

`2^4 = 16 networks`

5 borrowed bits:

`2^5 = 32 networks`

Therefore:

- 4 networks -> 2 bits
- 8 networks -> 3 bits
- 16 networks -> 4 bits


## 15. Subnetting Example - Four Networks

Meaning: One `/24` network can be divided into four smaller `/26` networks.

Purpose: This is useful when different groups or devices need separate networks.

Example:

Original:

`192.168.1.0/24`

Possible groups:
- Wireless
- IoT
- DMZ
- Users

Need:

4 networks

Borrow:

2 host bits

New CIDR:

`/26`

New subnet mask:

`255.255.255.192`

Increment:

`64`

Networks:

- `192.168.1.0/26` -> Wireless
- `192.168.1.64/26` -> IoT
- `192.168.1.128/26` -> DMZ
- `192.168.1.192/26` -> Users

Each subnet contains:

`2^6 = 64` total addresses

`64 - 2 = 62` usable host addresses


## 16. Why Separate Networks?

Meaning: Different types of devices can be placed into different subnets.

Purpose: Network separation can improve organization, security, and network management.

Example:

`192.168.1.0/26` -> Wireless

`192.168.1.64/26` -> IoT

`192.168.1.128/26` -> DMZ

`192.168.1.192/26` -> Users

IoT devices do not need to be in the same subnet as normal user devices.

This separation can be combined with routing, firewall rules, and VLANs to control communication between networks.


## Key Learnings

- A subnet mask separates network bits from host bits.
- `1` in a subnet mask represents a network bit.
- `0` in a subnet mask represents a host bit.
- IPv4 addresses contain 32 bits.
- `/24` = 24 network bits + 8 host bits.
- `/24` = `255.255.255.0`.
- `/26` = 26 network bits + 6 host bits.
- `/26` = `255.255.255.192`.
- Borrowing host bits creates more networks.
- Number of networks = `2^borrowed bits`.
- Total IP addresses = `2^host bits`.
- Usable hosts = `2^host bits - 2`.
- Increment = `256 - subnet mask value in the interesting octet`.
- A `/24` divided into four equal subnets becomes four `/26` networks.
- Each `/26` subnet has 64 total addresses and 62 usable host addresses.
- To support 500 hosts, 9 host bits are required.
- 9 host bits give 510 usable hosts, so `/23` is required.
