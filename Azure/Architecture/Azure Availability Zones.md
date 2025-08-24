## **Overview**
Availability Zones (AZs) are physically separate datacenters within an [[Azure regions|Azure region]], designed to improve availability and fault tolerance.

## **Details**
- Each zone is an independent physical location with its own power, cooling, and networking.  
- A region can have at least **3 zones** (not all regions support them).  
- Protects against **datacenter-level failures**.  
- Services can be:  
	- **Zonal** (pinned to a specific zone).  
	- **Zone-redundant** (replicated across multiple zones).  
- Ensures high availability for critical workloads (e.g., [[Virtual Machines (VMs)|VMs]], [[Databases]], [[Storage accounts]]).  
- SLAs: [[Virtual Machines (VMs)|Azure VMs]] in Availability Zones can reach **99.99% uptime SLA**.  

## **References**
- [Microsoft Learn: Availability Zones](https://learn.microsoft.com/en-us/azure/reliability/availability-zones-overview)  
- [Microsoft Learn: Regions and Availability](https://learn.microsoft.com/en-us/azure/reliability/availability-zones-service-support)  
