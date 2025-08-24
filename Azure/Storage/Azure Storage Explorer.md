## **Overview**
**Azure Storage Explorer** is a **GUI tool** by [[Microsoft]] that lets you manage and interact with [[Azure Storage Accounts]] without using the portal or CLI.  
It’s designed for **day-to-day management, troubleshooting, and simple data movement**.

## **Details**
- **Supported Services**:  
	- [[Azure Blob Storage]]  
	- [[Azure Files]]  
	- [[Azure Queues]]  
	- [[Azure Tables]]  
- **Authentication**:  
	- [[Azure Active Directory (Entra ID)]] sign-in  
	- [[Shared Access Signature (SAS)]]  
	- Storage account keys  
- **Capabilities**:  
	- Upload, download, and manage blobs, files, and containers  
	- Edit metadata and properties  
	- View and update queue messages  
	- Query [[Azure Tables]]  
	- Manage snapshots and access policies  
- **Use Cases**:  
	- Non-technical users who prefer a GUI over [[AzCopy]]  
	- Quickly browsing/debugging storage contents  
	- Performing small-scale uploads/downloads  

## **Exam Tips**
- **AzCopy = CLI (big transfers, automation).**  
- **Azure Storage Explorer = GUI (management, smaller tasks).**  
- Both use **SAS tokens** or account keys for delegated access.  

## **References**
- [Microsoft Learn: Storage Explorer](https://learn.microsoft.com/en-us/azure/vs-azure-tools-storage-manage-with-storage-explorer)  