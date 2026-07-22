# Day 1 - Switches

## What is a Switch?

Meaning: A Switch is a Layer 2 networking device that connects multiple devices in the same Local Area Network (LAN).

Purpose: To send data only to the correct destination device.

Example:

Laptop ----\
PC ---------\
Printer ----- > [ Switch ] ---- Server
Phone -------/
Tablet -----/

My Notes:
- Switch is a Layer 2 device.
- It connects multiple devices.
- Devices communicate through the switch.
- Uses Ethernet cables.
- Faster and more secure than a Hub.

## Ethernet Cable

Meaning: An Ethernet cable is a wired cable used to connect networking devices.

Purpose: To carry electrical signals between devices.

Example:

Computer
   │
Electrical Signal
   │
Ethernet Cable
   │
Switch

My Notes:
- Contains 8 copper wires (4 twisted pairs).
- Carries electrical signals.
- High Voltage = 1
- Low Voltage = 0
- Binary data travels through the cable.

## Binary

Meaning: Binary is the language computers use to communicate.

Purpose: To represent data using only 0 and 1.

Example:

1 = High Voltage

0 = Low Voltage

My Notes:
- Electrical signals are converted into binary.
- Binary travels through Ethernet cables.

## Hub

Meaning: A Hub is an old Layer 1 networking device.

Purpose: To repeat incoming data to every connected device.

Example:

           Hub
      /     |     \
 Harry    Ron   Hermione
            \
          Malfoy

Harry sends data to Ron.

Hub sends the data to:
✔ Ron (Destination)
✔ Hermione (Receives but ignores)
✔ Malfoy (Receives but ignores)

✔ Ron
✖ Hermione
✖ Malfoy

My Notes:
- Hub is not smart.
- Has no memory.
- Doesn't know the destination.
- Sends data to everyone.
- Creates unnecessary traffic.
- Causes collisions.
- Slower than a Switch.

## Ping

Meaning: Ping is a network testing command.

Purpose: To check whether another device is reachable on the network.

Example:

ping 10.1.1.11

My Notes:
- Reply = Device is online.
- Request Timed Out = Device is offline or unreachable.

## IP Address

Meaning: An IP Address is a logical address assigned to a device.

Purpose: To identify devices on a network.

Example:

10.1.1.11

My Notes:
- Layer 3 Address.
- Used by Routers and End Devices.

## MAC Address

Meaning: A MAC Address is a unique hardware address assigned to every Network Interface Card (NIC).

Purpose: To identify devices inside a Local Area Network.

Example:

0001.4298.A262

My Notes:
- Layer 2 Address.
- Every NIC has a unique MAC Address.
- Switch forwards frames using MAC Addresses.

## Hub vs Switch

Meaning: Hub and Switch both connect devices, but they work differently.

Purpose: To understand why Switches replaced Hubs.

Example:

Hub

PC1
 \
  Hub ---- Everyone receives data
 /
PC2

Switch

PC1
 \
  Switch ---- Only destination receives data
 /
PC2

My Notes:

Hub
- Not smart.
- No memory.
- Sends data to everyone.
- More traffic.
- Less secure.
- Slow.

Switch
- Smart device.
- Has memory.
- Sends data only to the destination.
- Less traffic.
- More secure.
- Faster.


## OSI Layers Covered Today

## Layer 1 - Physical Layer

Meaning: The Physical Layer transfers electrical signals.

Purpose: To move bits through the cable.

Example:

Laptop
   │
Ethernet Cable
   │
Switch

My Notes:
- Ethernet cable works at Layer 1.
- Data Unit = Bits.

## Layer 2 - Data Link Layer

Meaning: The Data Link Layer uses Frames and MAC Addresses.

Purpose: To transfer data inside the same network.

Example:

Frame

Source MAC ----> Destination MAC

My Notes:
- Switch works at Layer 2.
- Switch checks Source MAC.
- Switch checks Destination MAC.
- Data Unit = Frame.

## Layer 3 - Network Layer

Meaning: The Network Layer uses IP Addresses.

Purpose: To send data between networks.

Example:

Packet

Source IP ----> Destination IP

My Notes:
- Router works at Layer 3.
- End Devices understand Layer 3.
- Data Unit = Packet.

## End Devices

Meaning: Devices used by users like laptops, phones and PCs.

Purpose: To send and receive network data.

Example:

Laptop
Phone
Tablet
PC

My Notes:
- Understand Layer 1.
- Understand Layer 2.
- Understand Layer 3.

## CAM Table

Meaning: CAM (Content Addressable Memory) is the memory inside a Switch.

Purpose: To store MAC Address to Port mappings.

Example:

MAC Address             Port

0001.4298.A262  --->   Fa0/1

0009.7CE3.3271  --->   Fa0/3

My Notes:
- CAM = Content Addressable Memory.
- Called the brain of the Switch.
- Learns MAC Addresses automatically.
- Stores which MAC Address is connected to which port.

## Cisco CLI Command

Meaning: CLI commands are used to manage Cisco devices.

Purpose: To view the Switch's CAM Table.

Example:

enable

show mac-address-table

My Notes:
- enable enters privileged mode.
- show mac-address-table displays the CAM Table.


## Frame Forwarding

## Unknown MAC Address

Meaning: The destination MAC Address is not present in the CAM Table.

Purpose: The Switch tries to find the destination device.

Example:

PC ----> Switch ----> Everyone

My Notes:
- Switch floods the frame.
- Sends to every port except the incoming port.
- Learns new MAC Addresses during communication.

## Known MAC Address

Meaning: The destination MAC Address already exists in the CAM Table.

Purpose: To send the frame only to the correct device.

Example:

PC ----> Switch ----> Laptop

My Notes:
- No flooding.
- Frame goes only to the destination port.
- Makes the network faster.

## Wireless Access Point (AP)

Meaning: An Access Point (AP) connects wireless devices to a wired network.

Purpose: To provide Wi-Fi access.

Example:

            Switch
               │
        Ethernet Cable
               │
        Access Point
        /    |     \
     Phone Laptop Tablet

My Notes:
- Connected to the Switch using an Ethernet cable.
- Provides Wi-Fi.
- Converts a wired network into a wireless network.
- Wireless is a shared medium.
- For beginners, an AP behaves similar to a Hub because wireless transmissions are shared.
- Ethernet is generally faster and more reliable than Wi-Fi.

## Data Units

Meaning: Different OSI Layers use different names for data.

Purpose: To identify what data is called at each layer.

Example:

Layer 3 → Packet

Layer 2 → Frame

Layer 1 → Bits

My Notes:
- Router understands Packets.
- Switch understands Frames.
- Cable carries Bits.

## Key Learnings

- Switch is a Layer 2 device.
- Hub is a Layer 1 device.
- Ethernet cables carry electrical signals.
- Binary uses 0 and 1.
- Switch uses MAC Addresses.
- Router uses IP Addresses.
- Ping checks network connectivity.
- CAM Table stores MAC Address to Port mappings.
- Unknown MAC = Flooding.
- Known MAC = Forward only to destination.
- End Devices understand Layers 1, 2 and 3.
- Switch understands Layer 2.
- Router understands Layer 3.
- Ethernet generally provides a faster and more stable connection than Wi-Fi.
- Access Point connects wireless devices to the wired network.
