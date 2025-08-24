## **Overview**
**Azure File Sync** is a service that allows you to **centralize file shares in Azure Files** while keeping the flexibility, performance, and compatibility of on-premises Windows Servers. It enables you to cache frequently accessed files locally while maintaining full cloud-based storage and backup in Azure.  

## **Details**
- **Hybrid capability** → Keeps an on-premises file server while extending storage to the cloud.  
- **Cloud tiering** → Only hot (frequently accessed) data is cached locally; cold data stays in Azure Files.  
- **Multiple server sync** → Sync the same file share to multiple Windows Servers for branch offices.  
- **Backup & recovery** → Data is safeguarded in Azure Files, so you don’t need to rely solely on local backups.  
- **Access methods** → Users can access files via:  
	- SMB (on-prem Windows file server)  
	- Directly from [[Azure Files]] in the cloud.  
- **Migration path** → Useful for migrating from traditional file servers to cloud-based file shares over time.  

## **Use Cases**
- Replacing aging on-premises file servers.  
- Branch office scenarios (multiple offices syncing to one central file share).  
- Tiered storage to save on-premises storage costs.  
- Disaster recovery — since Azure holds the authoritative copy.  

## **References**
- [Microsoft Learn: What is Azure File Sync?](https://learn.microsoft.com/en-us/azure/storage/file-sync/file-sync-introduction)  