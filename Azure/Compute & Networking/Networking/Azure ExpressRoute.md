---
aliases:
  - ExpressRoute
---

## **Overview**
Azure ExpressRoute provides a **dedicated private connection** between an on-premises network and [[Azure]], bypassing the public internet. It offers greater reliability, faster speeds, consistent latency, and higher security than typical VPN connections.
## **Details**
- **Private Connectivity**  
	- Traffic flows through a dedicated circuit from a connectivity provider to Microsoft’s network.  
	- Does not traverse the public internet.  
- **Performance**  
	- Supports bandwidths from 50 Mbps to 100 Gbps.  
	- More reliable and predictable latency compared to [[Azure VPN Gateway]].  
- **Integration**  
	- Connect to multiple [[Azure Virtual Network (VNet)|VNets]] in the same region or across regions.  
	- Can be combined with VPN Gateway for failover (ExpressRoute + VPN).  
- **Use Cases**  
	- Mission-critical workloads that need guaranteed performance.  
	- Large data transfers between on-premises and Azure.  
	- Industries with strict compliance requirements (finance, healthcare, government).  
- **Cost Consideration**  
	- Requires working with a Microsoft-approved connectivity provider.  
	- More expensive than VPN Gateway due to dedicated infrastructure.  
## **Exam Tips**
- **ExpressRoute = private dedicated circuit**.  
- Best for **high performance, compliance, and predictable latency**.  
- Compare:  
	- [[Azure VNet Peering]] → Azure-to-Azure, private backbone.  
	- [[Azure VPN Gateway]] → Encrypted tunnel over public internet.  
	- **ExpressRoute** → Private ISP circuit, bypasses internet completely.  
## **References**
- [Microsoft Learn: What is Azure ExpressRoute?](https://learn.microsoft.com/en-us/azure/expressroute/expressroute-introduction)  