## **Overview**
An **Availability Set** is a logical grouping of VMs in Azure that helps keep applications available during planned or unplanned maintenance events. It ensures that VMs are distributed across multiple **fault domains** and **update domains** within a datacenter.
## **Details**
![[Pasted image 20250817133930.png]]
- **Fault Domains (FDs)**  
	- Group of physical servers that share a common power source and network switch. 
	- Protects against hardware failures.  
- **Update Domains (UDs)**  
	- Group of VMs that can be rebooted at the same time during maintenance.  
	- Protects against downtime from planned updates.  
- **How it Works**  
	- Place 2+ VMs in an Availability Set.  
	- Azure spreads them across different FDs and UDs.  
	- Ensures not all VMs go down due to a single hardware failure or update.  
- **Use Case**  
	- Recommended for **critical workloads** that require redundancy within a single region/datacenter.  
	- Often combined with [[Azure Load Balancer]] for distributing traffic.  
- **Limitations**  
	- Only applies within **one datacenter (region)**.  
	- For cross-region redundancy, use [[Azure Availability Zones]] or [[Azure Virtual Machine Scale Sets (VMSS)]].  
## **Exam Tips**
- Availability Sets = **intra-datacenter redundancy**.  
- VMs must be explicitly placed into an Availability Set **at creation** (cannot add later).  
- Minimum for SLA: **2+ VMs in an Availability Set**.  
## **References**
- [Microsoft Learn: Availability Sets](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview)  