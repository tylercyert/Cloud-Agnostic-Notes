## **Overview**
**Azure Blob Storage** is Microsoft’s **object storage** solution for unstructured data (text, images, video, backups, logs, etc.). It’s optimized for scalability, durability, and serving large amounts of data over HTTP/HTTPS.  

---

## **Details**
- **Blobs** = Binary Large Objects.  
- Data is stored inside **containers** (like folders) within a [[Azure Storage Accounts|storage account]].  
- Supports massive scalability (petabytes of data).  
- Blob types:  
	- **Block Blobs** → Most common; optimized for streaming and storing documents, media, backups.  
	- **Append Blobs** → Optimized for append operations (e.g., logging).  
	- **Page Blobs** → Random read/write, used for VHDs (e.g., Azure VMs).  

### **Access Tiers**
- **Hot** → Optimized for frequent access, higher storage cost, lower access cost.  
- **Cool** → Infrequent access, lower storage cost, higher access cost.  
- **Archive** → Offline tier, very low cost, high retrieval latency.  

### **Features**
- Globally accessible via HTTP/HTTPS with a **public endpoint** (or a [[Azure Private Endpoints|private endpoint]] for secure access).  
- Supports **lifecycle management policies** (e.g., auto-move blobs from Hot → Cool → Archive).  
- Redundancy handled at the [[Describe Azure storage services#Redundancy Options|storage account level]] (LRS, ZRS, GRS, etc.).  
- Integration with [[AzCopy]], [[Azure Storage Explorer]], and SDKs for automation.  

---

## **Use Cases**
- Application data storage (media, logs, backups).  
- Hosting static website content.  
- Long-term archive of compliance data.  
- Storage for big data analytics pipelines.  

---

## **Exam Tips**
- **Block Blob** = default for most workloads.  
- **Append Blob** = logging.  
- **Page Blob** = VM disks.  
- Access tiers trade **cost vs frequency of access**.  
- Remember containers = logical grouping inside a storage account.  

---

## **References**
- [Microsoft Learn: Introduction to Azure Blob Storage](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)  
- [Microsoft Learn: Blob storage access tiers](https://learn.microsoft.com/en-us/azure/storage/blobs/access-tiers-overview)  