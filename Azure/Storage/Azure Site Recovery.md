## **Overview**
**Azure Site Recovery (ASR)** is Microsoft’s disaster recovery (DR) service.  
It replicates workloads running on **on-premises servers, VMs, or Azure VMs** to another region or datacenter, ensuring business continuity during outages.

## **Details**
- **Primary Use Case**
	- Business continuity + disaster recovery (BCDR).  
	- Keep apps and workloads running during planned or unplanned outages.  
- **Replication**
	- Replicates workloads from:  
		- On-premises → Azure.  
		- Azure region → another Azure region.  
	- Supports **Hyper-V, VMware, physical servers, and Azure VMs**.  
- **Failover/Failback**
	- **Planned failover** (maintenance or migration).  
	- **Unplanned failover** (outage or disaster).  
	- **Failback** restores workloads to primary location once available.  
- **Automation**
	- Runbooks and recovery plans automate failover order (e.g., database → app → web).  
- **Integration**
	- Works with **Azure Backup** (backup ≠ DR).  
	- Complements **Azure Migrate** when migrations need ongoing replication before cutover.  

## **Exam Tips**
- **ASR = disaster recovery, not migration** (though it can assist migrations).  
- Protects against datacenter/regional failure.  
- Understand difference:  
	- **Azure Backup** → Long-term data protection.  
	- **ASR** → Near real-time workload replication + failover.  
- Supports both **on-premises → Azure** and **Azure → Azure** recovery.  

## **References**
- [Microsoft Learn: What is Azure Site Recovery](https://learn.microsoft.com/en-us/azure/site-recovery/site-recovery-overview)