## **Overview**
The **Azure Load Balancer** is a Layer 4 (TCP/UDP) load balancer that distributes inbound and outbound traffic across healthy instances of services, such as VMs, within a region. It helps ensure high availability and scalability.
## **Details**
- **Types**
	- **Public Load Balancer** → Routes internet traffic to Azure resources (e.g., VMs in a web tier).  
	- **Internal Load Balancer (ILB)** → Routes traffic within a virtual network (e.g., between app tiers).  
- **Key Features**
	- Operates at **Layer 4 (Transport Layer)** using TCP/UDP.  
	- Uses **health probes** to monitor VM/application instance status.  
	- Supports **inbound NAT rules** for directing specific ports to specific VMs.  
	- Can load balance both **inbound** and **outbound** traffic.  
	- Works with other redundancy options like [[Availability Sets]] or [[Azure Virtual Machine Scale Sets (VMSS)]].  
- **Scenarios**
	- Public-facing web apps (internet to VMs).  
	- Internal line-of-business apps (tiered architecture).  
	- High-performance workloads that need millions of requests per second with low latency.  
- **Limitations**
	- Layer 4 only → No application-aware routing (use [[Azure Application Gateway]] for Layer 7).  
	- Must configure backend pools, rules, and probes.  
## **Exam Tips**
- Azure Load Balancer = **Layer 4 (TCP/UDP)**.  
- **Public vs Internal** → External traffic vs private VNet traffic.  
- Always paired with **Availability Sets** or **VMSS** for high availability.  
- For Layer 7 features (SSL termination, URL routing, WAF), use **Application Gateway**.  

## **References**
- [Microsoft Learn: Azure Load Balancer](https://learn.microsoft.com/en-us/azure/load-balancer/load-balancer-overview)  