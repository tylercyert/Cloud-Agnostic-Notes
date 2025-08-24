## **Overview**
Azure offers multiple **storage services** and options designed to handle diverse workloads, from unstructured object data to structured relational data. Understanding the different storage types, tiers, redundancy options, and migration tools is critical for optimizing cost, performance, and resilience.  

---
## **Notes**
### **Storage Services**
- [[Azure Storage Accounts]]  
	- [[Azure Blob Storage]] (object/unstructured data)  
	- [[Azure Files]] (SMB/NFS file shares)  
	- [[Azure Queues]] (message storage)  
	- [[Azure Tables]] (NoSQL key-value store)  
	- [[Azure Managed Disks]] (block storage for VMs)  
### **Storage Tiers**
- Hot, Cool, and Archive tiers for cost-performance tradeoffs (mainly with [[Azure Blob Storage]]).  
### **Redundancy Options**
- LRS (Locally Redundant Storage)
	- 3x in current datacenter in primary region. (synchronous)
- ZRS (Zone Redundant Storage)  
	- 3x across AZs in yout primary regeion (synchronous) 
- GRS (Geo-Redundant Storage)  
	- LRS, then copies data to a physical location in the region's pair (asynchronous)
- RA-GRS (Read-Access GRS) 
	- GRS but allows read access even without failover
- GZRS (Geo-Zone Redundant Storage)  
	- ZRS, LRS to another datacenter within your alternate region pair
- RA-GZRS (Read-Access GZRS)  
	- GZRS but allows read access even without failover
### **File Movement Tools**
- [[AzCopy]] → CLI tool for uploading/downloading/copying data  
- [[Azure Storage Explorer]] → GUI for managing storage  
- [[Azure File Sync]] → Sync on-premises file servers with [[Azure Files]]  
### **Migration Options**
- [[Azure Migrate]] → Assess, plan, and migrate workloads (VMs, databases, servers)  
- [[Azure Data Box]] → Physical device for large-scale data transfer to Azure  

---

## **Exam Tips**
- Pick storage service based on **data type** (blob = unstructured, file = SMB/NFS, disk = VM block storage).  
- Use **storage tiers** (Hot/Cool/Archive) to optimize for access frequency.  
- Know redundancy acronyms: LRS = local only, GRS = across regions, RA = adds read-access, Z = adds zone redundancy.  
- [[AzCopy]] = automation; [[Azure Storage Explorer]] = GUI; [[Azure File Sync]] = hybrid integration.  
- For **large-scale migrations**, use [[Azure Data Box]]. For ongoing migrations and assessments, use [[Azure Migrate]].  

---

## **References**
- [Microsoft Learn: Azure Storage introduction](https://learn.microsoft.com/en-us/azure/storage/common/storage-introduction)  
- [Microsoft Learn: Storage redundancy](https://learn.microsoft.com/en-us/azure/storage/common/storage-redundancy)  
- [Microsoft Learn: Azure Migrate](https://learn.microsoft.com/en-us/azure/migrate/migrate-services-overview)  
- [Microsoft Learn: Azure Data Box](https://learn.microsoft.com/en-us/azure/databox/data-box-overview)  