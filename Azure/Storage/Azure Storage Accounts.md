---
aliases:
  - Azure Storage Accounts
  - Storage Account Options
---

## **Overview**
An **Azure Storage Account** is the fundamental container for all Azure storage services. It provides a **unique namespace** and a **management boundary** for data services like [[Azure Blob Storage]], [[Azure Files]], [[Azure Queues]], and [[Azure Tables]].  

Choosing the right storage account option impacts **performance, redundancy, access, and cost**.  
## **Details**
### **Storage Account Types**
- **General-purpose v2 (GPv2)**  
	- Default and most commonly used.  
	- Supports **all storage services** (blobs, files, queues, tables, disks).  
	- Offers **all redundancy options** (LRS, ZRS, GRS, RA-GRS).  
	- Supports **tiered storage** (hot, cool, archive for blobs).  
	- Best for most workloads.  
- **General-purpose v1 (GPv1)** *(legacy)*  
	- Supports blobs, files, queues, tables, disks.  
	- Limited features (no access tiers).  
	- Lower pricing for some workloads, but usually replaced by GPv2.  
- **Blob Storage Account** *(legacy)*  
	- Specialized for block and append blobs.  
	- Supports hot and cool access tiers.  
	- Functionality merged into GPv2.  
- **Premium Storage Accounts**  
	- Designed for **high-performance/low-latency** workloads.  
	- Types:  
		- **Premium SSD Managed Disks**.  
		- **Premium Block Blobs**.  
		- **FileStorage** (premium Azure Files).  
	- Backed by SSDs, costlier but faster.  
### **Key Considerations**
- **Redundancy** → Choose between [[LRS, ZRS, GRS, RA-GRS]].  
- **Performance** → Standard (HDD/SSD) vs Premium (SSD only).  
- **Access Tiers** → Hot, Cool, Archive (blob-specific, GPv2 only).  
## **Exam Tips**
- **Always default to GPv2** unless you need specialized premium performance.  
- Blob-only and GPv1 exist but are **legacy**.  
- Premium = SSD-backed, best for I/O intensive workloads.  
- Access tiers only apply to **blobs** (not files/queues/tables).  
## **References**
- [Microsoft Learn: Storage Account Overview](https://learn.microsoft.com/en-us/azure/storage/common/storage-account-overview)  