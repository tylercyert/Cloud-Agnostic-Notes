## **Overview**
Azure Virtual Machines (VMs) use **Managed Disks** as their primary storage solution. Managed Disks abstract away the complexity of managing storage accounts and provide a simple, scalable, and secure way to attach persistent storage to VMs.
## **Details**
- **Managed Disks Basics**  
	- Virtualized block storage attached to VMs.  
	- Azure handles storage account management, redundancy, and scalability.  
	- Comes in different performance tiers (Standard HDD, Standard SSD, Premium SSD, Ultra Disk).  
- **Disk Types**  
	- **OS Disk** → Required for VM boot. Created from an image.  
	- **Data Disks** → Additional storage for applications, databases, or files.  
	- **Temporary Disk** → Local (non-persistent) storage for caching and temporary data (often the `D:` drive).  
- **Redundancy Options**  
	- **Locally Redundant Storage (LRS)** → 3 copies within one datacenter.  
	- **Zone-Redundant Storage (ZRS)** → Replicated across availability zones in a region.  
	- **Geo-Redundant Storage (GRS)** → Replicated to paired region (asynchronous).
		- (See [[Azure Regions, Region Pairs, and Sovereign Regions]])  
- **Performance Tiers**  
	- **Standard HDD** → Low-cost, basic workloads.  
	- **Standard SSD** → Better latency, cost-effective for most workloads.  
	- **Premium SSD** → High performance, low latency, suited for production apps.  
	- **Ultra Disk** → Extreme performance for big data, SAP, high-IO workloads.  
- **Snapshots & Images**  
	- **Snapshot** → Point-in-time backup of a disk.  
	- **Image** → A template that includes OS + data disks for VM creation.  
## **Relationships**
- A VM always has **one OS disk**.  
- **Data disks** are optional but attachable.  
- **Temporary disk** is automatically provisioned but not durable.  
- **Azure Backup** and **Azure Site Recovery** integrate with managed disks for protection and DR.
## **Exam Tips**
- **Temporary disk = non-persistent.** Don’t store critical data there.  
- **OS disk** max size = 2 TB; **data disks** up to 32 TB each.  
- Choose disk type based on workload (Standard HDD for dev/test, Premium SSD for production, Ultra Disk for mission-critical).  
- Redundancy choice impacts durability & cost.  
## **References**
- [Microsoft Learn: Managed Disks Overview](https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview)  
- [Microsoft Learn: Types of disks](https://learn.microsoft.com/en-us/azure/virtual-machines/disks-types)