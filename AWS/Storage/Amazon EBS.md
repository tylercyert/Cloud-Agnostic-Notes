# **Amazon Elastic Block Store (EBS)**

## **Overview**
**Amazon EBS** provides **persistent block storage volumes** for use with [[Amazon EC2 (Elastic Compute Cloud)|EC2]] instances.  
It acts like a **virtual hard drive**, supporting transactional workloads, databases, and file systems that need low-latency, consistent storage.

---

## **Details**
- **Core Capabilities**
	- Block-level storage → appears as a disk attached to an EC2 instance.
	- Volumes are **persistent** (data remains even if instance stops/terminates).
	- Tied to an **Availability Zone** (AZ); must be in the same AZ as the EC2 instance.
	- Supports **snapshots** to [[Amazon S3|S3]] (for backup, restore, or migration across AZs/Regions).

- **Volume Types**
	- **General Purpose SSD (gp3, gp2)** → balance of price/performance, default choice.
	- **Provisioned IOPS SSD (io2, io1)** → high-performance, mission-critical DBs, up to 256k IOPS.
	- **Throughput Optimized HDD (st1)** → big data, log processing, streaming workloads.
	- **Cold HDD (sc1)** → lowest cost, infrequently accessed workloads.
	- **Magnetic (standard)** → legacy, rarely used.

- **Performance & Config**
	- gp3 → baseline **3,000 IOPS**, burstable up to 16,000 IOPS, independent from volume size.
	- io2 → designed for **99.999% durability**, supports up to 64,000 IOPS.
	- Max volume size: **64 TiB**.
	- Can use **EBS-optimized instances** for dedicated bandwidth.

- **Features**
	- **Encryption at rest** via [[AWS Key Management Service (KMS)]] (no performance impact).
	- **Point-in-time snapshots** stored in S3 (incremental).
	- **Elastic Volumes** → dynamically change size, performance, type without downtime.
	- **Multi-Attach** → io1/io2 volumes attach to multiple EC2 instances (within same AZ).
	- Integrated with **Auto Scaling groups** via AMIs and snapshots.

---

## **Use Cases**
- Boot volumes for EC2 instances.
- Databases (e.g., MySQL, Oracle, SQL Server).
- Transactional workloads requiring consistent low-latency storage.
- Big data workloads (st1) and archival (sc1).

---

## **Exam Tips**
- **EBS = Block storage** (vs [[Amazon S3]] object storage, [[Amazon EFS]] file storage).  
- Must be in **same AZ** as EC2 instance; use **snapshots** for cross-AZ/Region backup.  
- **gp3** is the go-to general-purpose SSD; **io2** for high-performance DBs.  
- If you need **shared storage across instances**, use **EFS** (file system), not EBS.  
- **Multi-Attach** is only supported on **io1/io2** volumes for clustered apps.  
- Encrypt with KMS; snapshots inherit encryption status.  

---

## **References**
- [AWS Docs: Amazon EBS](https://docs.aws.amazon.com/ebs/)  
- [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html)  