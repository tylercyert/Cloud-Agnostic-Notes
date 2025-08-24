---
aliases:
  - VNet
  - Virtual Network
---
## **Overview**
An Azure Virtual Network (VNet) is the **fundamental building block for networking in Azure**. It allows [[Azure Resources and Resource Groups|Azure Resources]] (e.g., [[Azure Virtual Machines (VMs)]], containers, databases) to securely communicate with each other, the internet, and on-premises networks.
## **Details**
- **Isolation & Segmentation**  
	- Provides logical isolation of the network in [[Azure]].  
	- Can be divided into [[Azure Subnets]] for finer control.  
- **Connectivity Options**  
	- Internet access for resources with public IPs.  
	- Secure communication between resources in the same VNet.  
	- VNet-to-VNet connections with [[Azure VNet Peering]].  
	- Hybrid connectivity with on-premises networks via [[Azure VPN Gateway]] or [[Azure ExpressRoute]].  
- **Integration**  
	- VNets can be integrated with [[Azure DNS]] for custom name resolution.  
	- Supports network security controls like [[Network Security Groups (NSGs)]].  
- **Use Cases**  
	- Hosting workloads in a secure, isolated environment.  
	- Extending on-premises datacenters into the cloud.  
	- Enabling hybrid or multi-tier applications.  
## **Exam Tips**
- VNet = **logical isolation + secure communication** in Azure.  
- Think of a VNet like an on-premises **LAN in the cloud**.  
- Use **Subnets** to organize resources.  
- Use **VPN Gateway** (over internet) or **ExpressRoute** (private dedicated connection) for hybrid scenarios.  
## **References**
- [Microsoft Learn: Virtual Network overview](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview)  