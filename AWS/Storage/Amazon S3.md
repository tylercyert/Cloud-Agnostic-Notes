## **Overview**
**Amazon S3 (Simple Storage Service)** is AWS’s **object storage service** designed for **scalability, durability (99.999999999%), and availability**.  
It stores data as objects within **buckets**, accessible via the web, APIs, or SDKs.

## **Details**
- **Core Concepts**
	- **Buckets**: Top-level containers for objects (globally unique names).  
	- **Objects**: Files + metadata stored in buckets.  
	- **Keys**: Unique identifiers for objects within a bucket.  
	- Unlimited storage capacity; individual objects up to **5 TB**.

- **Storage Classes**
	- **Standard** – Frequently accessed, high durability & availability.  
	- **Intelligent-Tiering** – Automatically moves objects between access tiers.  
	- **Standard-IA** (Infrequent Access) – Lower cost, longer retrieval times.  
	- **One Zone-IA** – Cheaper, stored in a single AZ.  
	- **Glacier Flexible Retrieval** – Archival, minutes-to-hours retrieval.  
	- **Glacier Deep Archive** – Lowest-cost archival, retrieval in hours.  

- **Durability & Availability**
	- **11 nines (99.999999999%) durability**.  
	- Availability depends on class (Standard = 99.99%).  
	- Data automatically replicated across multiple AZs (except One Zone-IA).  

- **Security**
	- Private by default (must configure access).  
	- Supports [[AWS Identity and Access Management (IAM)]], bucket policies, ACLs.  
	- **Encryption**:
		- SSE-S3 (managed by S3).  
		- SSE-KMS (managed with [[AWS KMS]]).  
		- SSE-C (customer-provided keys).  
		- Client-side encryption.  

- **Features**
	- **Versioning**: Retains multiple versions of objects.  
	- **Lifecycle Policies**: Automates transitions between storage classes.  
	- **Cross-Region Replication (CRR)**: Replicates objects to other regions.  
	- **Event Notifications**: Trigger [[AWS Lambda (Serverless)]] or [[Amazon SNS]].  
	- **S3 Transfer Acceleration**: Speeds uploads via edge locations.  
	- **S3 Object Lock**: WORM compliance for records retention.  

- **Billing**
	- Pay for storage used, requests, data transfer, and additional features.  

## **Exam Tips**
- **S3 = object storage (not block, not file)**.  
- **Max object size = 5 TB**.  
- **Durability = 11 nines**.  
- **Standard vs IA vs Glacier**: know when to use each.  
- **CRR = automatic replication across regions**.  
- **Encryption options** (SSE-S3, SSE-KMS, SSE-C) are common test topics.  

## **References**
- [Amazon S3](https://aws.amazon.com/s3/)  
- [Amazon S3 Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)  
