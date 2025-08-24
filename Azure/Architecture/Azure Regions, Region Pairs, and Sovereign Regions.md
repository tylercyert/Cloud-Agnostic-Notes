---
aliases:
  - Azure regions
---
## **Overview**
Region pairs are two [[Azure regions]] within the same geography, paired together to provide redundancy, disaster recovery, and compliance with data residency requirements. This is managed completely by [[Microsoft]], but users can choose which region they wish to deploy in.

## **Details**
- Each Azure region is **paired with another** in the same geography (e.g., East US ↔ West US).  
- Benefits:  
	- **Sequential updates:** Planned [[Azure]] updates roll out to one region at a time, reducing downtime risk.  
	- **Disaster recovery:** At least 300 miles apart (when possible) to protect against regional outages.  
	- **Data residency:** Ensures data stays within the same geography for compliance.  
- If one region goes down, services can fail over to its pair.  
- Customers don’t choose pairs—**[[Microsoft]] defines them**.  

## **Region Pair Replication**
- **Region pairs are predefined** by [[Microsoft]]; you don’t opt in or configure the pairing itself.  
- **Replication is not automatic for all services**:  
	- Some services, like [[*Azure Storage]] with [[GRS (Geo-Redundant Storage)]], replicate automatically across the paired region.  
	- Others, such as [[Virtual Machines (VMs)]] or [[Azure SQL Database]], require you to configure disaster recovery (e.g., [[Azure Site Recovery]], geo-replication).  
- Benefit: When replication is enabled, data stays **within the same geography (usually a country or governing body jurisdiction)** for compliance and disaster recovery.  
- Planned maintenance is rolled out **one region at a time** to reduce downtime risk.  

## **Sovereign Regions**
- Logically and physically isolated from the main Azure regions.  
- Built to meet strict **governmental or regional compliance** requirements.  
- Examples: [[Azure Government]] (US), [[Azure China]], and [[Azure Germany]].  

## **References**
- [Microsoft Learn: Azure region pairs](https://learn.microsoft.com/en-us/azure/reliability/cross-region-replication-azure)  