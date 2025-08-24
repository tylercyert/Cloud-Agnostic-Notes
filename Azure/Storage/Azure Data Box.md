## **Overview**
**Azure Data Box** is a **physical appliance** provided by [[Microsoft]] to help customers move **large volumes of data** into or out of [[Azure Storage]]. It’s designed for scenarios where transferring data over the internet would be too slow, costly, or impractical.

## **Details**
- **Purpose**  
	- Move **tens of terabytes to petabytes** of data securely to/from Azure.  
	- Avoids bandwidth bottlenecks and high egress costs.  
- **Form Factors**  
	- **Data Box Disk** → Up to 40 TB (5 × 8 TB drives).  
	- **Data Box** → Up to 100 TB appliance.  
	- **Data Box Heavy** → Up to 1 PB (racked appliance).  
- **Process**  
	1. Order a Data Box device from the [[Azure Portal]].  
	2. Microsoft ships the device to you.  
	3. Copy your data locally using secure connections.  
	4. Ship the device back to Microsoft.  
	5. Microsoft uploads the data into your chosen [[Azure Storage Account]] (e.g., [[Azure Blob Storage]], [[Azure Files]]).  
- **Security**  
	- Data is **encrypted** (AES-256).  
	- Device has **tamper-resistant hardware**.  
	- Chain of custody is tracked end-to-end.  

## **Use Cases**
- Datacenter migrations.  
- Disaster recovery seeding.  
- Large dataset transfer (e.g., media, genomics, IoT).  
- Government/isolated environments where network transfer isn’t possible.  

## **Exam Tips**
- Use **Azure Data Box** when moving **large, one-time data sets**.  
- For **ongoing hybrid sync**, use tools like [[Azure File Sync]] or [[AzCopy]].  
- Devices come in different sizes (Disks → Data Box → Data Box Heavy).  

## **References**
- [Microsoft Learn: Azure Data Box](https://learn.microsoft.com/en-us/azure/databox/data-box-overview)  