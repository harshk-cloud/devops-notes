# Day 9 - Home Network Security


## What is a SOHO Network?

Meaning: SOHO stands for **Small Office / Home Office**. It is a simple network used in homes or small offices.

Purpose: To connect multiple devices to the Internet using a single networking device.

Example: Home Wi-Fi network.

```
                Internet
                    |
             +----------------+
             | Home Router    |
             | Router + Switch|
             | + Wireless AP  |
             +----------------+
              /      |       \
        Laptop    Phone     Smart TV
```

My Notes:
- SOHO = Small Office / Home Office.
- Most home routers combine Router, Switch, Wireless Access Point and Firewall into one device.
- Easier and cheaper than enterprise networks.


## SOHO vs Enterprise Network

Meaning: Enterprise networks are much larger and more secure than SOHO networks.

Purpose: To support thousands of users with high availability and security.

Example:

```
SOHO

Internet
    |
 Home Router
    |
 Home Devices


Enterprise

Internet
    |
 Firewall
    |
 Core Router
    |
 Core Switch
    |
Distribution
    |
Access Switches
    |
Thousands of Devices
```

My Notes:
- Enterprise networks use dedicated routers, switches and firewalls.
- SOHO networks usually have one all-in-one device.
- Enterprise networks still get attacked, so home networks also need security.


## Four Main Weak Points of a Home Network

Meaning: Every home network has four common attack points.

Purpose: To identify where attackers can target a network.

```
1. Internet
2. Connected Devices
3. Wireless Network
4. Company Connection (Work From Home)
```

My Notes:
- Internet side attacks.
- Vulnerable IoT devices.
- Weak Wi-Fi security.
- Unsafe remote work connections.


## Public IP Address

Meaning: A Public IP Address is assigned by the ISP and identifies your network on the Internet.

Purpose: Allows communication between your network and Internet services.

Example:

```
Laptop
   |
Router
   |
ISP
   |
Public IP
   |
Internet
```

My Notes:
- Assigned by the ISP.
- Unique on the Internet.
- Similar to a house address.
- Do not share your Public IP publicly.


## Finding Your Public IP

Meaning: Your public IP can be checked using Google.

Example:

```
Search:

What is my IP
```

My Notes:
- Google displays your Public IP.
- Websites also use this address to communicate with your router.


## Why Public IP Should Be Protected

Meaning: Attackers can scan your Public IP for vulnerabilities.

Purpose: Prevent attackers from identifying weak services.

My Notes:
- Public IP alone does not mean someone can hack you.
- However, it gives attackers a starting point for scanning.


## Firewall

Meaning: A Firewall filters incoming and outgoing traffic.

Purpose: Protects your network from unauthorized access.

```
Internet
    |
 Incoming Traffic
    |
+-----------+
| Firewall  |
+-----------+
    |
Home Network
```

My Notes:
- Blocks unwanted incoming traffic.
- First line of defense.
- Should always remain enabled.


## Ports

Meaning: Ports are logical communication endpoints used by applications.

Purpose: Allow different services to communicate over the network.

Common Ports:

- Port 22 → SSH
- Port 80 → HTTP
- Port 443 → HTTPS
- Port 3389 → Remote Desktop (RDP)

My Notes:
- IP Address identifies the device.
- Port identifies the application running on that device.


## Open Ports

Meaning: Open ports allow incoming connections.

Purpose: Required for some services, but unnecessary open ports create security risks.

Example:

```
Internet
    |
Port 80
    |
Web Server
```

My Notes:
- Every open port increases the attack surface.
- Close unused ports whenever possible.


## Port Forwarding

Meaning: Port Forwarding forwards external traffic to an internal device.

Purpose: Makes internal services accessible from the Internet.

Example:

```
Internet
     |
Home Router
     |
Port 80
     |
Home PC
```

My Notes:
- Creates a hole through the firewall.
- Use only when absolutely necessary.
- Disable unused port forwarding rules.


## Checking Open Ports

Meaning: Nmap can check whether a specific port is open.

Command:

```
nmap -sT -p 32400 <Public-IP>
```

My Notes:
- -sT = TCP Connect Scan.
- -p = Scan specific port.
- Useful for checking forwarded services.


## Pentest Tools

Meaning: Online vulnerability scanner.

Purpose: Checks public IP for open ports.

My Notes:
- Useful for quick external scans.
- Helps identify exposed services.


## Nmap

Meaning: Nmap (Network Mapper) is an open-source network scanning tool.

Purpose: Discover hosts, ports and network services.

Install:

```
apt install nmap -y
```

TCP Scan:

```
nmap -sT <Public-IP>
```

Vulnerability Scan:

```
nmap --script vuln <Public-IP>
```

My Notes:
- Used by network administrators.
- Also used by penetration testers.
- Identifies open ports and known vulnerabilities.


## Closed vs Open Ports

```
Closed Port

Internet
    |
XXXXXXX
Blocked


Open Port

Internet
    |
Open Port
    |
Application
```

My Notes:
- Closed ports reject connections.
- Open ports accept connections.
- Unnecessary open ports should be closed.


## VPN

Meaning: VPN (Virtual Private Network) encrypts traffic and hides your Public IP.

Purpose: Improve privacy and secure Internet communication.

Example:

```
Without VPN

You
 |
Internet
 |
Website


With VPN

You
 |
VPN Server
 |
Internet
 |
Website
```

My Notes:
- Hides your Public IP.
- Encrypts Internet traffic.
- Does not replace proper router security.


## Router Hardening

Meaning: Router Hardening means securing a router by changing insecure default settings and enabling security features.

Purpose: Protect the home network from hackers and unauthorized access.

My Notes:
- Enable Firewall.
- Disable unnecessary services.
- Keep firmware updated.
- Use strong credentials.
- Reduce the attack surface.


## Enable Firewall

Meaning: A firewall filters incoming and outgoing traffic.

Purpose: Block unauthorized access from the Internet.

```
Internet
    |
+------------+
| Firewall   |
+------------+
    |
Home Network
```

My Notes:
- Always keep the firewall enabled.
- It blocks unwanted incoming traffic.
- It is the first layer of network security.


## Disable Port Forwarding

Meaning: Port Forwarding allows Internet users to access devices inside your network.

Purpose: Only enable it when absolutely required.

```
Internet
    |
Open Port
    |
Router
    |
Home Device
```

My Notes:
- Every forwarded port creates a hole in the firewall.
- Close all unused forwarded ports.
- Exposed services become attack targets.


## Disable Remote Management

Meaning: Remote Management allows administrators to manage the router over the Internet.

Purpose: Prevent attackers from accessing the router login page.

```
Internet
    |
Router Login Page
    |
Admin Access
```

My Notes:
- Disable Remote Management unless absolutely necessary.
- Prevents attackers from attempting remote login.
- Reduces attack surface.


## Change Default Username and Password

Meaning: Replace the router's default login credentials.

Purpose: Prevent unauthorized access.

Weak Examples:

```
admin
admin
```

```
admin
password
```

Strong Example:

```
Username: harsh_admin

Password: 7#Lm9@PxQ2!vNc81
```

My Notes:
- Never keep default credentials.
- Use long and random passwords.
- Password managers can generate secure passwords.


## Update Router Firmware

Meaning: Firmware is the operating system running on the router.

Purpose: Fix security vulnerabilities and improve stability.

```
Router
    |
Firmware
    |
Security Updates
```

My Notes:
- Regularly check for firmware updates.
- Security patches fix known vulnerabilities.
- New firmware may also improve performance.


## Wireless Security

Meaning: Secure the wireless network using modern encryption and strong passwords.

Purpose: Prevent unauthorized Wi-Fi access.

My Notes:
- Use WPA2 or WPA3.
- Avoid WEP because it is insecure.
- Create a strong Wi-Fi password.


## Change SSID

Meaning: SSID is the name of the wireless network.

Purpose: Avoid revealing router information.

Weak Examples:

```
TP-Link

Netgear

D-Link
```

Better Examples:

```
BlueSky

CoffeeHouse

HiddenCastle
```

My Notes:
- Avoid default SSIDs.
- Default names reveal router manufacturer.
- Attackers may search for model-specific vulnerabilities.


## Guest Network

Meaning: A Guest Network is a separate wireless network for visitors.

Purpose: Isolate guest devices from your personal devices.

```
                 Router
                /      \
        Main Wi-Fi    Guest Wi-Fi
           |              |
Laptop  Phone NAS     Guest Devices
```

My Notes:
- Never share the main Wi-Fi password with guests.
- Guest devices cannot access personal devices.
- Improves network security.


## Disable WAN Ping Response

Meaning: Prevent the router from responding to ping requests from the Internet.

Purpose: Make the router less visible to attackers.

```
Hacker
   |
Ping Request
   |
Router

No Reply
```

My Notes:
- Disable "Respond to Ping from WAN."
- Makes network discovery harder.
- Reduces exposure during Internet scans.


## IoT Devices

Meaning: IoT (Internet of Things) devices are Internet-connected smart devices.

Examples:
- Smart TV
- Alexa
- Smart Bulbs
- Smart Camera
- Smart Plug

My Notes:
- Every IoT device is a potential security risk.
- Many cheap IoT devices receive few or no security updates.
- Compromised IoT devices can become entry points for attackers.


## Internal vs External Traffic

Meaning: Firewalls block unwanted incoming traffic but allow replies to connections initiated from inside.

```
Laptop
   |
Internet
   |
YouTube
   |
Reply
   |
Laptop
```

My Notes:
- Outgoing requests are allowed.
- Replies to those requests are also allowed.
- Malware can abuse this behavior if a device becomes compromised.


## IoT Attack Example

```
Smart Bulb
     |
Internet
     |
Malicious Server
     |
Compromised Device
     |
Home Network
```

My Notes:
- A compromised IoT device may communicate with malicious servers.
- Once infected, it can attack other devices inside the network.
- Firewalls cannot always stop attacks that originate from inside the network.


## Network Segmentation

Meaning: Divide devices into separate networks for better security.

Purpose: Prevent compromised devices from affecting trusted devices.

```
Main Network
   |
Laptop
Phone
NAS

------------------

IoT Network
   |
Alexa
Smart TV
Smart Bulbs
```

My Notes:
- Trusted and untrusted devices should not share the same network.
- Segmentation limits the impact of security incidents.


## VLAN (Virtual LAN)

Meaning: A VLAN logically separates devices into different networks.

Purpose: Improve security and traffic isolation.

```
           Switch
              |
-------------------------------
|             |              |
VLAN 7      VLAN 6        VLAN 8

Trusted      IoT       Untrusted IoT
Devices     Devices      Devices
```

My Notes:
- VLANs create separate broadcast domains.
- Devices in different VLANs require Layer 3 routing to communicate.
- Commonly used in enterprise networks.


## Client Isolation

Meaning: Client Isolation prevents devices on the same wireless network from communicating directly.

Purpose: Improve wireless security.

Without Client Isolation

```
Laptop <----> Phone <----> Smart TV
```

With Client Isolation

```
Laptop

Phone

Smart TV

(All communicate only with the Router)
```

My Notes:
- Useful for Guest Wi-Fi.
- Useful for IoT networks.
- Prevents lateral movement between devices.



## UniFi Network

Meaning: UniFi is a controller-based networking solution developed by Ubiquiti.

Purpose: Manage all network devices from a single dashboard.

```
             UniFi Controller
                    |
      -----------------------------
      |             |             |
   Router        Switch      Access Point
```

My Notes:
- Centralized network management.
- Easy monitoring and configuration.
- Suitable for home labs and small businesses.


## Controller-Based Network

Meaning: A controller manages multiple networking devices from one interface.

Purpose: Simplify network administration.

Example:

```
Controller
    |
-------------------------
|         |            |
Router   Switches   Access Points
```

My Notes:
- One dashboard controls the entire network.
- Changes can be applied from one location.
- Common in enterprise environments.


## UniFi Dream Machine

Meaning: The Dream Machine combines multiple networking devices into one appliance.

Purpose: Simplify deployment while providing enterprise features.

```
+-----------------------+
| Dream Machine         |
|-----------------------|
| Router                |
| Firewall              |
| Switch                |
| Wireless AP           |
| Controller            |
+-----------------------+
```

My Notes:
- All-in-one networking device.
- Easy setup.
- Suitable for advanced home networks.


## Dream Machine Pro (UDM Pro)

Meaning: A more powerful version of the Dream Machine.

Purpose: Provide enterprise-grade security and performance.

My Notes:
- Acts as Router and Firewall.
- Supports IDS and IPS.
- Suitable for larger home or business networks.


## IDS (Intrusion Detection System)

Meaning: IDS monitors network traffic and detects suspicious activity.

Purpose: Alert administrators about possible attacks.

```
Internet
    |
 Firewall
    |
   IDS
    |
Alert Generated
```

My Notes:
- Detects attacks.
- Does NOT block attacks.
- Generates alerts for administrators.


## IPS (Intrusion Prevention System)

Meaning: IPS detects and automatically blocks malicious traffic.

Purpose: Stop attacks before they reach the network.

```
Internet
    |
 Firewall
    |
   IPS
    |
Blocked
```

My Notes:
- Detects attacks.
- Automatically blocks threats.
- More secure than IDS alone.


## IDS vs IPS

```
IDS
-----
Detects Attack
Generates Alert
Does Not Block

IPS
-----
Detects Attack
Generates Alert
Blocks Attack Automatically
```

My Notes:
- IDS = Detection only.
- IPS = Detection + Prevention.

## Threat Management

Meaning: Continuously monitors network traffic for malicious activity.

Purpose: Detect compromised devices and security threats.

My Notes:
- Detects malware.
- Detects suspicious communication.
- Helps secure the network.


## Traffic Log

Meaning: Displays network activity and detected threats.

Purpose: Identify suspicious devices and traffic.

My Notes:
- Shows Source IP.
- Shows Destination IP.
- Shows Threat Type.
- Shows blocked connections.


## Endpoint Scan

Meaning: Automatically scans devices connected to the network.

Purpose: Discover devices and identify vulnerabilities.

My Notes:
- Finds connected devices.
- Detects operating systems.
- Detects open ports.
- Identifies vulnerabilities.


## Internal Network Scan using Nmap

Meaning: Scan devices inside your own network.

Purpose: Discover hosts and open ports.

Command:

```
nmap -sS 192.168.1.0/24
```

My Notes:
- -sS = TCP SYN (Stealth) Scan.
- /24 scans the entire subnet.
- Finds active devices and open ports.


## Detect Operating Systems

Meaning: Identify the operating system of network devices.

Command:

```
nmap -O 192.168.1.0/24
```

My Notes:
- -O enables OS Detection.
- Detects Windows, Linux, Cisco IOS, etc.
- Useful during network auditing.


## VPN (Virtual Private Network)

Meaning: Creates an encrypted tunnel over the Internet.

Purpose: Secure communication between two locations.

```
Laptop
   ||
Encrypted Tunnel
   ||
Company Network
```

My Notes:
- Encrypts traffic.
- Protects sensitive information.
- Used for secure remote access.


## Remote Access VPN

Meaning: Individual users connect securely to the company network using VPN software.

Purpose: Secure work-from-home access.

```
Employee Laptop
        |
 VPN Software
        |
Internet
        |
Company VPN Gateway
        |
Company Network
```

My Notes:
- Software installed on the user's device.
- Common clients:
  - Cisco AnyConnect
  - OpenVPN
  - WireGuard


## Site-to-Site VPN

Meaning: Connects two complete networks using VPN appliances.

Purpose: Secure communication between remote locations.

```
Home Network
      |
 VPN Firewall
====================
 VPN Tunnel
====================
Company Firewall
      |
Company Network
```

My Notes:
- Connects entire networks.
- Users do not manually start the VPN.
- Common in businesses.


## Cisco ASA

Meaning: Cisco ASA (Adaptive Security Appliance) is an enterprise firewall.

Purpose: Provide Firewall, VPN and Security services.

```
Internet
    |
Cisco ASA
    |
Office Network
```

My Notes:
- Enterprise firewall.
- Supports VPN.
- Provides advanced security features.


## Home VPN Server

Meaning: A VPN server running on your home router.

Purpose: Securely access your home network from anywhere.

```
Phone
   |
Internet
   |
Home VPN Server
   |
Home Network
```

My Notes:
- Secure remote access.
- No need to expose services using Port Forwarding.
- Better security than opening ports.


## Custom Router Firmware

Meaning: Replace the manufacturer's firmware with advanced firmware.

Examples:
- DD-WRT
- Tomato
- pfSense

Purpose: Unlock advanced networking features.

My Notes:
- Supports VLANs.
- Supports VPN.
- Better firewall options.
- More control over the router.


## Security Recommendations

My Notes:
- Secure your router.
- Keep firmware updated.
- Use strong passwords.
- Disable unnecessary services.
- Separate IoT devices.
- Use VPN for remote access.
- Monitor network traffic regularly.
- Enable IDS and IPS whenever possible.


## Key Learnings

- SOHO (Small Office/Home Office) networks are simple networks where a single device usually works as a Router, Switch, Wireless Access Point, and Firewall.
- Enterprise networks use dedicated Routers, Switches, Firewalls, IDS/IPS, and multiple security layers.
- Home networks have four major attack surfaces: Internet, Connected Devices (IoT), Wireless Network, and Remote Work Connections.
- ISPs assign Public IP Addresses, which should not be publicly exposed.
- Firewalls filter incoming and outgoing traffic and act as the first layer of network security.
- Open Ports increase the attack surface and should be closed unless absolutely necessary.
- Port Forwarding creates a path through the firewall and should only be used when required.
- Router Hardening includes enabling the Firewall, disabling Remote Management, changing default credentials, updating Firmware, disabling unnecessary services, and securing Wi-Fi.
- WPA2 or WPA3 should always be used instead of older wireless security standards like WEP.
- Strong SSIDs, strong Wi-Fi passwords, and Guest Networks improve wireless security.
- IoT devices can become security risks because compromised devices can communicate with attackers through legitimate outbound connections.
- Network Segmentation using VLANs isolates trusted and untrusted devices to reduce security risks.
- Client Isolation prevents devices on the same wireless network from communicating directly with each other.
- UniFi provides controller-based centralized network management with enterprise-like features.
- Dream Machine combines Router, Firewall, Switch, Wireless Access Point, and Controller into a single device.
- IDS (Intrusion Detection System) detects suspicious activities, while IPS (Intrusion Prevention System) detects and automatically blocks malicious traffic.
- Threat Management and Endpoint Scanning continuously monitor devices, open ports, operating systems, and network vulnerabilities.
- Nmap can scan networks, identify open ports, detect operating systems, and discover known vulnerabilities.
- VPN (Virtual Private Network) creates an encrypted tunnel for secure communication over the Internet.
- Remote Access VPN securely connects individual users to a company network using VPN client software.
- Site-to-Site VPN securely connects two entire networks using VPN gateways or firewalls.
- Cisco ASA is an enterprise firewall appliance that provides Firewall, VPN, and advanced security features.
- A Home VPN Server allows secure remote access to home resources without exposing internal services to the Internet.
- Keeping routers, firmware, and IoT devices updated is essential for maintaining network security.
