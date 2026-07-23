# Day 2 - What is a Router?


## What is a Router?

Meaning: A router is a networking device that connects different networks together.

Purpose: To allow communication between different IP networks.

Example:

Home Network
        │
     Router
        │
Coffee Server Network

My Notes:
- A router connects different networks.
- A switch connects devices within the same network.
- Routers work at Layer 3.
- Switches work at Layer 2.
- Routers make forwarding decisions using IP addresses.
- Switches forward frames using MAC addresses.


## Types of Routers

Meaning: Routers come in different types depending on where they are used.

Purpose: To connect different networks in home, business, and enterprise environments.

Example:
- Cisco Router
- Ubiquiti Router
- Home Router

My Notes:
- Routers may look different.
- Their primary job is always the same.
- They connect different networks.


## Same Network vs Different Network

Meaning: A network is determined by a group of IP addresses.

Purpose: To identify whether communication needs a switch or a router.

Example:

Network 1

10.1.1.0
↓

10.1.1.255

Network 2

23.227.38.0
↓

23.227.38.255

My Notes:
- Devices within the same IP range belong to the same network.
- Devices with different IP ranges belong to different networks.
- A switch cannot communicate between different networks.
- A router is required to connect different networks.


## Ping Within the Same Network

Meaning: Devices in the same network communicate directly through a switch.

Purpose: To understand how communication happens inside a LAN.

Example:

Johnny
IP: 10.1.1.3

↓

Ping

↓

Mark
IP: 10.1.1.2

My Notes:
- Johnny checks that Mark belongs to the same network.
- Johnny already knows Mark's IP address.
- The switch cannot use IP addresses.
- The switch requires the destination MAC address.


## ARP (Address Resolution Protocol)

Meaning: ARP is a protocol used to find the MAC address of a device using its IP address.

Purpose: To allow devices to communicate on the local network.

Example:

IP Address

↓

ARP

↓

MAC Address

My Notes:
- ARP stands for Address Resolution Protocol.
- It converts an IP address into a MAC address.
- ARP is used only inside the local network.
- The switch needs the destination MAC address before forwarding the frame.


## Broadcast

Meaning: Broadcast sends a message to every device on the same network.

Purpose: To find the owner of an unknown MAC address.

Example:

Destination MAC Address

FF:FF:FF:FF:FF:FF

My Notes:
- Johnny sends an ARP Request.
- The destination MAC is FF:FF:FF:FF:FF:FF.
- The switch forwards the broadcast to every port.
- Every device checks whether the requested IP belongs to it.
- Only the correct device replies.


## ARP Reply

Meaning: The device with the matching IP address replies with its MAC address.

Purpose: To allow communication using Layer 2 addresses.

Example:

Johnny:
Who has 10.1.1.2?

↓

Mark:
I am 10.1.1.2

↓

MAC Address Sent

My Notes:
- Only Mark replies because the requested IP belongs to him.
- Johnny learns Mark's MAC address.
- The MAC address is stored in the ARP table.
- Johnny can now send the frame through the switch.


## Successful Ping

Meaning: Communication is completed after the destination MAC address is known.

Purpose: To verify connectivity between devices on the same network.

Example:

Johnny

↓

Switch

↓

Mark

↓

Reply

↓

Switch

↓

Johnny

My Notes:
- The switch forwards the frame using the destination MAC address.
- Mark replies to Johnny.
- Johnny receives the reply successfully.
- Communication within the same network does not require a router.


## Default Gateway

Meaning: A default gateway is the router that sends data from one network to another network.

Purpose: To forward packets when the destination is outside the local network.

Example:

Johnny PC
IP: 10.1.1.3

↓

Default Gateway
10.1.1.1

↓

Coffee Server
23.227.38.65

My Notes:
- If the destination is outside the local network, the packet is sent to the default gateway.
- The default gateway is the router.
- The router forwards the packet to the destination network.


## Communication Between Different Networks

Meaning: Devices on different networks cannot communicate directly.

Purpose: To understand why a router is required.

Example:

Johnny
10.1.1.3

↓

Router

↓

Coffee Server
23.227.38.65

My Notes:
- Johnny wants to communicate with the Coffee Server.
- Johnny checks the destination IP address.
- The destination belongs to another network.
- Johnny sends the packet to the default gateway instead of directly to the server.


## ARP for the Default Gateway

Meaning: Before sending the packet, Johnny must know the MAC address of the router.

Purpose: To send the Ethernet frame to the router.

Example:

Johnny

↓

ARP Request

"Who has 10.1.1.1?"

↓

Router

"I am 10.1.1.1"

↓

Router MAC Address

My Notes:
- Johnny already knows the router's IP address.
- Johnny does not know the router's MAC address.
- ARP is used to find the router's MAC address.
- The router replies with its MAC address.
- Johnny stores the router's MAC address in the ARP table.


## Packet Reaches the Router

Meaning: The router receives the packet and checks the destination IP address.

Purpose: To decide where the packet should be forwarded.

Example:

Johnny

↓

Switch

↓

Router

↓

Destination IP:
23.227.38.65

My Notes:
- The switch forwards the frame to the router.
- The router removes the Layer 2 header.
- The router reads the destination IP address.
- The router decides where the packet should go next.


## Router Looks for the Destination

Meaning: The router checks whether it already knows the destination MAC address.

Purpose: To forward the packet to the destination device.

Example:

Destination:

23.227.38.65

↓

MAC Address?

↓

ARP if Required

My Notes:
- The router checks its ARP table.
- If the MAC address is already available, it forwards the packet immediately.
- If not, the router sends an ARP Request on the destination network.


## Router Sends an ARP Request

Meaning: The router asks for the MAC address of the destination device.

Purpose: To discover the destination MAC address.

Example:

Router:

Who has 23.227.38.65?

↓

Coffee Server:

I am 23.227.38.65

↓

Server MAC Address

My Notes:
- The router broadcasts an ARP Request.
- The Coffee Server replies with its MAC address.
- The router stores the MAC address in its ARP table.


## Router Forwards the Packet

Meaning: After learning the destination MAC address, the router forwards the packet.

Purpose: To complete communication between different networks.

Example:

Johnny

↓

Switch

↓

Router

↓

Switch

↓

Coffee Server

My Notes:
- The router creates a new Ethernet frame.
- The source and destination MAC addresses are changed.
- The IP addresses remain the same.
- The packet reaches the Coffee Server successfully.


## Layer 2 and Layer 3 Information

Meaning: IP addresses identify devices across networks, while MAC addresses identify devices within the local network.

Purpose: To understand what changes and what stays the same during routing.

Example:

IP Address → Remains the Same

MAC Address → Changes at Every Hop

My Notes:
- Source IP remains the same.
- Destination IP remains the same.
- Source MAC changes.
- Destination MAC changes.
- Every router creates a new Layer 2 frame before forwarding the packet.


## DNS (Domain Name System)

Meaning: DNS is a system that converts a domain name into an IP address.

Purpose: To allow users to access websites using names instead of remembering IP addresses.

Example:

networkchuck.coffee

↓

23.227.38.65

My Notes:
- Computers communicate using IP addresses.
- Humans prefer domain names because they are easier to remember.
- DNS converts the domain name into the correct IP address.


## DNS Query

Meaning: A DNS Query is a request sent to a DNS server to find the IP address of a domain name.

Purpose: To obtain the destination IP address before communicating with the web server.

Example:

PC

↓

DNS Server

↓

"What is the IP address of networkchuck.coffee?"

↓

23.227.38.65

My Notes:
- The computer sends a DNS Query to the DNS server.
- The DNS server searches its records.
- The DNS server replies with the IP address.
- Now the computer knows where to send the request.


## HTTP GET Request

Meaning: HTTP GET is a request sent by a web browser to download a webpage.

Purpose: To request data from a web server.

Example:

Browser

↓

HTTP GET

↓

Coffee Server

↓

Web Page

My Notes:
- After receiving the destination IP, the browser sends an HTTP GET request.
- The request reaches the Coffee Server through the router.
- The Coffee Server processes the request.
- The server sends the webpage back to the browser.


## Complete Communication Flow

Meaning: This is the complete process of opening a website from start to finish.

Purpose: To understand how different networking protocols work together.

Example:

Browser

↓

DNS Query

↓

DNS Reply

↓

HTTP GET

↓

Router

↓

Coffee Server

↓

HTTP Response

↓

Router

↓

Browser

My Notes:
- The browser first performs DNS resolution.
- DNS returns the server's IP address.
- The browser sends an HTTP GET request.
- The router forwards the packet to the destination network.
- The Coffee Server sends the response back.
- The webpage is displayed in the browser.


## Router Routing Table

Meaning: A routing table contains all the networks known by the router.

Purpose: To decide where packets should be forwarded.

Example:

Router>

enable

Router#

show ip route

My Notes:
- Every router maintains a routing table.
- The routing table tells the router which interface should be used.
- The router checks this table before forwarding packets.


## show ip route

Meaning: The `show ip route` command displays the router's routing table.

Purpose: To verify the networks connected to the router.

Example:

```text
Router# show ip route

Gateway of last resort is not set

     10.0.0.0/8 is variably subnetted
C    10.1.1.0/24 is directly connected, GigabitEthernet0/0

     23.0.0.0/8 is variably subnetted
C    23.227.38.0/24 is directly connected, GigabitEthernet0/1
```

My Notes:
- `C` means **Connected**.
- Both networks are directly connected to the router.
- GigabitEthernet0/0 connects to the 10.1.1.0/24 network.
- GigabitEthernet0/1 connects to the 23.227.38.0/24 network.
- The router uses this table to forward packets to the correct network.


## Key Learnings

- A router connects different networks.
- A switch connects devices within the same network.
- Devices on different networks communicate through a router.
- ARP converts an IP address into a MAC address.
- Broadcast is used to discover unknown MAC addresses.
- The default gateway forwards packets outside the local network.
- Routers use ARP on directly connected networks.
- Source and destination IP addresses remain the same during routing.
- Source and destination MAC addresses change at every hop.
- DNS converts domain names into IP addresses.
- A DNS Query retrieves the IP address of a website.
- HTTP GET requests a webpage from a web server.
- The routing table determines where packets should be forwarded.
- The `show ip route` command displays the router's routing table.
