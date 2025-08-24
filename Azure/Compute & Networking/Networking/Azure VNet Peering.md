---
aliases:
  - VNet Peering
---
## **Overview**
Azure VNet Peering connects two [[Azure Virtual Network (VNet)|VNets]] so resources in both can communicate with each other **privately** as if they were on the same network.
## **Details**
- **Connectivity**  
	- Provides **low-latency, high-bandwidth** connection between VNets.  
	- Traffic stays on the [[Microsoft]] backbone — never goes over the public internet.  
	- Supports communication across **subnets, VNets, and regions**.  
- **Types of Peering**  
	- **Regional VNet Peering** → Between VNets in the same Azure region.  
	- **Global VNet Peering** → Between VNets in different Azure regions.  
- **Limitations**  
	- Peering is **non-transitive** → If VNet A is peered with B, and B with C, A cannot automatically talk to C.  
	- You may need additional configuration like [[Azure VPN Gateway]] for complex topologies.  
- **Use Cases**  
	- Connecting VNets for multi-tier applications.  
	- Sharing resources across teams or departments.  
	- Extending networks across regions without using VPN/ExpressRoute.  
## **Exam Tips**
- VNet Peering = **private, backbone connection** between VNets.  
- **Regional = same region**, **Global = cross-region**.  
- Remember: **not transitive**.  
- Faster and more secure than routing traffic over public internet.  
## **References**
- [Microsoft Learn: VNet Peering](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-peering-overview)  