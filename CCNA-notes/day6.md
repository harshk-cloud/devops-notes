# Day 6 - Campus Network Design and Hierarchical Network Architecture


## Home Network

Meaning: A home network is a small network where devices connect through a router, switch, or wireless access point to communicate with each other and access the Internet.

Purpose: It provides network connectivity to devices such as computers, phones, TVs, and other home devices.

Example:

Internet
   |
Router
   |
Switch
   |
Devices

My Notes:
- In a small home network, multiple networking functions can be integrated into a single device.
- A typical home Wi-Fi router may contain:
  - Router functionality
  - Ethernet switch functionality
  - Wireless access point functionality
- This works well because a home network is relatively small.
- As a network becomes larger, separating different network functions becomes more useful.
- Enterprise networks therefore use a structured and hierarchical network design.


## Single Point of Failure (SPOF)

Meaning: A Single Point of Failure is a component whose failure can make an important part of the network unavailable.

Purpose: Identifying SPOFs helps network engineers design networks with better availability and redundancy.

Example:

Router
  |
Switch 1
  |
Switch 2
  |
Switch 3

If the connection between Switch 2 and Switch 3 fails:

Router
  |
Switch 1
  |
Switch 2
  X
Switch 3

Devices connected through Switch 3 may lose access to the upstream network.

My Notes:
- A single cable, switch, router, power source, or other critical component can become a SPOF.
- The impact depends on where that component exists in the network.
- A failure closer to the upstream/core side can affect many downstream devices.
- Enterprise networks are designed to reduce important SPOFs wherever practical.


## Daisy Chaining Switches

Meaning: Daisy chaining means connecting switches sequentially, where one switch connects to another switch and that switch connects to the next.

Purpose: It can extend network connectivity using multiple switches, but poorly designed chains are not ideal for large enterprise networks.

Example:

Router → Switch 1 → Switch 2 → Switch 3

My Notes:
- Switch-to-switch connections are normal and are not automatically a bad design.
- The problem occurs when the network relies on a long chain without sufficient redundancy or capacity.
- Downstream switches become dependent on upstream switches and links.
- If Switch 1 fails, Switch 2 and Switch 3 may lose their upstream connectivity.
- Long chains can introduce:
  - Single points of failure
  - Bottlenecks
  - Poor scalability
  - Larger failure impact
- Enterprise campus networks therefore use structured hierarchical designs instead of relying on simple long chains.


## Is Adding an Extra Cable Enough?

Meaning: Adding another cable between two devices can provide link redundancy, but it does not automatically provide complete device redundancy.

Purpose: This helps distinguish between protecting against a link failure and protecting against a device failure.

Example:

          Cable 1
Switch A ========= Switch B
          Cable 2

My Notes:
- Multiple physical links can improve availability and capacity when configured correctly.
- If one cable fails, another link may still be available.
- However, if Switch A itself fails, both links connected to Switch A become useless.
- Therefore, redundancy should consider both:
  - Link redundancy
  - Device redundancy
- Multiple Layer 2 links also require correct technologies/configuration to prevent switching loops.
- Simply connecting extra cables without proper design is not enough.


## Redundancy

Meaning: Redundancy means providing backup components or alternate paths so the network can continue operating when a component or path fails.

Purpose: It improves network availability and reduces the impact of failures.

Example:
```
              Switch A
             /        \
Device -----            ----- Network
             \        /
              Switch B

```

If Switch A fails, an alternate path through Switch B can be available.

My Notes:
- Redundancy can be implemented using:
  - Multiple switches
  - Multiple routers
  - Multiple links
  - Alternate network paths
- The backup path must also be configured correctly so traffic can use it when required.
- Redundancy is one of the foundations of high availability.
- Good enterprise network design avoids unnecessary SPOFs.


## Why Not Connect Every Access Switch Directly to a Router?

Meaning: Although access switches can connect toward routing devices, using one router as the central aggregation point for a large campus is usually not the preferred scalable design.

Purpose: Enterprise campus networks separate responsibilities across layers to improve scalability, performance, availability, and manageability.

Example:

             Router
           /   |   \
      Switch1 Switch2 Switch3
         |       |       |
       Users   Servers  Devices

My Notes:
- Routers primarily perform Layer 3 packet forwarding between IP networks.
- Enterprise traffic is not limited to Internet traffic.
- Internal traffic can include:
  - PC → Server
  - PC → Printer
  - PC → Another VLAN/network
  - Server → Server
- Large campus networks may have many access switches and a large amount of internal traffic.
- A dedicated aggregation/distribution design makes the network easier to scale and manage.
- Powerful multilayer switches are commonly used in campus distribution roles.


## Layer 2 Switch

Meaning: A Layer 2 switch primarily forwards Ethernet frames using MAC addresses.

Purpose: It connects devices within Layer 2 networks and forwards frames toward the correct destination port.

Example:

PC → Layer 2 Switch → Server

My Notes:
- Layer 2 switching uses MAC addresses for Ethernet frame forwarding.
- The switch learns source MAC addresses and builds a MAC address table.
- Traditional Layer 2 switching does not perform IP routing between different IP networks.
- Routing between VLANs requires a Layer 3-capable device.


## Multilayer Switch / Layer 3 Switch

Meaning: A multilayer switch is a switch capable of performing normal switching functions as well as Layer 3 routing functions.

Purpose: It provides high-speed switching and routing capabilities in enterprise networks.

Example:

Layer 2 Switch:
MAC Address → Frame Forwarding

Router:
IP Address → Packet Routing

Layer 3 Switch:
MAC + IP
Switching + Routing

My Notes:
- A multilayer switch is commonly called a Layer 3 switch.
- It can perform:
  - Layer 2 switching
  - Layer 3 routing
- It can route traffic between different VLANs when properly configured.
- Layer 3 switches are commonly used in enterprise campus networks.
- They provide high switching capacity and high-speed uplinks suitable for aggregation roles.
- A Layer 3 switch does not completely replace every router.
- Routers are still commonly used for WAN, Internet edge, and other specialized routing functions.


## Hierarchical Network Design

Meaning: Hierarchical network design divides a campus network into logical layers, with each layer performing specific responsibilities.

Purpose: It makes large networks easier to scale, manage, troubleshoot, and make redundant.

Example:

Core
  |
Distribution
  |
Access
  |
End Devices

My Notes:
- Cisco's traditional campus hierarchical model contains three layers:
  - Access Layer
  - Distribution Layer
  - Core Layer
- Not every network requires all three physical layers.
- Smaller campus networks can combine the Core and Distribution functions.
- This creates a Two-Tier or Collapsed Core architecture.
- Larger campus networks can use a dedicated Core layer.


## Two-Tier Architecture

Meaning: Two-Tier Architecture is a campus network design where the Core and Distribution functions are combined into one layer, while the Access layer remains separate.

Purpose: It provides a simpler hierarchical design for networks that do not require a separate dedicated Core layer.

Example:

        Collapsed Core
    (Core + Distribution)
             |
       Access Layer
             |
        End Devices

My Notes:
- Two-Tier Architecture has two logical tiers:
  - Tier 1: Access Layer
  - Tier 2: Collapsed Core Layer
- The upper tier performs Distribution functions and also provides the backbone/Core functions required by the network.
- This design is therefore called a Collapsed Core architecture.
- It is commonly suitable for small to medium campus environments where a dedicated Core layer is unnecessary.


## Access Layer

Meaning: The Access Layer is the part of the campus network where end devices connect to the network.

Purpose: It provides users and endpoint devices with access to network services.

Example:

PC --------\
Phone ------ Access Switch
Printer ---/
Raspberry Pi/

My Notes:
- End devices connect to Access switches.
- Common endpoints include:
  - PCs
  - IP phones
  - Printers
  - Wireless access points
  - Cameras
  - Other network devices
- The Access Layer is the entry point into the campus network for most endpoint devices.
- Access switches connect upstream toward the Distribution or Collapsed Core layer.


## Distribution Layer

Meaning: The Distribution Layer aggregates connections from Access switches and provides connectivity between different parts of the campus network.

Purpose: It acts as the boundary between the Access layer and the rest of the campus network and commonly performs Layer 3 and policy functions.

Example:

              Distribution
             /     |      \
           SW1    SW2     SW3
            |      |       |
           PCs   Server   Devices

My Notes:
- Multiple Access switches connect upstream to the Distribution layer.
- Because it aggregates Access-layer connections, it is also called the Aggregation Layer.
- Distribution switches generally require greater capacity than individual Access switches.
- Distribution-class devices commonly provide:
  - High switching capacity
  - High throughput
  - High-speed uplinks
  - Redundancy features
  - Layer 3 capabilities
- The Distribution layer can perform routing between VLANs and apply network policies.


## Traffic Flow in a Two-Tier Network

Meaning: Traffic from an endpoint can move through its Access switch and the Distribution/Collapsed Core layer before reaching another network or destination.

Purpose: Understanding traffic flow shows why the upper layer requires high capacity and Layer 3 capabilities.

Example - PC to Server on Different Access Switches:

PC
 |
Access Switch 1
 |
Distribution / Collapsed Core
 |
Access Switch 2
 |
Server

Example - Internet Traffic:

PC
 |
Access Switch
 |
Distribution / Collapsed Core
 |
Router / Network Edge
 |
Internet

My Notes:
- Traffic between different parts of the campus can pass through the Distribution/Collapsed Core layer.
- Many Access switches may send traffic toward the same upper-layer devices.
- This creates an aggregation point where a large amount of traffic can converge.
- Distribution/Collapsed Core switches therefore need sufficient:
  - Switching capacity
  - Throughput
  - Uplink bandwidth
  - Redundancy
- An undersized aggregation layer can become a network bottleneck.


## Two-Tier Architecture Summary Diagram

                    Router / Edge
                         |
              +---------------------+
              |   Collapsed Core    |
              | Core + Distribution |
              +---------------------+
                /        |        \
               /         |         \
          Access SW1 Access SW2 Access SW3
              |          |          |
             PCs       Servers    Devices

My Notes:
- Access Layer = where endpoints connect.
- Distribution Layer = aggregates Access switches and commonly provides Layer 3/policy functions.
- In Two-Tier design, Core and Distribution responsibilities are combined.
- The combined upper layer is called the Collapsed Core.
- Redundancy is important because failures in upper-layer devices can affect many Access-layer devices.


## Distribution Layer Responsibilities

Meaning: The Distribution Layer aggregates Access switches and can also perform Layer 3 routing, policy control, filtering, and redundancy functions.

The Distribution Layer performs several important functions to manage, control, and reliably forward traffic between different parts of the network. These responsibilities include:


### Inter-VLAN Routing

Meaning: Inter-VLAN Routing allows devices in different VLANs to communicate through a Layer 3 device.

Purpose: VLANs create separate Layer 2 broadcast domains, so routing is required when traffic needs to move from one VLAN to another.


### Access Control Lists (ACLs)

Meaning: ACLs are rules that permit or deny network traffic based on specific conditions.

Purpose: They control which devices or networks are allowed to communicate with each other.


### Route Filtering

Meaning: Route Filtering controls which routes a routing device accepts or advertises.

Purpose: It prevents unwanted routes from being learned or advertised and gives administrators control over routing information.


### Security Policies

Meaning: Security Policies are rules used to control how traffic is allowed to move through the network.

Purpose: They help protect network resources and enforce communication rules between different users, VLANs, or networks.


### Route Summarization

Meaning: Route Summarization combines multiple specific routes into a smaller summarized route when possible.

Purpose: It reduces the number of routing table entries and makes routing more scalable and efficient.


### Next-Hop Redundancy

Meaning: Next-Hop Redundancy provides an alternate upstream path or device if the primary path or device fails.

Purpose: It improves network availability by allowing traffic to continue through another available next hop.


## Why Distribution Switches Need High Capacity

Meaning: Distribution switches aggregate traffic from multiple Access switches, so they need enough capacity to handle large amounts of traffic without becoming a bottleneck.

Purpose: Higher-capacity hardware prevents the Distribution Layer from becoming a bottleneck.

Example:

Access SW1 - 40 PCs ──┐
Access SW2 - 40 PCs ──┼── Distribution Switch
Access SW3 - Servers ──┘

My Notes:
- Distribution switches generally provide:
  - High switching capacity
  - High throughput
  - High-speed uplinks
  - Layer 3 capabilities
  - Redundancy features
- Switching capacity is commonly measured in Gbps or Tbps.
- 1 Tbps = 1000 Gbps.


## Redundancy at the Distribution Layer

Meaning: Using two Distribution switches provides an alternate upstream device and path if one Distribution switch fails.

Purpose: It removes the Distribution switch as a major Single Point of Failure.

Example - Single Distribution:

             Distribution 1
              /    |    \
            SW1   SW2   SW3

Distribution 1 fails → All Access switches may lose upstream connectivity.

Example - Redundant Distribution:

        Distribution 1     Distribution 2
             \   |   \     /   |   /
              \  |    \   /    |  /
                SW1    SW2    SW3

Distribution 1 fails → Traffic can continue through Distribution 2 when redundancy is correctly configured.

My Notes:
- Access switches can have redundant uplinks to both Distribution switches.
- This provides both device and path redundancy.
- Redundant physical links must be correctly configured for failover.


## Why Routers Also Need Redundancy

Meaning: If the entire network depends on one router, that router becomes a Single Point of Failure.

Purpose: Multiple routers or Layer 3 paths can improve availability for critical upstream connectivity.

Example - Single Router:

             Router
                |
        Distribution Layer
                |
           Access Layer

Router fails → Upstream connectivity can be lost.

Example - Redundant Routers:

        Router 1        Router 2
            \             /
             \           /
        Distribution 1 --- Distribution 2
             \           /
              Access Layer

My Notes:
- Critical enterprise networks can use redundant:
  - Routers
  - Distribution switches
  - Links
  - Upstream paths
- The goal is to prevent one device failure from disconnecting a large part of the network.
- The exact amount of redundancy depends on cost, complexity, and availability requirements.


## Redundant Two-Tier Architecture

Meaning: A redundant Two-Tier architecture uses multiple Collapsed Core//Distribution devices and redundant Access uplinks to improve availability.

Purpose: It provides hierarchical design while reducing important SPOFs.

Example:

             Router / Edge
               /     \
              /       \
     Collapsed Core 1 === Collapsed Core 2
          /   \             /   \
         /     \           /     \
      Access1  Access2   Access1  Access2
         |        |         |        |
       Users    Servers   Users    Devices

My Notes:
- In a Two-Tier architecture, the upper layer performs both Core and Distribution responsibilities.
- Because this layer is critical, redundancy is commonly important.
- Access switches can connect redundantly to the Collapsed Core pair.
- Failure of one upper-layer switch should not necessarily disconnect the Access Layer when redundancy is correctly designed and configured.


## Multiple Buildings and Campus Growth

Meaning: As a company grows into multiple buildings, the number of Distribution blocks and connections between them also increases.

Purpose: Understanding this growth explains why larger campus networks may require a separate Core Layer.

Example:

Building A                Building B
Distribution A            Distribution B
     |                          |
Access Switches            Access Switches

My Notes:
- A Two-Tier design works well for many small and medium campus networks.
- As the campus grows, there can be:
  - More buildings
  - More Distribution blocks
  - More Access switches
  - More users and servers
  - More inter-building traffic
- Distribution blocks also need connectivity with other Distribution blocks.
- Directly connecting every Distribution block to every other block becomes difficult to scale.


## Full-Mesh Scaling Problem

Meaning: A full-mesh design connects network blocks directly to many or all other blocks, causing the number of required interconnections to grow rapidly as more blocks are added.

Purpose: Understanding this problem explains why a dedicated Core Layer improves scalability in larger campus networks.

Example:

Building A -------- Building B
   |\                 /|
   | \               / |
   |  \             /  |
   |   Building C      |
   |  /             \  |
   | /               \ |
Building D -------------

My Notes:
- As more Distribution blocks are added, the number of direct connections increases rapidly.
- For N fully meshed nodes, the number of unique links is:

N × (N - 1) / 2

- 4 nodes → 6 links
- 5 nodes → 10 links
- 10 nodes → 45 links
- More connections mean:
  - More ports
  - More cabling
  - More configuration
  - More troubleshooting complexity
  - Higher cost
- This design becomes difficult to scale in a large campus.


## Why Two-Tier Architecture Has a Scaling Limit

Meaning: Two-Tier architecture is effective for many campus networks, but a sufficiently large or complex campus may benefit from separating Core and Distribution responsibilities.

Purpose: Separating these roles creates a more scalable Three-Tier architecture.

Example:

Smaller Campus:

Collapsed Core
      |
Access

Larger Campus:

Core
  |
Distribution
  |
Access

My Notes:
- Two-Tier architecture is not inherently bad or inferior.
- It is appropriate when the campus size and design requirements do not justify a dedicated Core.
- As the number of Distribution blocks, buildings, or geographic areas grows, a separate Core can simplify interconnection.
- The Core provides a common high-speed backbone between Distribution blocks.
- This leads to the Three-Tier hierarchical campus design.


## Three-Tier Architecture

Meaning: Three-Tier Architecture separates the campus network into three layers: Access, Distribution, and Core.

Purpose: It provides a scalable hierarchical design for large networks with multiple Distribution blocks or buildings.

Example:

              Core Layer
               /      \
              /        \
     Distribution    Distribution
          |               |
       Access           Access
          |               |
       Devices           Devices

My Notes:
- Tier 1: Access Layer
- Tier 2: Distribution Layer
- Tier 3: Core Layer
- Access connects end devices.
- Distribution aggregates Access switches and performs Layer 3 and policy functions.
- Core provides the high-speed backbone between Distribution blocks.
- A dedicated Core becomes useful when the network grows and the Two-Tier design becomes difficult to scale.


## Core Layer and Redundancy

Meaning: The Core Layer is the fast and highly reliable backbone that connects different Distribution blocks.

Purpose: It provides high-speed connectivity between different parts of a large campus network.

Example - Single Core:

                Core
              /  |  \
             /   |   \
         Dist A Dist B Dist C
            |      |      |
          Access Access Access

Core fails → Connectivity between major parts of the campus can be affected.

Example - Redundant Core:

             Core 1 ===== Core 2
              |\           /|
              | \         / |
              |  \       /  |
            Dist A     Dist B
               |         |
             Access    Access

Core 1 fails → Core 2 can provide an alternate path when redundancy is correctly configured.

My Notes:
- Core switches are powerful Layer 3 switches.
- A large amount of campus traffic can pass through the Core.
- The Core is designed for:
  - High speed
  - Low latency
  - High reliability
  - High availability
- A single Core switch can become a major Single Point of Failure.
- Redundant Core switches reduce this risk.
- Distribution switches can have redundant connections to both Core switches.
- Core devices can also have redundant hardware such as power supplies.


## Three-Tier Campus Design

Example:

          Router 1             Router 2
              \                 /
               \               /
              Core 1 ======= Core 2
               |\             /|
               | \           / |
               |  \         /  |
          Distribution 1  Distribution 2
               |\             /|
               | \           / |
               |  \         /  |
              Access Switches
                    |
                End Devices

My Notes:
- Routers provide connectivity toward external networks such as WAN or the Internet.
- Core switches provide the campus backbone.
- Distribution switches connect Access blocks to the Core.
- Access switches connect end devices.
- Redundant devices and links improve network availability.
- The exact physical design depends on the requirements of the organization.


## Connecting Multiple Buildings Through the Core

Meaning: Instead of directly connecting every building's Distribution block to every other building, Distribution blocks can connect through a common Core.

Example - Without Core:

Distribution A -------- Distribution B
      |\                    /|
      | \                  / |
      |  \                /  |
      |   \              /   |
Distribution C -------- Distribution D

Example - With Core:

              Core 1 ===== Core 2
             /   |         |   \
            /    |         |    \
       Dist A  Dist B   Dist C  Dist D
          |       |        |       |
        Access  Access   Access  Access
          |       |        |       |
       Bldg A   Bldg B   Bldg C  Bldg D

My Notes:
- Without a Core, Distribution blocks may require many direct interconnections as the campus grows.
- More buildings can mean more links, ports, cabling, and configuration complexity.
- With a Core, Distribution blocks connect toward a common high-speed backbone.
- Distribution blocks no longer need a large full mesh with each other.
- Adding another building or Distribution block becomes easier.
- This makes large campus networks easier to scale and manage.


## Two-Tier vs Three-Tier Architecture


### Two-Tier Architecture

          Collapsed Core
       (Core + Distribution)
                |
              Access
                |
           End Devices

My Notes:
- Core and Distribution functions are combined.
- This is called the Collapsed Core model.
- Suitable when the network does not require a separate dedicated Core.
- Simpler and generally less expensive than a Three-Tier design.


### Three-Tier Architecture

               Core
                |
           Distribution
                |
              Access
                |
           End Devices

My Notes:
- Core and Distribution are separate layers.
- Useful when there are many Distribution blocks or buildings.
- Provides better scalability for large campus environments.
- Three-Tier is not automatically better than Two-Tier.
- The correct architecture depends on the requirements of the network.


## Collapsed Core

Meaning: A Collapsed Core combines the functions of the Core and Distribution layers into the same network tier.

Example:

Three-Tier:

Core
 |
Distribution
 |
Access

Two-Tier / Collapsed Core:

Core + Distribution
        |
      Access

My Notes:
- The Core function does not disappear in a Two-Tier architecture.
- Core responsibilities are combined with the Distribution Layer.
- The upper-layer switches perform both Distribution and backbone functions.
- Many enterprise networks can operate effectively using a Collapsed Core design.


## Network Design Depends on Requirements

Meaning: There is no single network architecture that is correct for every organization.

My Notes:
- More redundancy usually requires more:
  - Devices
  - Links
  - Ports
  - Configuration
  - Cost
- Network engineers must balance:
  - Availability
  - Performance
  - Scalability
  - Complexity
  - Budget
- Small networks may accept some Single Points of Failure.
- Critical enterprise networks usually require stronger redundancy.
- Two-Tier and Three-Tier are design models, not rules that every network must follow exactly.


## Key Learnings

- A Single Point of Failure can make an important part of the network unavailable.
- Redundancy provides alternate devices, links, or paths when failures occur.
- Layer 3 switches can perform both switching and routing.
- Access Layer connects end devices.
- Distribution Layer aggregates Access switches and can perform Layer 3 and policy functions.
- Two-Tier Architecture combines Core and Distribution functions into a Collapsed Core.
- As the number of Distribution blocks grows, directly interconnecting them becomes difficult to scale.
- Three-Tier Architecture separates Access, Distribution, and Core into dedicated layers.
- Core Layer provides a fast, low-latency, and highly reliable backbone.
- Redundant Core and Distribution devices reduce major Single Points of Failure.
- A dedicated Core makes large multi-building networks easier to scale.
- Two-Tier is not inferior to Three-Tier; the correct design depends on network requirements.
- Good network design balances redundancy, performance, scalability, complexity, and cost.
