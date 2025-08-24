## **Overview**
**Amazon DynamoDB** is a fully managed **NoSQL database service** that provides **single-digit millisecond latency**, **automatic scaling**, and built-in **high availability** across multiple AZs.  
It’s ideal for applications needing **fast, consistent performance** at any scale.

## **Details**
- **Core Characteristics**
	- **NoSQL**: Key-value and document data model.  
	- **Fully managed**: No server provisioning, patching, or scaling required.  
	- **Durability & HA**: Data automatically replicated across multiple AZs in a region.  
	- **Performance**: Single-digit millisecond latency, predictable at scale.  

- **Capacity Modes**
	- **On-Demand**
		- Pay-per-request (reads/writes).  
		- Scales automatically.  
		- Best for unpredictable workloads.  
	- **Provisioned**
		- Predefine Read/Write Capacity Units (RCUs/WCUs).  
		- Can enable **Auto Scaling** to adjust capacity automatically.  

- **Indexes**
	- **Primary Key** (Partition Key or Partition + Sort Key).  
	- **Global Secondary Index (GSI)** – query across different attributes.  
	- **Local Secondary Index (LSI)** – query with alternate sort key (must be defined at table creation).  

- **Security**
	- Integrated with [[AWS Identity and Access Management (IAM)]].  
	- Supports encryption at rest (AWS KMS) and in transit (TLS).  

- **Features**
	- **DynamoDB Streams** – capture item-level changes for [[AWS Lambda (Serverless)]] triggers or replication.  
	- **DAX (DynamoDB Accelerator)** – fully managed in-memory cache with microsecond latency.  
	- **Global Tables** – multi-region, active-active replication for global apps.  
	- **Time to Live (TTL)** – automatically delete expired items.  
	- **Point-in-Time Recovery (PITR)** – restore table state to any point within the last 35 days.  

- **Use Cases**
	- Gaming leaderboards.  
	- IoT applications.  
	- E-commerce carts.  
	- Serverless backends (with Lambda + API Gateway).  

## **Exam Tips**
- **DynamoDB = managed NoSQL** with **millisecond latency**.  
- **On-Demand vs Provisioned** → exam will test cost vs predictability.  
- **Indexes**: GSI (global, any attribute), LSI (local, same partition key).  
- **DAX** = in-memory caching.  
- **Streams** often paired with Lambda.  
- **Global Tables** = multi-region replication.  
- PITR = up to **35 days recovery**.  

## **References**
- [Amazon DynamoDB](https://aws.amazon.com/dynamodb/)  
- [DynamoDB Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html)  
