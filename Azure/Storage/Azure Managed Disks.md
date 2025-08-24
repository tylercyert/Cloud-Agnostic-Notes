---
aliases:
  - Managed Disks
  - Azure Managed Disks
---

## **Overview**
**Azure Managed Disks** are block-level storage volumes managed by [[Microsoft]] for use with [[Azure Virtual Machines (VMs)]]. They simplify storage management by handling the storage account, scalability, and durability automatically.  

## **Details**
- Types of Managed Disks (SKUs):  
	- **Standard HDD** → Low-cost, for dev/test workloads.  
	- **Standard SSD** → Balanced cost and performance.  
	- **Premium SSD** → High-performance, low-latency for production workloads.  
	- **Ultra Disk** → Extreme performance for data-intensive workloads (e.g., [[SAP HANA]]).  
- Features:  
	- [[Microsoft]] handles **storage accounts, replication, and scaling** behind the scenes.  
	- Disks are automatically replicated **within the region** for durability.  
	- Support for **snapshots** and **images** for backup and deployment.  
	- Encrypted at rest with [[Azure Storage Service Encryption]].  
	- Integrated with **availability sets** and [[Azure Virtual Machine Scale Sets (VMSS)]].  

## **Key Benefits**
- **Simplified Management**: No need to manually create/manage storage accounts.  
- **Durability**: Replicated within the same region to protect from hardware failure.  
- **Scalability**: Attach up to 50,000 disks to a subscription (limits depend on SKU).  
- **Performance**: Disk SKUs align with workload requirements (cost ↔ performance tradeoff).  

## **Exam Tips**
- Managed Disks = **block storage** for VMs.  
- Choose **HDD for cost, SSD for performance**.  
- Premium SSD = low latency, production-ready.  
- Ultra Disk = extreme IOPS and throughput.  
## **References**
- [Microsoft Learn: Azure Managed Disks](https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview)  