# Day 5 - OSI Upper Layers & Transport Layer (Application, Presentation, Session, TCP, UDP & Ports)


## Application Layer

Meaning: The Application Layer (Layer 7) is the layer where users interact with the network through applications.

Purpose: It provides an interface between software applications and the network.

Example: Opening YouTube in Chrome or sending a message on WhatsApp.

My Notes:
- This is the top layer of the OSI Model.
- The application itself (Chrome, Firefox, WhatsApp, PUBG, etc.) is NOT the Application Layer.
- The Application Layer allows these applications to communicate over the network.
- It receives the user's request and passes the data to the Presentation Layer.

Example Flow:

User → Chrome Browser → Application Layer

Example:
- You type **youtube.com** in Chrome.
- Chrome requests the YouTube webpage.
- The request enters the Application Layer first.

Common Application Layer Protocols:
- HTTP
- HTTPS
- FTP
- SMTP
- DNS
- DHCP
- SNMP
- TFTP


## Presentation Layer

Meaning: The Presentation Layer (Layer 6) prepares data so that both sender and receiver understand it.

Purpose: It formats, encrypts, decrypts and sometimes compresses data.

Example: Opening a PDF file or using HTTPS encryption.

My Notes:


### 1. Data Formatting

- Converts data into a standard format.
- Ensures the receiving device can understand the file.

Example:
- resume.pdf opens correctly because your computer understands the PDF format.
- An unknown file extension may not open.

Common Formats:
- HTML
- XML
- JSON
- JPEG
- PNG
- PDF
- MP3


### 2. Encryption

- Converts readable data into unreadable data.
- Protects sensitive information during transmission.

Example:

Without Encryption:
Password = 123456

After Encryption:
agjh82j280!dk1

Today most secure websites use:
- TLS (Transport Layer Security)
- SSL is the older technology.


### 3. Compression

- Reduces file size before transmission.
- Saves bandwidth and speeds up transfer.


## Session Layer

Meaning: The Session Layer (Layer 5) creates, manages and ends communication sessions between two devices.

Purpose: It controls conversations between applications.

Example: Using Chrome, Spotify and WhatsApp at the same time.

My Notes:
- Starts a communication session.
- Maintains the session while data is exchanged.
- Ends the session after communication is complete.
- Multiple sessions can run simultaneously.

Simple Flow:

Start Session
↓
Maintain Session
↓
End Session

Examples of Session Layer Protocols:
- L2TP
- RTCP
- H.245
- SOCKS


## Transport Layer

Meaning: The Transport Layer (Layer 4) decides how data should be delivered between devices.

Purpose: It provides reliable or fast communication using TCP or UDP.

Example: File download uses TCP while voice calls often use UDP.

My Notes:
- This is where actual end-to-end communication begins.
- The Presentation Layer prepares the data.
- The Session Layer starts communication.
- The Transport Layer decides whether to use TCP or UDP.
- Data at this layer is called a Segment.


## TCP (Transmission Control Protocol)

Meaning: TCP is a reliable communication protocol.

Purpose: Ensures every packet reaches the destination correctly.

Example: Downloading files or opening websites.

My Notes:
- Reliable communication.
- Packets are acknowledged.
- Lost packets are retransmitted.
- Maintains packet order.
- Slightly slower because of reliability.


### TCP 3-Way Handshake

Before communication begins:

Step 1:
Client → SYN → "Can we communicate?"

Step 2:
Server → SYN + ACK → "Yes, I'm ready."

Step 3:
Client → ACK → "Great, let's start."

Diagram:

Client                     Server

SYN ----------------------->

      <---------------- SYN + ACK

ACK ----------------------->

Communication Starts


## UDP (User Datagram Protocol)

Meaning: UDP is a fast communication protocol.

Purpose: Sends data quickly without checking whether every packet arrived.

Example: Video calls, gaming and live streaming.

My Notes:
- No acknowledgement.
- No retransmission.
- Faster than TCP.
- Some packets may be lost.
- Best for real-time applications.

Common Uses:
- Voice Calls
- Video Calls
- Online Gaming
- DNS
- Live Streaming


## TCP vs UDP

| TCP | UDP |
|------|------|
| Reliable | Fast |
| Acknowledgement | No Acknowledgement |
| Retransmits Lost Packets | Does Not Retransmit |
| Ordered Delivery | No Order Guarantee |
| Slower | Faster |


## Why Streaming Uses UDP

Imagine someone says:

"I really like coffee."

Packets:

Packet 1 ✓
Packet 2 ✗ Lost
Packet 3 ✓
Packet 4 ✓

You hear:

"I really ... coffee."

One word is missing, but the conversation continues.

If TCP were used:

Packet 2 Lost
↓
Sender retransmits Packet 2
↓
Video pauses until the packet arrives.

Therefore:

- Streaming prefers speed over perfect accuracy.
- Gaming also prefers low delay.
- Voice calls cannot wait for retransmissions.

Note:
Modern YouTube streaming often uses **HTTP/3 (QUIC)** over UDP. If HTTP/3 is unavailable, it may fall back to HTTP/2 over TCP.


## Wireshark Demo

Meaning: Wireshark is a packet analyzer.

Purpose: Captures and analyzes network traffic.

Example: Watching packets while opening YouTube.

My Notes:
- Captures all packets.
- Shows TCP Handshake.
- Shows TCP and UDP packets.
- Displays source and destination ports.
- Displays source and destination IP addresses.


## Port Numbers

Meaning: A Port Number identifies a specific service running on a device.

Purpose: Allows multiple services to run on the same IP address.

Example:

House Number = IP Address

Room Number = Port Number

One house can have many rooms.

Similarly,

One server can run:
- Website
- FTP
- SSH
- RDP

Each service uses a different port.

Example:

173.194.191.167:443

Meaning:
Connect to the HTTPS service running on that IP address.


## Common Port Numbers

| Port | Protocol |
|------:|----------|
| TCP 20,21 | FTP |
| TCP 22 | SSH |
| TCP 23 | Telnet |
| TCP 25 | SMTP |
| TCP/UDP 53 | DNS |
| UDP 67,68 | DHCP |
| UDP 69 | TFTP |
| TCP 80 | HTTP |
| UDP 123 | NTP |
| UDP 161 | SNMP |
| TCP 443 | HTTPS |
| TCP 3389 | RDP |


## Source Port

Meaning: A temporary port selected by the client device.

Purpose: Helps the client identify which application should receive the reply.

Example:

Laptop → Source Port = 57095

Browser chooses this temporary port automatically.

These are called **Ephemeral Ports**.

Examples:
- 57095
- 49120
- 52311


## Destination Port

Meaning: The fixed port number of the service running on the server.

Purpose: Helps the server decide which application should receive the incoming request.

Example:

HTTPS → TCP 443

SSH → TCP 22

FTP → TCP 21

When a packet reaches the server:

Destination Port = 443

↓

Server sends packet to the HTTPS service.


## Source Port vs Destination Port

Client Request:

57095 → 443

(Source Port → Destination Port)

Server Reply:

443 → 57095

(Destination Port → Source Port)

This allows multiple applications like YouTube, Spotify and Gmail to communicate simultaneously without mixing their data.


## Encapsulation at the Transport Layer

Application Layer
↓
Creates Data

Transport Layer
↓
Adds TCP/UDP Header
↓
Adds Source Port
↓
Adds Destination Port
↓
Creates Segment

Network Layer
↓
Adds Source IP
↓
Adds Destination IP
↓
Creates Packet

Data Link Layer
↓
Adds MAC Addresses
↓
Creates Frame

Physical Layer
↓
Transmits Bits

## Key Learnings

- The Application Layer provides the interface between applications and the network.
- The Presentation Layer handles formatting, encryption and compression.
- The Session Layer starts, maintains and ends communication sessions.
- The Transport Layer uses TCP or UDP depending on the application's needs.
- TCP provides reliable communication using acknowledgements and retransmissions.
- UDP provides faster communication by avoiding acknowledgements.
- TCP uses a 3-Way Handshake before communication begins.
- Port numbers identify services running on a device.
- Destination Ports identify server services, while Source Ports identify client applications.
- Ephemeral Ports are temporary client-side ports selected automatically.
- Wireshark can capture and analyze packets, ports and protocols during communication.
