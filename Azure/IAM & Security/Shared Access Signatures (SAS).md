## **Overview**
A **Shared Access Signature (SAS)** is a **secure, delegated access token** that grants **limited permissions** to Azure Storage resources without exposing your account keys.  
- Allows clients to access resources (like [[Azure Blob Storage]], [[Azure Files]], queues, tables) with **fine-grained control** over permissions and duration.  

---
## **Details**
- **Types of SAS**  
	- **User Delegation SAS** → Linked to an Azure AD identity; recommended for most scenarios.  Only provides container or blob access.
	- **Service SAS** → Grants access to a specific service (Blob, File, Queue, Table).  
	- **Account SAS** → Grants access to multiple services in a storage account.  
- **Permissions** → Read, Write, Delete, List, Add, Create, Update, Process.  
- **Scope** → Can apply at account, container/share, or object/file level.  
- **Time-bound** → Start/expiry times must be specified.  
- **IP Restriction** → Can restrict usage to specific IPs or ranges.  
- **Protocol Restriction** → HTTPS-only recommended.  
---
## **Security Notes**
- SAS = **temporary and scoped access**.  
- Safer than using **account keys**, since account keys = root credentials.  
- Revocation methods:  
	- Rotate storage account keys.  
	- Use stored access policies (so SAS tokens can be revoked without waiting for expiry).  
---
## **Use Cases**
- Allowing a client temporary access to download/upload blobs.  
- Delegating permissions to apps without storing account keys.  
- Sharing files with external partners securely.  
- Controlled access for analytics jobs or pipelines.  
---
## **Exam Tips**
- **Account keys = root access** (avoid sharing).  
- **SAS = scoped, temporary access**.  
- **User Delegation SAS** (with Azure AD) is the most secure.  
- Stored Access Policy = way to revoke before expiry.  
- Always prefer HTTPS over HTTP for SAS links.  
---

## **References**
- [Microsoft Learn: SAS overview](https://learn.microsoft.com/en-us/azure/storage/common/storage-sas-overview)  
- [Microsoft Learn: Delegating access with a SAS](https://learn.microsoft.com/en-us/azure/storage/common/storage-sas-overview#types-of-shared-access-signatures)  