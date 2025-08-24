## **Overview**
**Azure Table Storage** is a NoSQL key-value store that allows applications to store and retrieve large amounts of structured, non-relational data. It’s ideal for scenarios needing fast, scalable access to simple datasets without the overhead of a relational database.
## **Details**
- **Type**: NoSQL, key-value store.  
- **Structure**:  
	- **Tables** → Containers for entities.  
	- **Entities** → Individual rows (like records).  
	- **Properties** → Key-value pairs within an entity (like columns).  
- **Keys**:  
	- **PartitionKey** – Determines how entities are distributed across storage for scalability.  
	- **RowKey** – Unique identifier within a partition.  
	- Together, **PartitionKey + RowKey** form a unique identifier for each entity.  
- **Scenarios**:  
	- Logging and telemetry.  
	- IoT event tracking.  
	- Metadata storage.  
- **Performance**: Designed for massive scale, quick lookups, and low-cost storage.  

## **Notes**
- Part of [[Azure Storage Accounts]].  
- Access via [[Shared Access Signatures (SAS)]] or account keys.  
- Data is **schema-less** (properties can vary per entity).  

## **Exam Tips**
- **Table Storage ≠ Azure SQL** → No relational querying, no joins.  
- Best for **key-based lookups**, not complex queries.  
- Choose **Cosmos DB Table API** if you need advanced global distribution + SLAs.  

## **References**
- [Microsoft Learn: Table Storage](https://learn.microsoft.com/en-us/azure/storage/tables/table-storage-overview)  
- [[Relational vs. Non-Relational Databases]]