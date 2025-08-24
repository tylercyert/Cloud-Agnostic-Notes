## **Overview**
**AzCopy** is a command-line utility provided by [[Microsoft]] for copying data to and from [[Azure Storage Accounts]].  
It’s optimized for **high-performance, bulk data transfer** and supports multiple Azure storage services.
## **Details**
- **Supported Services**:  
	- [[Azure Blob Storage]] (block, append, page blobs)  
	- [[Azure Files]]  
	- [[Azure Tables]] (limited export)  
- **Authentication**:  
	- [[Azure Active Directory (Entra ID)]] credentials  
	- [[Shared Access Signature (SAS)]] tokens  
	- Storage account keys  
- **Scenarios**:  
	- Upload/download blobs or files at scale  
	- Migrate data between on-premises and Azure  
	- Sync local folders with Azure storage containers  
	- Automate transfers via scripts (PowerShell, Bash, CI/CD pipelines)  
- **Performance**:  
	- Parallel, multi-threaded transfers  
	- Resumable transfers (if interrupted)  
	- Can throttle bandwidth to control network impact  
## **Exam Tips**
- Think of **AzCopy** as the “rsync/robocopy” for Azure storage.  
- You’ll likely see it in questions about **migrating files** to [[Azure Blob Storage]] or [[Azure Files]].  
- Use **SAS tokens** when you need temporary access to move files securely.  
## **References**
- [Microsoft Learn: AzCopy](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10)  