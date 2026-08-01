# Day 8 - WAN Technologies


## What is WAN?

Meaning: WAN (Wide Area Network) connects geographically separated networks.

Purpose: To allow different company locations to communicate with each other.

Example:

```
Corporate Office (Dallas)
        |
        |
      WAN
        |
        |
Branch Office (Phoenix)
```

My Notes:
- WAN connects different LANs.
- Used when offices are in different geographical locations.
- Example: Corporate Office, Data Center, and Branch Offices.
- WAN does not always mean the Internet.
- A company's private network between locations is also called a WAN.


## Why Do We Need a WAN?

Meaning: WAN allows different company locations to share resources and communicate.

Purpose: To give every branch access to centralized company services.

Example:

```
Coffee Shop
      |
      |
     WAN
      |
      |
Data Center
   |
Phone Server
Email Server
Database Server
```

My Notes:
- Branch offices communicate with the Corporate Office.
- Branch offices communicate with the Data Center.
- Companies usually centralize important services.
- Examples:
  - Cisco CUCM (Phone System)
  - Email Server
  - Database Server
  - Website Server
  - Payroll System
  - POS (Point of Sale) System


## LAN vs WAN

Meaning:
- LAN = Local Area Network inside one building or campus.
- WAN = Network connecting multiple LANs over long distances.

Purpose: To understand the difference between local and geographically separated networks.

Example:

```
Corporate Office LAN
        |
       WAN
        |
Data Center LAN
```

My Notes:
- Every office has its own LAN.
- WAN connects those LANs together.


## Service Provider (Carrier)

Meaning: A company that provides WAN connectivity between different locations.

Purpose: To connect company sites without the company installing cables itself.

Example:

```
Corporate Office
        |
Service Provider Network
        |
Branch Office
```

My Notes:
- Also called a Carrier.
- Responsible for connecting different company locations.
- Examples include Telecom and ISP companies.


## Leased Line

Meaning: A dedicated Point-to-Point connection provided by a Service Provider.

Purpose: To provide reliable and private communication between two locations.

Example:

Corporate Office ================= Data Center

My Notes:
- Traditional WAN technology.
- Point-to-Point connection.
- Dedicated connection.
- Reliable performance.
- Low latency.
- Better than shared Internet.
- Expensive solution.


## T1

Meaning: A traditional leased line connection.

Purpose: To provide WAN connectivity between two locations.

My Notes:
- Speed = 1.544 Mbps


## T3

Meaning: A higher-speed leased line connection.

Purpose: To provide faster WAN connectivity.

My Notes:
- Speed = 43.736 Mbps


## E1

Meaning: European version of T1.

Purpose: Used for WAN connectivity in Europe.


## E3

Meaning: European version of T3.

Purpose: Used for higher-speed WAN connectivity in Europe.


## Problems with Leased Lines

Meaning: Leased lines become difficult to manage as the network grows.

Purpose: To understand why newer WAN technologies were introduced.

Example:

```
          Branch A
              |
HQ ============
              |
          Branch B
```

More Branches = More Leased Circuits = More Cost

My Notes:
- Very expensive.
- Every branch requires its own leased circuit.
- Difficult to scale.


## Traditional WAN Technologies

Purpose: To understand the evolution of WAN technologies.

My Notes:
- Leased Line
- Frame Relay
- ATM
- MPLS
- Metro Ethernet


## Frame Relay

Meaning: A WAN technology that uses the provider's network instead of dedicated leased lines.

Purpose: To reduce the cost of connecting multiple sites.

Example:

```
           Provider Cloud
          /      |      \
        HQ    Branch1  Branch2
```

My Notes:
- Legacy WAN technology.
- Alternative to leased lines.
- Uses PVC (Permanent Virtual Circuit).
- Removed from modern CCNA configuration topics.


## ATM

Meaning: Asynchronous Transfer Mode.

Purpose: Alternative WAN technology for connecting remote locations.

My Notes:
- Legacy WAN technology.
- Alternative to leased lines.
- Rarely used today.


## MPLS

Meaning: MPLS (Multiprotocol Label Switching) connects multiple company sites through the provider's network.

Purpose: To provide private, scalable, and reliable WAN connectivity.

Example:

```
          MPLS Provider Cloud
         /        |        \
Corporate      Branch     Data Center
 Office
```

My Notes:
- Enterprise WAN technology.
- Only one connection is required from each site.
- Provider connects all company locations.
- Branch offices can communicate with the Corporate Office.
- Branch offices can communicate with the Data Center.
- Branch offices can communicate with other branches.
- No need for multiple leased lines.


## MPLS Labels

Meaning: MPLS forwards traffic using labels.

Purpose: To efficiently identify and forward packets inside the provider network.

My Notes:
- MPLS stands for Multiprotocol Label Switching.
- A label is added to packets.
- Labels identify customer traffic.
- Provider forwards packets using labels.


## MPLS Layer

Meaning: MPLS operates between Layer 2 and Layer 3.

Purpose: To improve packet forwarding inside the provider network.

Example:

```
Layer 7 - Application
Layer 6 - Presentation
Layer 5 - Session
Layer 4 - Transport
-------------------------
MPLS (Layer 2.5)
-------------------------
Layer 3 - Network
Layer 2 - Data Link
Layer 1 - Physical
```

My Notes:
- Often called Layer 2.5 technology.


## Customer Edge (CE) Router

Meaning: The customer's router connected to the provider network.

Purpose: To connect the customer LAN to the MPLS network.

Example:

```
Customer LAN
      |
   CE Router
      |
Provider Network
```

My Notes:
- CE = Customer Edge Router.
- Located at the edge of the customer's LAN.


## Provider Edge (PE) Router

Meaning: The provider's router connected to the customer's CE router.

Purpose: To receive customer traffic into the provider's MPLS network.

Example:

```
Customer LAN
     |
 CE Router
     |
 PE Router
     |
Provider MPLS Network
```

My Notes:
- PE = Provider Edge Router.
- Located at the edge of the provider's network.


## QoS (Quality of Service)

Meaning: A technique that gives priority to important traffic.

Purpose: To ensure critical traffic gets better network performance.

Example:

Priority 1 → Voice Calls
Priority 2 → Video Calls
Priority 3 → File Downloads

My Notes:
- Voice traffic receives higher priority.
- Important traffic continues smoothly during congestion.
- One of the biggest advantages of MPLS.
- Voice traffic gets VIP treatment.
- Improves call quality.
- MPLS supports QoS very well.


## Metro Ethernet (Metro E)

Meaning: Metro Ethernet is a WAN technology that connects different company locations using the service provider's Ethernet network.

Purpose: To provide high-speed Ethernet connectivity between company locations.

Example:

```
Corporate Office
       ||
 Metro Ethernet
       ||
Data Center
```

My Notes:
- Similar to a Point-to-Point connection.
- Commonly uses Fiber Optic cables.
- Typical speeds:
  - 1 Gbps
  - 10 Gbps
- Usually connects important locations.
- Redundant links are commonly used for high availability.


## Point-to-Point Metro Ethernet (E-Line)

Meaning: A dedicated Ethernet connection between two locations.

Purpose: To connect two sites with a high-speed Ethernet link.

Example:

Site A ================= Site B

My Notes:
- Also called E-Line.
- Point-to-Point connection.
- Uses an Ethernet Virtual Circuit (EVC).
- Commonly used between:
  - Corporate Office ↔ Data Center
  - Data Center ↔ Data Center


## Metro Ethernet Layer

Meaning: Metro Ethernet works at Layer 2.

Purpose: To extend Ethernet connectivity between different locations.

Example:

```
Switch
   |
Metro Ethernet
   |
Switch
```

My Notes:
- Transfers Ethernet Frames.
- End devices are usually switches.
- Feels like connecting two switches using one long Ethernet cable.


## Metro Ethernet Services


### E-Line

Meaning: Point-to-Point Ethernet service.

Purpose: To connect two locations.

Example:

Office A ------------ Office B

My Notes:
- Ethernet Private Line (EPL)
- Used for two-site connectivity.


### E-LAN

Meaning: Multipoint-to-Multipoint Ethernet service.

Purpose: To allow multiple locations to communicate directly.

Example:

```
        Provider Ethernet Cloud
        /    |     |      \
      HQ   DC   Branch1  Branch2
```

My Notes:
- Behaves like one large Layer 2 switch.
- All connected sites can communicate with each other.


### E-Tree

Meaning: Hub-and-Spoke Ethernet service.

Purpose: To connect branch offices to one central location.

Example:

```
          Branch A
             |
Branch B ---- HQ ---- Branch C
             |
        Branch D
```

My Notes:
- Central location is called the Root.
- Branches are called Leafs.
- Also called Hub-and-Spoke topology.


## Metro Ethernet Advantages

Meaning: Benefits of using Metro Ethernet.

Purpose: To provide fast and reliable WAN connectivity.

My Notes:
- High-speed Ethernet connectivity.
- Private Fiber Network.
- Backed by SLA (Service Level Agreement).
- Low latency.
- Reliable connection.


## Internet as a WAN

Meaning: Using the public Internet instead of a private WAN.

Purpose: To reduce WAN costs.

Example:

```
Seattle Office
      |
 Public Internet
      |
Data Center
```

My Notes:
- Much cheaper than MPLS.
- Easy to obtain.
- Uses normal Internet connections.


## VPN (Virtual Private Network)

Meaning: VPN creates a secure connection over the public Internet.

Purpose: To securely connect remote company locations.

Example:

```
Branch Office
      |
 Internet
      |
 VPN Tunnel
      |
Data Center
```

My Notes:
- Encrypts traffic over the Internet.
- Keeps communication private.
- Only authorized devices can understand the traffic.


## Site-to-Site VPN

Meaning: A VPN connection between two different office networks.

Purpose: To securely connect company locations over the Internet.

Example:

```
Office LAN
    |
 Router ===== VPN Tunnel ===== Router
                                 |
                             Remote LAN
```

My Notes:
- Connects entire office networks.
- Routers or Firewalls usually create the VPN.
- End-user computers normally do not need VPN software.


## Problems with Internet VPN

Meaning: Public Internet does not always provide stable performance.

Purpose: To understand why companies still preferred MPLS.

My Notes:
- Internet performance is unpredictable.
- VPN tunnels may disconnect.
- Voice calls can have poor quality.
- No guaranteed performance.


## SD-WAN

Meaning: SD-WAN stands for Software-Defined Wide Area Network.

Purpose: To provide a modern and intelligent WAN solution.

Example:

```
          Internet
             |
Branch ---- SD-WAN ---- Data Center
             |
            Cloud
```

My Notes:
- Modern replacement for MPLS.
- Uses normal Internet connections.
- Can intelligently choose the best path.
- Optimizes cloud connectivity.
- Works well with AWS and Azure.


## Cloud Services

Meaning: Many company services now run in the public cloud instead of the Data Center.

Purpose: To provide applications closer to users.

Example:

```
Branch Office
      |
 Internet
      |
AWS / Azure
```

My Notes:
- Traffic is no longer limited to the Data Center.
- More companies are moving to Cloud services.
- SD-WAN works better for Cloud connectivity.


## Key Learnings

- WAN connects geographically separated LANs.
- Companies use Service Providers (Carriers) for WAN connectivity.
- Leased Lines provide dedicated Point-to-Point communication but are expensive.
- Frame Relay and ATM are legacy WAN technologies.
- MPLS connects multiple company sites using the provider's network.
- MPLS uses labels and supports QoS.
- Metro Ethernet provides high-speed Layer 2 Ethernet connectivity.
- E-Line is Point-to-Point.
- EVC is an Ethernet Virtual Circuit.
- E-LAN is Multipoint-to-Multipoint.
- E-Tree follows a Hub-and-Spoke topology.
- VPN provides secure communication over the public Internet.
- Site-to-Site VPN securely connects office networks.
- Public Internet is cheaper than MPLS but less reliable.
- SD-WAN is becoming the modern replacement for MPLS.
- Cloud services like AWS and Azure are changing modern WAN architecture.
