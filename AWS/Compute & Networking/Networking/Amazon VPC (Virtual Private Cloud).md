## **Overview**
**Amazon VPC (Virtual Private Cloud)** lets you provision a **logically isolated virtual network** in AWS.  
It gives full control over networking, including **IP addressing, subnets, route tables, firewalls, and gateways**, similar to running a traditional data center network in the cloud.

## **Details**
- **Core Components**
	- **Subnets**
		- Public (internet-facing) or private (internal).  
		- Tied to a specific AZ.  
	- **Route Tables**
		- Define routing rules for subnets.  
	- **Internet Gateway (IGW)**
		- Allows communication between VPC resources and the internet.  
	- **NAT Gateway/Instance**
		- Enables private subnet instances to access the internet (outbound only).  
	- **Virtual Private Gateway (VGW)**
		- Connects VPC to on-prem via **VPN**.  
	- **AWS Direct Connect**
		- Dedicated private link to AWS.  
	- **VPC Peering**
		- Connects two VPCs privately using AWS backbone.  
	- **Transit Gateway**
		- Central hub for connecting multiple VPCs and on-prem networks.  

- **Security**
	- **Security Groups**
		- Stateful, instance-level firewalls (allow rules only).  
	- **Network ACLs (NACLs)**
		- Stateless, subnet-level firewalls (allow & deny rules).  
	- **VPC Flow Logs**
		- Capture IP traffic metadata for security and troubleshooting.  

- **Networking Features**
	- **Elastic IPs** – static IPv4 addresses.  
	- **Elastic Network Interfaces (ENI)** – virtual NICs attachable to instances.  
	- **PrivateLink** – secure private connectivity to AWS services or partner services.  

- **High Availability**
	- VPCs span an entire region, subnets are tied to **specific AZs**.  
	- Best practice: design with **multi-AZ subnets** for redundancy.  

- **Billing**
	- VPC itself is free; pay for NAT gateways, VPNs, Transit Gateway, traffic across AZs/Regions.  

## **Exam Tips**
- **VPC = isolated virtual network** in AWS.  
- **Security Groups = stateful**, **NACLs = stateless**.  
- **IGW = inbound/outbound internet**.  
- **NAT Gateway = outbound only for private subnets**.  
- **VPC Peering = 1:1 connection**, **Transit Gateway = hub-and-spoke**.  
- **Flow Logs = monitoring/troubleshooting tool**.  
- Subnets are **AZ-scoped**, VPC spans an entire region.  

## **References**
- [Amazon VPC](https://aws.amazon.com/vpc/)  
- [Amazon VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)  
