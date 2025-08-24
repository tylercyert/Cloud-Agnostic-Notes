## **Overview**
Azure Virtual Machines (VMs) require networking components to communicate within Azure and with external resources. These components include the **Network Interface Card (NIC)**, the **Virtual Network (VNet)**, and **Subnets**, which together define connectivity, isolation, and access control.
## **Details**
- **NIC (Network Interface Card)**  
	- A VM must have at least **one NIC** to connect to a [[Azure Virtual Network (VNet)|VNet]].  
	- Each NIC has:  
		- One or more private IP addresses (assigned from a subnet).  
		- Optionally, a public IP address for internet access.  
		- Network security group (NSG) rules for inbound/outbound traffic filtering.  
	- Multiple NICs are supported for advanced networking scenarios (e.g., firewalls, routing).
- **VNet (Virtual Network)**  
	- The logical isolation boundary for Azure networking.  
	- VNets span multiple [[Azure Subnets|subnets]] and support features like [[Azure VNet Peering]], [[Azure VPN Gateway]], and [[Azure ExpressRoute]].  
	- Acts like a private LAN in the cloud.

- **Subnet**  
	- A range of IP addresses within a VNet.  
	- Each subnet contains resources such as VMs, databases, or application gateways.
	- Enables segmentation of workloads (e.g., web tier, app tier, database tier).  
	- Provides scope for NSGs and route tables to control traffic flow.

## **Relationships**
- A **VM** connects to a **NIC**.  
- The **NIC** is attached to a **Subnet**.  
- The **Subnet** is part of a **VNet**.  
- The **VNet** defines the overall network space for the subscription and can connect to other VNets or on-premises networks.

## **Exam Tips**
- Remember the chain: **VM → NIC → Subnet → VNet**.  
- Each NIC gets an IP from its subnet.  
- Subnets = segmentation, VNets = isolation, NIC = attachment point.  
- Use NSGs at subnet or NIC level for filtering.  
- VNet Peering connects VNets; VPN/ExpressRoute connects to on-premises.

## **References**
- [Microsoft Learn: Configure VM networking](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-network-interface)
- [Microsoft Learn: Virtual Network Overview](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview)