---
aliases:
  - VPN Gateway
  - Azure VPN
---
## **Overview**
Azure VPN Gateway is a networking service in [[Azure]] that establishes **encrypted tunnels** between an [[Azure Virtual Network (VNet)]] and other networks (on-premises, other VNets, or client devices) over the public internet.
## **Details**
- **Deployment**  
	- Runs as a dedicated resource in a VNet.  
	- Requires its own subnet called the **GatewaySubnet**.  
	- Billed hourly while provisioned, regardless of usage.  

- **Connection Types**  
	- **Site-to-Site (S2S)** → Connects an on-premises network to an Azure VNet.  
	- **Point-to-Site (P2S)** → Allows individual devices (e.g., laptops) to securely connect to a VNet.  
	- **VNet-to-VNet** → Connects two VNets (same or different regions).  

- **Security**  
	- Traffic is encrypted using IPsec/IKE tunnels.  
	- Data travels over the **public internet** but remains secure due to encryption.  

- **Performance**  
	- More latency than [[Azure VNet Peering]] since it routes over the internet and through the gateway appliance.  
	- Bandwidth is limited based on SKU (Basic → HighPerformance).  

- **Use Cases**  
	- Hybrid connectivity (extend on-prem datacenter into Azure).  
	- Secure remote access for employees (P2S).  
	- Cross-VNet connectivity where encryption is required.  

## **Exam Tips**
- VPN Gateway = **secure tunnels over the internet**.  
- Best for **hybrid connections** and **remote access**.  
- If the scenario says **low latency, Azure-only**, answer = [[Azure VNet Peering]].  
- If it says **dedicated private connection**, answer = [[Azure ExpressRoute]].  

## **References**
- [Microsoft Learn: What is VPN Gateway?](https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpngateways)  