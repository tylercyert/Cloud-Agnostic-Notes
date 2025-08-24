# **Amazon RDS (Relational Database Service)**

## **Overview**
**Amazon RDS** is a **fully managed relational database service**.  
It automates provisioning, patching, backups, and scaling for popular relational database engines, reducing the operational burden of running databases.

---

## **Details**
- **Supported Engines**
	- **Amazon Aurora** (MySQL & PostgreSQL compatible; AWS-optimized).
	- **MySQL**
	- **PostgreSQL**
	- **MariaDB**
	- **Oracle**
	- **Microsoft SQL Server**

- **Core Capabilities**
	- Automated backups and point-in-time recovery.
	- Multi-AZ deployments for high availability.
	- Read replicas for scaling reads (up to 15 for Aurora).
	- Storage autoscaling (provisioned IOPS available).
	- Integrated monitoring with [[Amazon CloudWatch]].
	- Encryption at rest with [[AWS Key Management Service (KMS)]] and in transit with SSL/TLS.

- **Deployment Options**
	- **Single-AZ** → lower cost, no failover.
	- **Multi-AZ** → synchronous standby in another AZ, automatic failover.
	- **Aurora Global Database** → cross-region replication, sub-second latency reads.

- **Scaling**
	- Vertical → increase instance size.
	- Horizontal → add read replicas.
	- Aurora offers **serverless mode** for auto-scaling based on load.

- **Backups & Maintenance**
	- Automated backups retained **1–35 days**.
	- Manual snapshots retained until deletion.
	- Supports maintenance windows for patching and upgrades.

- **Security**
	- IAM authentication support.
	- VPC integration with security groups and subnet groups.
	- Network isolation via VPC.
	- Encryption with KMS.
	- Audit logging via [[AWS CloudTrail & CloudWatch]].

---

## **Use Cases**
- Enterprise applications needing relational data models.
- Web/mobile backends (e.g., MySQL/Postgres RDS).
- Mission-critical workloads requiring Multi-AZ for HA.
- Global apps using Aurora Global Database for low-latency reads.

---

## **Exam Tips**
- **RDS = managed relational DB**; offloads admin tasks.  
- **Aurora** = AWS-optimized, **5x faster than MySQL**, **3x faster than Postgres**.  
- **Multi-AZ = HA (synchronous)**; **Read Replicas = scaling (asynchronous)**.  
- Automated backups stored in **S3**.  
- For licensing-heavy engines (Oracle/SQL Server), exam may test cost/maintenance considerations.  
- For unpredictable workloads → **Aurora Serverless**.  

---

## **References**
- [AWS Docs: Amazon RDS](https://docs.aws.amazon.com/rds/)  
- [Amazon Aurora Docs](https://docs.aws.amazon.com/aurora/)  