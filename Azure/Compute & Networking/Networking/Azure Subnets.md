---
aliases:
  - Subnets
---
## **Overview**
An Azure Subnet is a **logical subdivision** of an [[Azure Virtual Network (VNet)]]. Subnets allow you to segment and organize IP address space within a VNet for better security, performance, and resource management.

Still operates at Layer 3 but managed by the ARM. 
## **Details**
- **IP Addressing**  
	- Each subnet gets a portion of the VNet’s IP address range (CIDR block).  
	- Resources in the subnet (like [[Azure Virtual Machines (VMs)]], [[Azure App Service (Web Apps)|App Services with VNet Integration]]) receive private IPs from this range.  

- **Isolation & Security**  
	- Subnets act as boundaries for applying [[Network Security Groups (NSGs)]].  
	- Can restrict or allow traffic at the subnet level.  

- **Integration**  
	- Special subnets are reserved for certain services (e.g., **GatewaySubnet** for [[Azure VPN Gateway]], **AzureBastionSubnet** for [[Azure Bastion]]).  
	- Subnets can connect to on-prem networks via [[Azure VPN Gateway]] or [[Azure ExpressRoute]].  

- **Use Cases**  
	- Organize workloads (e.g., front-end, app, database tiers).  
	- Apply granular security rules per subnet.  
	- Enable hybrid connectivity scenarios.  
## **Exam Tips**
- Subnet = **smaller network inside a VNet**.  
- Used for **IP address management, segmentation, and security boundaries**.  
- Key to remember: **NSGs are applied at the subnet or NIC level**.  
- Some services require **special reserved subnets**.  
## **References**
- [Microsoft Learn: Subnets in Azure](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-manage-subnet)  