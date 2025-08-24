## **Overview**
**Azure Migrate** is Microsoft’s central service for discovering, assessing, and migrating on-premises workloads to Azure.  
It provides a unified hub with tools for servers, databases, web apps, and virtual desktops, helping plan and execute migrations.
## **Details**
- **Discovery & Assessment**
	- Scans on-premises datacenters (VMware, Hyper-V, physical servers).
	- Collects performance data and dependencies.
	- Provides cost estimates and sizing recommendations for Azure.
- **Migration**
	- Supports lift-and-shift (rehost) migrations for VMs.  
	- Database migration via **Database Migration Service**.  
	- Web app migration via **App Service Migration Assistant**.  
	- VDI migration via **Azure Virtual Desktop** integration.  
- **Integration**
	- Works with other tools like **Azure Site Recovery** for replication. 
	- Extensible with ISV tools (e.g., Cloudamize, Turbonomic).  
- **Benefits**
	- Centralized hub for multiple migration scenarios.  
	- Reduces guesswork by analyzing dependencies.  
	- Helps optimize cost before moving workloads.  
## **Exam Tips**
- Think of Azure Migrate as the **“front door” for cloud migration**.  
- Provides **assessment + migration**, not just the move.  
- Covers **servers, databases, apps, and desktops**.  
- Often paired with tools like **[[Azure Site Recovery]]** for continuity.  
## **References**
- [Microsoft Learn: What is Azure Migrate](https://learn.microsoft.com/en-us/azure/migrate/migrate-overview)