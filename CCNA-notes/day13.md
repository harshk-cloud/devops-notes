# Day 13 - Public IP, Private IP, NAT & IPv6 Introduction


## Why We Ran Out of IPv4 Addresses

Meaning:
IPv4 uses a 32-bit address, which provides a limited number of unique IP addresses.

Purpose:
To understand why the Internet needed a solution for the IPv4 address shortage.

Example:

```
2^32 = 4,294,967,296
≈ 4.3 Billion IPv4 Addresses
```

My Notes:
- IPv4 uses 32 bits.
- Total possible IPv4 addresses = 2³².
- In the 1990s, this seemed more than enough.
- At that time, most people owned only one computer.
- Today, every home contains many Internet-connected devices.
- Examples include smartphones, laptops, TVs, printers, cameras, gaming consoles, smart bulbs, and IoT devices.
- Because every Internet-connected device needs an IP address, IPv4 addresses were exhausted.


## RFC 1918

Meaning:
RFC 1918 is an Internet standard that defines private IPv4 address ranges.

Purpose:
To reduce the use of public IPv4 addresses and slow down IPv4 exhaustion.

Example:

```
RFC = Request For Comments
```

My Notes:
- RFC stands for Request For Comments.
- RFC documents define Internet standards.
- RFC 1918 introduced Private IP Addresses.
- Instead of giving every device a public IP, devices can now use private IPs inside local networks.
- This solution significantly delayed IPv4 exhaustion.


## Public IP Address

Meaning:
A Public IP Address is a globally unique IP address that is reachable over the Internet.

Purpose:
To allow communication between devices across the Internet.

Example:

```
Google      -> 142.x.x.x
Cloudflare  -> 104.x.x.x
AWS         -> 54.x.x.x
```

My Notes:
- Every public IP must be unique.
- Two devices on the Internet cannot use the same public IP.
- Public IPs are assigned by Internet Service Providers (ISPs).
- Public IPs are routable on the Internet.
- Websites, servers, and Internet-facing devices require public IP addresses.


## Why Public IPs Alone Were Not Enough

Meaning:
The number of Internet-connected devices became much larger than the available IPv4 addresses.

Purpose:
To understand why private IP addressing became necessary.

Example:

```
Home Network

Phone
Laptop
TV
Printer
Camera
Gaming Console
Tablet
Smart Bulb
```

My Notes:
- Modern homes may contain dozens or even hundreds of connected devices.
- Assigning a unique public IP to every device is impossible with IPv4.
- A better solution was required.
- RFC 1918 solved this problem using private IP addresses.


## Private IP Address

Meaning:
A Private IP Address is used only inside a local network and cannot be reached directly from the Internet.

Purpose:
To allow millions of local devices to reuse the same IP ranges safely.

Example:

```
Home Network

Phone   -> 192.168.1.10
Laptop  -> 192.168.1.20
TV      -> 192.168.1.30
```

My Notes:
- Private IP addresses work only inside local networks.
- They are not Internet routable.
- Devices outside your network cannot directly access them.
- Most home routers assign private IP addresses automatically using DHCP.


## Private IPv4 Address Ranges (RFC 1918)

Meaning:
RFC 1918 reserves three IPv4 ranges for private networking.

Purpose:
To provide reusable IP ranges for homes, schools, and businesses.

Example:
```
| Class | Private Range | Default Mask | CIDR |
|-------|---------------|--------------|------|
| A | 10.0.0.0 - 10.255.255.255 | 255.0.0.0 | /8 |
| B | 172.16.0.0 - 172.31.255.255 | 255.255.0.0 | /12 |
| C | 192.168.0.0 - 192.168.255.255 | 255.255.255.0 | /16 |

```

My Notes:
- Only these three ranges are private.
- 192.168.x.x is the most common range used in home networks.
- Large organizations often use the 10.x.x.x range.
- Medium-sized organizations commonly use the 172.16.x.x to 172.31.x.x range.


## Why Private IP Addresses Are Not Unique

Meaning:
Private IP addresses can be reused in different networks.

Purpose:
To save public IPv4 addresses.

Example:

```
Home A
192.168.1.5

Home B
192.168.1.5

Home C
192.168.1.5
```

My Notes:
- Multiple networks can use the same private IP addresses.
- This is possible because private IPs are not visible on the public Internet.
- Unlike public IPs, uniqueness is required only inside the local network.


## Public IP vs Private IP

```
| Feature | Public IP | Private IP |
|----------|-----------|------------|
| Internet Reachable | Yes | No |
| Globally Unique | Yes | No |
| Assigned By | ISP | Router/DHCP |
| Routable on Internet | Yes | No |
| Used For | Internet Communication | Local Network Communication |

```

## NAT (Network Address Translation)

Meaning:
NAT is a process in which a router translates private IP addresses into a public IP address.

Purpose:
To allow multiple private devices to share one public IP address.

Example:

```
Internet
      |
 Public IP
      |
+-------------+
|   Router    |
|     NAT     |
+-------------+
      |
-------------------------
|         |         |
PC      Phone      TV
```

My Notes:
- NAT is performed by the router.
- Devices continue using private IP addresses internally.
- The router converts private IP addresses into a public IP before sending traffic to the Internet.
- NAT greatly reduced the need for public IPv4 addresses.
- Almost every home network uses NAT today.


## How NAT Works

Meaning:
NAT translates a private IP address into a public IP address before traffic leaves the local network.

Purpose:
To allow multiple devices to access the Internet using a single public IP address.

Example:

```
Request Flow

Laptop
192.168.1.20
      |
      v
+-------------+
|   Router    |
|     NAT     |
+-------------+
      |
      v
Public IP
11.5.4.28
      |
      v
Internet
```

My Notes:
- Every device sends traffic using its private IP.
- The router replaces the private IP with its public IP.
- The destination website only sees the router's public IP.
- This process happens automatically.
- Users do not notice NAT working in the background.


## NAT Return Traffic

Meaning:
When a website sends data back, the router forwards it to the correct device.

Purpose:
To ensure the response reaches the original device that made the request.

Example:

```
Website
    |
    v
Public IP
11.5.4.28
    |
    v
+-------------+
|   Router    |
| NAT Table   |
+-------------+
    |
-------------------------
|         |         |
PC      Phone      TV
```

My Notes:
- The router keeps track of outgoing connections.
- It maintains a NAT translation table.
- When the reply returns, the router checks the table.
- The router forwards the packet to the correct private IP.
- This process is transparent to the user.


## ISP and Public IP Address

Meaning:
An Internet Service Provider (ISP) assigns a public IP address to your router.

Purpose:
To connect your home network to the Internet.

Example:

```
Internet
     |
     |
ISP (Airtel / Jio / BSNL)
     |
Public IP
11.5.4.28
     |
+-------------+
|   Router    |
+-------------+
```

My Notes:
- ISPs provide Internet connectivity.
- Home routers usually receive one public IPv4 address.
- Every device inside the home shares this public IP using NAT.
- Businesses may receive multiple public IP addresses depending on their plan.


## Checking Your Private IP Address

Meaning:
You can view your device's private IP using operating system commands.

Purpose:
To identify the IP assigned to your device inside the local network.

Example:

Windows

```
ipconfig
```

Linux

```
ip addr
```

or

```
ip a
```

My Notes:
- Windows displays IPv4 information using `ipconfig`.
- Linux commonly uses `ip addr` or `ip a`.
- Most home networks use addresses beginning with `192.168.x.x`.


## Checking Your Public IP Address

Meaning:
Your public IP is the address seen by websites on the Internet.

Purpose:
To identify the public IP assigned by your ISP.

Example:

```
Google

What is my IP
```

My Notes:
- Search "What is my IP" in Google.
- The displayed address is your router's public IP.
- Every device in your home usually appears with the same public IPv4 address.


## IPv6 Introduction

Meaning:
IPv6 is the next generation Internet Protocol designed to replace IPv4.

Purpose:
To provide a much larger address space than IPv4.

Example:

```
IPv4

192.168.1.20
```

```
IPv6

2001:db8:85a3:0000:0000:8a2e:0370:7334
```

My Notes:
- IPv4 uses 32-bit addresses.
- IPv6 uses 128-bit addresses.
- IPv6 supports approximately 2¹²⁸ addresses.
- IPv6 removes the IPv4 address shortage problem.
- Many mobile networks already use IPv6.
- IPv4 is still widely used and remains important for CCNA.

## IPv4 vs IPv6

```
| Feature | IPv4 | IPv6 |
|----------|------|-------|
| Address Length | 32-bit | 128-bit |
| Address Format | Decimal | Hexadecimal |
| Separator | Dot (.) | Colon (:) |
| Total Addresses | 2³² | 2¹²⁸ |
| Address Exhaustion | Yes | No (Practically) |
```

## Key Learnings

- IPv4 provides approximately 4.3 billion unique addresses.
- RFC 1918 introduced private IPv4 address ranges.
- Public IP addresses are globally unique and Internet routable.
- Private IP addresses are used only inside local networks.
- NAT translates private IP addresses into a public IP address.
- Home routers perform NAT automatically.
- ISPs usually assign one public IPv4 address to a home router.
- `ipconfig` (Windows) and `ip addr` (Linux) display the private IP address.
- "What is my IP" shows the public IP address.
- IPv6 uses 128-bit addressing and solves the IPv4 address exhaustion problem.

