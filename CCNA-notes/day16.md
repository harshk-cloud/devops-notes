# Day 16 - Subnetting Based on Host Requirements, Reverse Subnetting and VLSM


## Subnetting 


### Subnetting Based on Host Requirements

Meaning: Host requirement based subnetting means creating subnets according to the number of hosts required in each network.

Purpose: To choose the correct subnet mask by preserving enough host bits for the required number of usable hosts.

Example:

```
Original Network:

10.1.1.0/24
```

My Notes:
- If a network has a specific host requirement, we calculate how many host bits are required.
- Host bits are preserved from the right side.
- Network bits are on the left side.
- Formula:

`Usable Hosts = 2^h - 2`

- `h` = number of host bits.
- We subtract `2` because one address is used for the Network Address and one for the Broadcast Address.


### Network Bits and Host Bits

Meaning: An IPv4 address contains 32 bits divided into network bits and host bits.

Purpose: To understand which bits identify the network and which bits are available for hosts.

Example:

```
10.1.1.0/24

Subnet Mask:

255.255.255.0

Binary:

11111111.11111111.11111111.00000000
```

My Notes:
- `/24` means 24 network bits and 8 host bits.
- The first 24 bits are network bits.
- The last 8 bits are host bits.
- When subnetting, we borrow bits from the host portion.
- Borrowed host bits become network/subnet bits.
- More borrowed bits = more subnets.
- More preserved host bits = more hosts per subnet.


### Example 1 - Requirement of 40 Hosts

Meaning: We need to divide `10.1.1.0/24` into subnets that can support at least 40 usable hosts.

Purpose: To calculate the subnet mask from a host requirement.

Example:

```
Original Network:

10.1.1.0/24

Original Subnet Mask:

255.255.255.0

Binary:

11111111.11111111.11111111.00000000
```

My Notes:
- Required hosts = `40`.
- Check the number of host bits:

`2^5 - 2 = 30 usable hosts`

`2^6 - 2 = 62 usable hosts`

- 5 host bits are insufficient.
- Therefore, we need 6 host bits.
- Original `/24` has 8 host bits.
- We preserve 6 host bits and borrow 2 bits for subnetting.

Original:

```
11111111.11111111.11111111.00000000
```

New:

```
11111111.11111111.11111111.11000000
```

New Subnet Mask:

`255.255.255.192`

CIDR:

`/26`

Therefore:

`10.1.1.0/26`

Usable Hosts:

`2^6 - 2 = 62`


### Finding the Increment

Meaning: The increment tells us where the next subnet starts.

Purpose: To quickly create subnet ranges.

Example:

```
/26 = 255.255.255.192
```

My Notes:
- Look at the subnet mask octet where subnetting occurs.
- Last octet = `192`.
- Increment:

`256 - 192 = 64`

- Therefore, the increment is `64`.

Subnet Boundaries:

```
10.1.1.0/26
10.1.1.64/26
10.1.1.128/26
10.1.1.192/26
```

Each `/26` subnet has:

`64 total addresses`

`62 usable host addresses`


### Network Requirement vs Host Requirement

Meaning: Network requirement tells us how many separate networks are required, while host requirement tells us how many hosts are required inside each network.

Purpose: To understand whether we need to borrow bits or preserve host bits.

Example:

```
Network Requirement = 4 networks

Host Requirement = 40 hosts per network
```

My Notes:
- Network requirement:
  - We need a specific number of networks.
  - We calculate how many bits need to be borrowed.
- Host requirement:
  - We need a specific number of hosts inside each subnet.
  - We calculate how many host bits need to be preserved.

Important:

```
Network Requirement -> Borrow Bits

Host Requirement -> Preserve Host Bits
```

### Example 2 - Requirement of 20 Hosts

Meaning: We need to create subnets that can provide at least 20 usable addresses.

Purpose: To allocate separate subnets to different customers.

Example:

```
142.2.0.0/16

An ISP has 5 customers.

Each customer needs 20 public IP addresses.
```

My Notes:
- Required usable hosts = `20`.
- Check host bits:

`2^4 - 2 = 14 usable hosts`

`2^5 - 2 = 30 usable hosts`

- 4 host bits are insufficient.
- Therefore, 5 host bits are required.
- 5 host bits provide:

`2^5 = 32 total addresses`

`32 - 2 = 30 usable addresses`

New Subnet Mask:

`255.255.255.224`

CIDR:

`/27`

Therefore:

`142.2.0.0/27`


### Increment for /27

Meaning: The increment is calculated from the subnet mask.

Purpose: To find the starting address of every subnet.

Example:

```
255.255.255.224
```

My Notes:
- Last octet = `224`.
- Increment:

`256 - 224 = 32`

- Therefore, every subnet starts after `32` addresses.


### Creating Customer Networks

Example:

```
142.2.0.0/27
```

My Notes:

Subnet 1:

```
142.2.0.0 - 142.2.0.31
```

Subnet 2:

```
142.2.0.32 - 142.2.0.63
```

Subnet 3:

```
142.2.0.64 - 142.2.0.95
```

Subnet 4:

```
142.2.0.96 - 142.2.0.127
```

Subnet 5:

```
142.2.0.128 - 142.2.0.159
```

For the first subnet:

```
Network Address:
142.2.0.0

Usable Hosts:
142.2.0.1 - 142.2.0.30

Broadcast:
142.2.0.31
```


## Reverse Subnetting


### Reverse Subnetting

Meaning: Reverse subnetting means finding the subnet or network to which a given IP address belongs when the subnet mask is already known.

Purpose: To locate an IP address inside the correct subnet.

Example:

```
IP Address:

172.17.16.255

Subnet Mask:

255.255.240.0

Default Gateway:

172.17.0.1

CIDR:

/20
```

My Notes:
- First convert the subnet mask into binary.

```
255.255.240.0

11111111.11111111.11110000.00000000
```

- `/20` means:
  - 20 network bits
  - 12 host bits


### Finding the Increment in Reverse Subnetting

Meaning: The increment is calculated from the subnet mask octet where the network boundary occurs.

Purpose: To find the subnet boundaries.

Example:

```
255.255.240.0
```

My Notes:
- Interesting octet = third octet.
- Subnet mask value = `240`.
- Increment:

`256 - 240 = 16`

- Therefore, subnet boundaries occur every `16` in the third octet.

Networks:

```
172.17.0.0/20
172.17.16.0/20
172.17.32.0/20
172.17.48.0/20
172.17.64.0/20
```


### Locating an IP Address

Meaning: To locate an IP address, find the subnet range in which the IP falls.

Purpose: To determine the Network Address, usable host range and Broadcast Address.

Example:

```
IP Address:

172.17.16.255

Increment:

16
```

My Notes:
- Third-octet subnet boundaries are:

```
0, 16, 32, 48, 64, ...
```

- `16` belongs to the subnet range:

```
16 - 31
```

Therefore:

```
Network Address:

172.17.16.0/20

Usable Host Range:

172.17.16.1 - 172.17.31.254

Broadcast Address:

172.17.31.255
```


### Important Broadcast Address Confusion

Meaning: An IP ending in `.255` is not automatically a Broadcast Address.

Purpose: To correctly identify Broadcast Addresses after subnetting.

Example:

```
172.17.16.255/20
```

My Notes:
- The subnet is:

```
172.17.16.0 - 172.17.31.255
```

- Therefore:

```
Network:
172.17.16.0

Usable Host:
172.17.16.255

Broadcast:
172.17.31.255
```

Important:

`Broadcast Address` depends on the subnet mask and subnet boundary.

It is NOT decided simply by looking at the last octet.


## VLSM


### VLSM - Variable Length Subnet Mask

Meaning: VLSM allows different subnets inside the same network to use different subnet masks and different sizes.

Purpose: To use IP addresses efficiently according to the actual host requirements of each network.

Example:

```
Original Network:

172.21.42.0/24

Required Networks:

Workers = 117 hosts
Robots = 57 hosts
Servers = 26 hosts
Guests = 10 hosts
```

My Notes:
- All networks do not require the same number of hosts.
- If we give every network the same subnet size, many IP addresses will be wasted.
- VLSM allows us to create different subnet sizes according to requirements.
- In VLSM, always allocate from largest requirement to smallest.

Order:

```
117 -> 57 -> 26 -> 10
```


### VLSM Rule - Largest to Smallest

Meaning: In VLSM, the largest host requirement should be allocated first.

Purpose: To prevent address overlap and use the available address space efficiently.

Example:

```
117 -> 57 -> 26 -> 10
```

My Notes:
- Workers need the largest subnet.
- Robots come next.
- Servers come next.
- Guests need the smallest subnet.

Important:

```
Largest Requirement -> Smallest Requirement
```


### VLSM - Workers Network

Meaning: Workers need `117` usable host addresses.

Purpose: To find the smallest subnet that can support at least 117 hosts.

Example:

```
Required Hosts:

117
```

My Notes:
- Check host bits:

`2^6 - 2 = 62`

`2^7 - 2 = 126`

- 6 host bits are insufficient.
- Therefore, 7 host bits are required.
- CIDR:

`32 - 7 = /25`

Subnet Mask:

`255.255.255.128`

Increment:

`256 - 128 = 128`

Workers Network:

`172.21.42.0/25`

Address Range:

```
172.21.42.0 - 172.21.42.127
```

Usable Hosts:

```
172.21.42.1 - 172.21.42.126
```

Broadcast:

`172.21.42.127`


### VLSM - Robots Network

Meaning: Robots need `57` usable host addresses.

Purpose: To allocate the next available subnet after the Workers subnet.

Example:

```
Required Hosts:

57
```

My Notes:
- Check host bits:

`2^5 - 2 = 30`

`2^6 - 2 = 62`

- 5 host bits are insufficient.
- Therefore, 6 host bits are required.
- CIDR:

`32 - 6 = /26`

Subnet Mask:

`255.255.255.192`

Increment:

`256 - 192 = 64`

Robots Network:

`172.21.42.128/26`

Address Range:

```
172.21.42.128 - 172.21.42.191
```

Usable Hosts:

```
172.21.42.129 - 172.21.42.190
```

Broadcast:

`172.21.42.191`


### VLSM - Servers Network

Meaning: Servers need `26` usable host addresses.

Purpose: To allocate a smaller subnet because the server network requires fewer hosts.

Example:

```
Required Hosts:

26
```

My Notes:
- Check host bits:

`2^4 - 2 = 14`

`2^5 - 2 = 30`

- 4 host bits are insufficient.
- Therefore, 5 host bits are required.
- CIDR:

`32 - 5 = /27`

Subnet Mask:

`255.255.255.224`

Increment:

`256 - 224 = 32`

Servers Network:

`172.21.42.192/27`

Address Range:

```
172.21.42.192 - 172.21.42.223
```

Usable Hosts:

```
172.21.42.193 - 172.21.42.222
```

Broadcast:

`172.21.42.223`

### VLSM - Guests Network

Meaning: Guests need `10` usable host addresses.

Purpose: To allocate the smallest suitable subnet for the Guest network.

Example:

```
Required Hosts:

10
```

My Notes:
- Check host bits:

`2^3 - 2 = 6`

`2^4 - 2 = 14`

- 3 host bits are insufficient.
- Therefore, 4 host bits are required.
- CIDR:

`32 - 4 = /28`

Subnet Mask:

`255.255.255.240`

Increment:

`256 - 240 = 16`

Guests Network:

`172.21.42.224/28`

Address Range:

```
172.21.42.224 - 172.21.42.239
```

Usable Hosts:

```
172.21.42.225 - 172.21.42.238
```

Broadcast:

`172.21.42.239`


### Complete VLSM Allocation

Meaning: The original `/24` network is divided into different-sized subnets according to the host requirements.

Purpose: To allocate IP addresses efficiently without overlapping networks.

Example:

```
Original Network:

172.21.42.0/24
```

My Notes:

Workers:

```
172.21.42.0/25

Usable:
172.21.42.1 - 172.21.42.126

Broadcast:
172.21.42.127
```

Robots:

```
172.21.42.128/26

Usable:
172.21.42.129 - 172.21.42.190

Broadcast:
172.21.42.191
```

Servers:

```
172.21.42.192/27

Usable:
172.21.42.193 - 172.21.42.222

Broadcast:
172.21.42.223
```

Guests:

```
172.21.42.224/28

Usable:
172.21.42.225 - 172.21.42.238

Broadcast:
172.21.42.239
```

Diagram:

```
172.21.42.0/24
|
+------------------------ Workers ------------------------+
0                                                       127
|
+------------- Robots -------------+
128                                191
|
+------- Servers -------+
192                    223
|
+---- Guests ----+
224            239
```


### VLSM Host Calculation Shortcut

Meaning: We can quickly determine the required prefix length by finding the smallest power of 2 that provides enough usable hosts.

Purpose: To solve subnetting problems faster.

Example:

```
117 hosts

2^7 = 128 total addresses

128 - 2 = 126 usable hosts

Therefore:

7 host bits

32 - 7 = /25
```

My Notes:
- Common host requirements:

```
2 host bits = 2 usable hosts

3 host bits = 6 usable hosts

4 host bits = 14 usable hosts

5 host bits = 30 usable hosts

6 host bits = 62 usable hosts

7 host bits = 126 usable hosts

8 host bits = 254 usable hosts
```

- Always choose the smallest subnet that satisfies the host requirement.


## Key Learnings

- Subnetting divides one large network into smaller networks.
- Host requirements determine how many host bits must be preserved.
- Network requirements determine how many bits need to be borrowed.
- Usable Hosts = `2^h - 2`
- More host bits = more hosts per subnet.
- More borrowed bits = more subnets.
- Subnet Increment = `256 - subnet mask value`.
- `/26` provides `62` usable hosts.
- `/27` provides `30` usable hosts.
- `/28` provides `14` usable hosts.
- An IP ending in `.255` is not automatically a Broadcast Address.
- Broadcast Address depends on the subnet mask and subnet boundary.
- Reverse subnetting is used to find which subnet an IP address belongs to.
- VLSM allows different subnet sizes inside the same network.
- In VLSM, allocate networks from largest host requirement to smallest.
- VLSM reduces IP address wastage.
- Always identify:
  - Network Address
  - Usable Host Range
  - Broadcast Address
  - Subnet Mask / CIDR
  - Increment
