## **Overview**
**Azure Files** provides fully managed **file shares** in the cloud, accessible using the **Server Message Block (SMB)** or **Network File System (NFS)** protocols. It enables lift-and-shift of on-premises file shares to Azure with no need to manage hardware, while still supporting familiar tools and access patterns.
## **Details**
- **Protocols**
	- Supports [[SMB]] (Windows, Linux, macOS clients).  
	- Supports [[NFS]] (Linux/Unix clients).  
- **Access**
	- Can be mounted directly to Azure VMs or on-premises machines.  
	- Integrates with **Active Directory / Entra ID** for authentication and access control.  
	- Supports **Private Endpoints** for secure access within VNets.  
- **Scenarios**
	- Lift-and-shift file shares.  
	- Shared configuration, content repositories.  
	- Replace/extend on-premises file servers.  
- **Performance tiers**
	- **Premium** (SSD-backed, low latency).  
	- **Hot / Cool tiers** (for cost optimization).  
- **Features**
	- Snapshot support for backup/recovery.  
	- Azure File Sync → replicates Azure Files share to on-prem servers, keeping local performance while centralizing storage.  
## **Exam Tips**
- Think of it as **cloud-based SMB/NFS file shares**.  
- **Azure File Sync** = hybrid scenario.  
- Works with **Entra ID** for identity-based access.  
- Mountable both from Azure VMs and on-premises.  
## **References**
- [Microsoft Learn: Azure Files](https://learn.microsoft.com/en-us/azure/storage/files/storage-files-introduction)  