
# Day 4 - Real Life Example (OSI Model, TCP/IP & Encapsulation)

## Topic Overview

Meaning: This lesson explains how data travels from a client device to a web server using the OSI Model and TCP/IP Model.

Purpose: To understand how data is encapsulated, transmitted through the network, and de-encapsulated at the destination.

Example: Johnny opens https://networkchuck.coffee in his web browser.


## Network Topology

Johnny Laptop

↓

Switch

↓

Router

↓

Switch

↓

Web Server (networkchuck.coffee)


## Step 1 - Application Layer (Layer 7)

Meaning: The Application Layer is where the browser creates the request.

Purpose: To provide network services directly to applications.

Example:

GET /

Host: networkchuck.coffee

At this stage, the information is called **Data**.

Common Protocols:
- HTTP
- HTTPS
- DNS
- FTP
- SMTP


## Step 2 - Transport Layer (Layer 4)

Meaning: The Transport Layer provides end-to-end communication between devices.

Purpose: To ensure reliable data delivery and identify applications using port numbers.

TCP adds its own header.

Result:

TCP Header + Data = Segment

Important Points:
- TCP is Reliable.
- TCP is Connection-Oriented.
- TCP uses the Three-Way Handshake before transferring data.

Example:

Source Port: 1031 (Ephemeral Port)

Destination Port: 443 (HTTPS)


## Step 3 - Network Layer (Layer 3)

Meaning: The Network Layer provides logical addressing and routing.

Purpose: To deliver packets from the source network to the destination network.

The IP Header is added.

Example:

Source IP: 10.1.1.3

Destination IP: 23.227.38.65

Result:

IP Header + TCP Header + Data = Packet

At this stage, the data is called a **Packet**.


## Step 4 - Data Link Layer (Layer 2)

Meaning: The Data Link Layer provides communication within the local network.

Purpose: To deliver data using MAC addresses and detect transmission errors.

The Ethernet Header and Ethernet Trailer are added.

The Data Link Layer adds:
- Ethernet Header
- Ethernet Trailer

The Ethernet Header contains:
- Source MAC Address
- Destination MAC Address

The Ethernet Trailer contains:
- Frame Check Sequence (FCS)

The FCS is used for error detection to verify whether the Frame was corrupted during transmission.

Example:

Source MAC: Johnny's Laptop

Destination MAC: Router Interface

Result:

Ethernet Header + IP Header + TCP Header + Data + Ethernet Trailer = Frame

At this stage, the data is called a **Frame**.

Note:

The Ethernet Trailer contains the **Frame Check Sequence (FCS)**, which is used for error detection.


## Step 5 - Physical Layer (Layer 1)

Meaning: The Physical Layer converts the frame into electrical, optical, or radio signals.

Purpose: To transmit bits through the physical medium.

Frame

↓

Bits (0s and 1s)

At this stage, the data is called **Bits**.


## Encapsulation

Meaning: Encapsulation is the process of adding protocol headers (and the Layer 2 trailer) as data moves down the OSI Model.

Flow:

Data

↓

TCP Header + Data = Segment

↓

IP Header + Segment = Packet

↓

Ethernet Header + Packet + Ethernet Trailer = Frame

↓

Bits

Each layer adds its own header, while the Data Link Layer adds both an Ethernet Header and an Ethernet Trailer.


## Data Journey Through the Network

Johnny

↓

Switch

↓

Router

↓

Switch

↓

Web Server

The Switch forwards Frames using MAC addresses.

The Router removes the old Layer 2 Header and Trailer, reads the IP Header, creates a new Layer 2 Header and Trailer, and forwards a new Frame.

The Source IP and Destination IP remain the same throughout the journey (unless NAT is used).

Only the Source MAC and Destination MAC change at every router hop.


## Server Side (De-Encapsulation)

Meaning: De-Encapsulation is the reverse process of Encapsulation.

The server receives the Frame and removes headers layer by layer.

Frame

↓

Packet

↓

Segment

↓

Data

Layer 2 removes the Ethernet Header and Trailer.

Layer 3 reads the IP Header.

Layer 4 reads the TCP Header.

Layer 7 delivers the original Data to the application.


## Server Reply

The server performs the same process in reverse.

Data

↓

Segment

↓

Packet

↓

Frame

↓

Bits

The reply travels back through the network to Johnny.

Example:

Source Port: 443

Destination Port: 1031

## Additional OSI Layer Information


### Presentation Layer (Layer 6)

Meaning: Responsible for data formatting, encryption, and decryption.

Example:
- SSL/TLS Encryption (HTTPS)
- JPEG
- PNG


### Session Layer (Layer 5)

Meaning: Responsible for establishing, maintaining, and terminating communication sessions.

Purpose: Keeps communication active between the client and the server.


## Important Points

- Layer 7 = Data
- Layer 4 = Segment
- Layer 3 = Packet
- Layer 2 = Frame
- Layer 1 = Bits

- Encapsulation = Adding Headers
- De-Encapsulation = Removing Headers

- TCP = Reliable + Connection-Oriented + Three-Way Handshake
- UDP = Fast + Connectionless

- HTTPS uses Port 443.
- HTTP uses Port 80.
- Client devices use Ephemeral (Temporary) Ports.

- Switches forward Frames using MAC addresses.
- Routers forward Packets using IP addresses.
- Routers change MAC addresses at every hop.
- Source and Destination IP addresses remain the same from end to end (unless NAT is used).


## Key Learnings

- A browser creates an HTTP/HTTPS request at the Application Layer.
- TCP adds reliability by using acknowledgements and the Three-Way Handshake.
- The Network Layer adds logical addressing using IP addresses.
- The Data Link Layer adds MAC addresses for local delivery.
- The Physical Layer converts Frames into Bits for transmission.
- Every OSI layer adds its own header during Encapsulation.
- The destination removes those headers during De-Encapsulation.
- Routers replace MAC addresses but keep IP addresses unchanged during normal routing.
- Understanding Encapsulation and De-Encapsulation is one of the most important networking concepts for CCNA.
