# Day 10 - Hybrid Cloud


## On-Premises (On-Prem)

Meaning: On-Premises means a company owns and manages its entire IT infrastructure.

Purpose: To provide maximum control, security, and customization.

Example: Banks, Government organizations, and Defence sectors.

My Notes:

- The company purchases its own hardware.
- Everything is hosted inside the company's Data Center.
- Internal services can work without depending on the Internet.
- The company is responsible for maintenance and upgrades.

A Data Center typically contains:

- Servers
- Storage
- Databases
- Routers
- Switches
- Firewalls

Diagram:

```

           Company
              │
              │
      ┌──────────────────┐
      │    Data Center   │
      │------------------│
      │ Servers          │
      │ Storage          │
      │ Databases        │
      │ Routers          │
      │ Switches         │
      │ Firewalls        │
      └──────────────────┘

```

Advantages

- Full control
- Better customization
- Data stays inside the company
- Higher security

Disadvantages

- Very expensive
- Hardware maintenance is the company's responsibility
- Scaling takes time


## Public Cloud

Meaning: In Public Cloud, you do not own the hardware. You simply rent cloud services from a cloud provider.

Purpose: To use infrastructure without purchasing physical hardware.

Example:

- AWS
- Microsoft Azure
- Google Cloud Platform (GCP)

My Notes:

- Servers belong to the cloud provider.
- You only use Virtual Machines or cloud services.
- Everything is accessed through the Internet.
- Hardware maintenance is handled by the cloud provider.

Diagram:

```

 You
  │
  │ Internet
  ▼
┌────────────────────────────┐
│     AWS / Azure / GCP      │
│----------------------------│
│ Virtual Machines           │
│ Storage                    │
│ Databases                  │
│ Networking                 │
└────────────────────────────┘

```

## CAPEX vs OPEX


### CAPEX (Capital Expenditure)

Meaning: Spending a large amount of money upfront to purchase hardware.

Purpose: Long-term ownership of infrastructure.

Example:

- Buying Servers
- Buying Routers
- Buying Switches

My Notes:

- High initial investment.
- Hardware belongs to the company.
- Mostly used in On-Prem environments.

Diagram:

```

Money
  │
  ▼
Purchase Hardware
  │
  ▼
Own & Use for Years

```


### OPEX (Operational Expenditure)

Meaning: Instead of buying hardware, you rent cloud resources and pay only for what you use.

Purpose: Reduce upfront costs.

Example:

AWS EC2

Pay per hour

My Notes:

- Low initial cost.
- Mostly preferred by startups.
- Uses the Pay-As-You-Go pricing model.

Diagram:

```
Start VM
   │
   ▼
Use Resources
   │
   ▼
Pay Per Hour
   │
   ▼
Stop VM
   │
   ▼
Billing Stops
```


## Elasticity

Meaning: Elasticity is the ability to automatically increase or decrease resources based on demand.

Purpose: Handle traffic spikes without purchasing new hardware.

Example:

Normally

100 Users

↓

Suddenly

100,000 Users

On-Prem:

- Buy new servers
- Install hardware
- Configure everything

Cloud:

1 Server

↓

5 Servers

↓

20 Servers

↓

100 Servers

(All within minutes)

When traffic decreases:

↓

Extra servers are removed automatically.

↓

Cost also decreases.

My Notes:

- Elasticity means automatic Scale Up and Scale Down.
- Resources increase only when needed.
- One of the biggest advantages of cloud computing.

Diagram:

```
Normal Traffic

1 Server
   │
   ▼

High Traffic

5 Servers
   │
   ▼

20 Servers
   │
   ▼

100 Servers

↓

Traffic Drops

↓

Servers Removed

↓

Lower Cost
```


## Cloud Features

Meaning: Cloud is much more than renting Virtual Machines.

Purpose: To provide ready-to-use managed services.

My Notes:

Cloud providers offer many intelligent services such as:

- Virtual Machines
- Managed Databases
- Object Storage
- Containers
- Kubernetes
- Load Balancers
- Serverless Computing
- Monitoring Services

Diagram:

```
                 Cloud
                   │
      ┌────────────┼────────────┐
      │            │            │
      ▼            ▼            ▼
 Virtual       Database      Storage
 Machine

      │
      ▼

 Containers
      │
      ▼

 Kubernetes
      │
      ▼

 Monitoring
```

Cloud is not just about renting servers.

It provides a complete ecosystem of managed services.


## Monolithic Application

Meaning: A Monolithic Application is built as one large application where all features exist in a single codebase.

Purpose: Traditional way of developing applications.

Example:

- Login
- Orders
- Payment
- Search
- Cart

All are part of one application.

My Notes:

- Everything is tightly connected.
- One deployment updates the entire application.
- Simple to build for small projects.
- Difficult to maintain as the application grows.

Problem:

If you only modify the Login feature, the entire application must be rebuilt and redeployed.

Diagram:

```
             One Big Application
      ┌──────────────────────────────┐
      │ Login                        │
      │ Orders                       │
      │ Payment                      │
      │ Search                       │
      │ Cart                         │
      └──────────────────────────────┘
```


## Microservices

Meaning: Microservices divide one large application into many small independent services.

Purpose: Easier development, deployment, and scaling.

Example:

- Login Service
- Payment Service
- Order Service
- Search Service
- Cart Service

Each service works independently.

My Notes:

Benefits:

- Faster development
- Independent deployment
- Easier updates
- Better scalability
- Better fault isolation

This is the modern software architecture.

Diagram:

```
             Application

                  │
      ┌───────────┼───────────┐
      │           │           │
      ▼           ▼           ▼
 Login      Payment      Orders

      ▼           ▼           ▼

 Search       Cart      Notifications
```


## Containers

Meaning: Containers package an application together with everything it needs to run.

Purpose: Make applications portable and lightweight.

Example:

Docker Container

My Notes:

- Earlier applications mostly ran inside Virtual Machines.
- Today applications commonly run inside Containers.
- Containers start much faster than Virtual Machines.
- Containers use fewer system resources.

Container Benefits:

- Lightweight
- Fast startup
- Better resource utilization
- Easy portability

Docker is the most popular container platform.

Diagram:

```
Physical Server
        │
        ▼
Container Runtime
        │
        ▼
+------------------+
|    Container     |
|------------------|
|   Application    |
|   Libraries      |
|   Dependencies   |
+------------------+
```

## Kubernetes (K8s)

Meaning: Kubernetes is a container orchestration platform.

Purpose: Automatically manage large numbers of containers.

Example:

Managing hundreds or thousands of containers.

My Notes:

Kubernetes can automatically:

- Start containers
- Stop containers
- Restart failed containers
- Scale containers
- Handle networking
- Perform load balancing

Instead of manually managing hundreds of containers, Kubernetes does it automatically.

Diagram:

```
        Kubernetes Cluster

               │
     ┌─────────┼─────────┐
     │         │         │
     ▼         ▼         ▼
Container  Container  Container

     ▼         ▼         ▼

 Start     Restart     Scale
```

## Cloud Native

Meaning: Cloud Native applications are designed specifically to run in cloud environments.

Purpose: Take full advantage of cloud services.

My Notes:

Cloud Native combines:

- Microservices
- Containers
- Kubernetes

Formula:

```
Cloud Native = Microservices + Containers + Kubernetes

```

Benefits:

- Faster deployment
- Better scalability
- Higher availability
- Easier maintenance
- Automatic recovery

Cloud Native applications are designed for modern cloud platforms rather than traditional servers.


## Should Everything Be Moved to the Cloud?

Meaning: Not every workload is suitable for the public cloud.

Purpose: Choose the best environment based on business requirements.

My Notes:

Reasons to keep some workloads On-Prem:

- Security and compliance requirements
- Large storage requirements
- Low latency applications
- Sensitive business data

Example:

1000 TB of storage

- Cloud → Very expensive
- On-Prem → Usually cheaper in the long run


## Hybrid Cloud

Meaning: Hybrid Cloud combines On-Premises infrastructure with Public Cloud.

Purpose: Use the advantages of both environments.

Example:

- Sensitive data stays On-Prem.
- Public-facing applications run in the Cloud.

My Notes:

- Some applications stay in the company Data Center.
- Some applications run on AWS, Azure, or GCP.
- Both environments are connected together.

Diagram:

```
                    Internet
                        │
                        ▼
                ┌────────────────┐
                │ AWS / Azure /  │
                │ Google Cloud   │
                └────────────────┘
                        ▲
                        │
                Secure Connection
                        │
                        ▼
        ┌─────────────────────────────┐
        │ Company Data Center         │
        │ Servers                     │
        │ Databases                   │
        │ Storage                     │
        │ Networking                  │
        └─────────────────────────────┘
```

Benefits:

- Better flexibility
- Better security
- Better cost optimization
- Easier migration to cloud


## Multi-Cloud

Meaning: Using services from multiple cloud providers.

Purpose: Avoid depending on a single cloud provider.

Example:

- AWS
- Microsoft Azure
- Google Cloud Platform

My Notes:

Many companies use Hybrid Cloud and Multi-Cloud together.

Diagram:

```
          Multi-Cloud

      AWS
        │
        ├─────────────┐
        │             │
      Azure        Google Cloud
```


## Problems with Traditional Hybrid Cloud


### Problem 1 - Cloud Features

Cloud provides many modern technologies like:

- Containers
- Kubernetes
- Managed Services
- Automation

Traditional On-Prem infrastructure usually cannot provide all these features easily.


### Problem 2 - Management

Companies may use:

- On-Prem
- AWS
- Azure
- Google Cloud

Each platform has:

- Different Portal
- Different Interface
- Different Management Tools

This increases complexity.


## Dell + VMware Solution

Meaning: Dell and VMware provide a unified Hybrid Cloud platform.

Purpose: Manage On-Prem and Cloud using the same tools.

Diagram:

```
                 vCenter
                    │
              vRealize
                    │
      ┌────────┬────────┬────────┐
      │        │        │        │
  On-Prem     AWS     Azure     GCP
```

Benefits:

- One dashboard
- One interface
- Same management experience everywhere
- Less manual work
- Fewer mistakes


## VMware Cloud Foundation (VCF)

Meaning: VMware Cloud Foundation is VMware's platform for building Hybrid Cloud.

Purpose: Connect On-Prem infrastructure with public cloud environments.

My Notes:

- Same VMware tools everywhere.
- No need to learn separate cloud interfaces.
- Cloud becomes another VMware Data Center.

Diagram:

```
          VMware Cloud Foundation

                    │
      ┌────────┬────────┬────────┐
      │        │        │        │
  On-Prem     AWS     Azure     GCP
```


## vCenter

Meaning: vCenter is VMware's centralized management software.

Purpose: Manage multiple ESXi hosts and Virtual Machines from one place.

My Notes:

- Single management dashboard.
- Create and manage VMs.
- Monitor infrastructure.
- Perform migrations.


## vRealize

Meaning: vRealize is VMware's automation and monitoring platform.

Purpose: Automate infrastructure management.

My Notes:

- Monitoring
- Automation
- Performance analysis
- Resource optimization


## VMware ESXi

Meaning: VMware ESXi is a Type-1 (Bare Metal) Hypervisor.

Purpose: Run multiple Virtual Machines directly on physical hardware.

My Notes:

- Installed directly on server hardware.
- No host operating system required.
- High performance virtualization.

Diagram:

```
Physical Server
       │
       ▼
 VMware ESXi
       │
       ▼
+------+------+------+
| VM1 | VM2 | VM3 |
+------+------+------+
```


## vMotion

Meaning: vMotion moves a running Virtual Machine from one server to another without shutting it down.

Purpose: Perform maintenance with no downtime.

My Notes:

- Live VM migration.
- No application interruption.
- Zero downtime migration.

Diagram:

```
Server A                    Server B

+--------+                  +--------+
|  VM    |  ==========>      |  VM    |
+--------+                  +--------+

(No Shutdown)
```


## Reverse Migration

Meaning: Move workloads back from the cloud to the On-Prem Data Center.

Purpose: Workloads can move in both directions whenever required.

Diagram:

```
On-Prem  <==========>  Cloud

     Bidirectional Migration
```


## VxRail

Meaning: VxRail is Dell's Hyper-Converged Infrastructure (HCI) appliance.

Purpose: Provide ready-to-use infrastructure with VMware Cloud Foundation.


## Software-Defined Data Center (SDDC)

Meaning: A Software-Defined Data Center manages infrastructure using software instead of manual hardware configuration.

Purpose: Automate the entire Data Center.

My Notes:

Software controls:

- Networking
- Storage
- Virtual Machines
- Security
- Automation

Diagram:

```
          Software

              │

      ┌───────┼────────┐
      │       │        │
 Network  Storage   Virtual Machines
              │
              ▼
          Automation
```


## Containers on On-Prem

Meaning: Modern container technologies can also run inside an On-Prem Data Center.

My Notes:

On-Prem can now run:

- Docker
- Kubernetes
- Containers

Cloud-native technologies are no longer limited to the cloud.


## Cloud Native On-Prem

Meaning: Cloud features can now be used inside an On-Prem Data Center.

Purpose: Make On-Prem infrastructure as modern as the cloud.

Benefits:

- Kubernetes
- Containers
- Automation
- Better scalability
- Same management experience


## Modern Hybrid Cloud

Meaning: Modern Hybrid Cloud provides one platform to manage both On-Prem and Public Cloud.

Diagram:

```
          Modern Hybrid Cloud

                 vCenter
                    │
      ┌────────┬────────┬────────┐
      │        │        │        │
  On-Prem     AWS     Azure     GCP
```

Benefits:

- One platform
- One dashboard
- One management experience
- Less operational complexity


## Hyper-Converged Infrastructure (HCI)

Meaning: Hyper-Converged Infrastructure combines Compute, Storage, and Networking into a single integrated system.

Purpose: Simplify Data Center deployment and management.

Diagram:

```
        Hyper-Converged Infrastructure

     +----------------------------------+
     | Compute                          |
     | Storage                          |
     | Networking                       |
     | Virtualization                   |
     +----------------------------------+

            Managed as One System
```

My Notes:

- All infrastructure is integrated.
- Managed entirely through software.
- VxRail is an example of HCI.


## Key Learnings

- On-Prem provides full control but is expensive.
- Public Cloud follows the OPEX (Pay-As-You-Go) model.
- Elasticity allows automatic scaling.
- Cloud Native = Microservices + Containers + Kubernetes.
- Hybrid Cloud combines On-Prem and Public Cloud.
- Multi-Cloud means using multiple cloud providers.
- VMware Cloud Foundation provides a unified Hybrid Cloud platform.
- vCenter manages VMware infrastructure.
- vRealize provides automation and monitoring.
- VMware ESXi is a Type-1 Hypervisor.
- vMotion performs live Virtual Machine migration.
- Reverse Migration moves workloads back to On-Prem.
- VxRail is Dell's Hyper-Converged Infrastructure solution.
- SDDC manages the Data Center through software.
- Modern On-Prem can also run Kubernetes and Containers.
- HCI combines Compute, Storage, Networking, and Virtualization into one integrated platform.
