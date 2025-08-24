## **Overview**
**Amazon Elastic Block Store (EBS)** provides **block-level storage volumes** for use with [[Amazon EC2 (Elastic Compute Cloud)]] instances.  
EBS volumes are **durable, persistent storage** that remain available even after an instance is stopped or terminated.

## **Details**
- **Volume Types**
	- **SSD-backed (performance)**
		- **gp3** – General-purpose SSD, baseline 3,000 IOPS with burst up to 16,000.  
		- **io1/io2** – Provisioned IOPS SSD for mission-critical, low-latency workloads (up to 256,000 IOPS).  
	- **HDD-backed (throughput)**
		- **st1** – Throughput-optimized HDD, ideal for big data & streaming.  
		- **sc1** – Cold HDD, lowest cost, infrequent access.  

- **Persistence & Durability**
	- Data persists independently of the EC2 instance lifecycle.  
	- Automatically replicated within the same AZ.  
	- Snapshots stored in [[Amazon S3]] for backup/restore.

- **Performance**
	- Volumes attach to a single EC2 instance at a time (can detach and reattach).  
	- Support for **multi-attach** (io1/io2) to connect to multiple EC2 instances in the same AZ.  
	- Performance depends on volume type (IOPS vs throughput).

- **Encryption**
	- Supports **encryption at rest and in transit** using AWS KMS.  
	- Transparent to apps and workloads.  

- **Backups & Snapshots**
	- Point-in-time **snapshots** stored in S3.  
	- Snapshots can be copied across Regions for disaster recovery.  
	- Used for creating new volumes or as golden images.  

- **Billing**
	- Pay for **provisioned storage size**, **IOPS (if provisioned)**, and **snapshots**.  
	- Billed by GB-month and snapshot storage.  

## **Exam Tips**
- **EBS = block storage for EC2**.  
- **gp3** = general purpose, **io1/io2** = provisioned IOPS, **st1/sc1** = HDD-based.  
- **Snapshots stored in S3** (but not user-visible as S3 buckets).  
- **Multi-AZ replication is not automatic** → use snapshots for cross-AZ/Region.  
- **EBS is AZ-specific**: must be in the same AZ as the EC2 instance.  

## **References**
- [Amazon EBS Overview](https://aws.amazon.com/ebs/)
- [Amazon EBS Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)
