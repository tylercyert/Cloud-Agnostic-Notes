---
aliases:
  - VMs
  - Azure VMs
---

## **Overview**
Azure Virtual Machines (VMs) are an [[IaaS (Infrastructure as a Service)]] offering in [[Azure]], providing on-demand, scalable computing power. They allow you to run Windows or Linux operating systems and host applications in the cloud with full administrative control.
## **Details**
- **Control & Flexibility**  
	- Full control over the operating system, software, networking, and configurations.  
	- Ideal for applications that require custom environments or migration from on-premises.  
- **VM Options**  
	- Multiple VM sizes (general-purpose, compute-optimized, memory-optimized, GPU, storage-optimized).  
	- [[Azure Virtual Machine Scale Sets (VMSS)]] → Automatically scale VMs up/down.  
	- [[Azure Availability Sets]] → Protect against hardware failures within a datacenter.  
	- [[Azure Availability Zones]] → Protect against datacenter-level failures.  
- **Requirements**  
	- Each VM requires:  
		- **Compute** (vCPU + RAM selection).  
		- **Storage** ([[Managed Disks]] for OS/data).  
		- **Networking** ([[Azure Virtual Network (VNet)]], NIC, Subnet).  
		- **Region** placement.  
- **Use Cases**  
	- Lift-and-shift workloads from on-premises.  
	- Running custom apps not supported by PaaS.  
	- Development/test environments.  
	- Hosting apps that need OS-level control.  
## **Exam Tips**
- **VMs = IaaS** → You manage OS + software, Microsoft manages physical infrastructure.  
- Good for **legacy apps, custom environments, or lift-and-shift** migrations.  
- Use **VMSS** for auto-scaling, **Availability Sets** for fault tolerance, and **Availability Zones** for high availability.  
## **References**
- [Microsoft Learn: Azure Virtual Machines](https://learn.microsoft.com/en-us/azure/virtual-machines/overview)  