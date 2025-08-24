# **Amazon Elastic File System (EFS)**

## **Overview**
**Amazon EFS** is a **fully managed, elastic, shared file system**.  
It provides **NFS-based file storage** that can be mounted concurrently by multiple EC2 instances, containers, and on-prem systems.

---

## **Details**
- **Core Capabilities**
	- **File-level storage** (POSIX-compliant).
	- **Elastic** → automatically grows/shrinks as files are added/removed.
	- **Shared access** → multiple compute resources can mount the same file system at once.
	- Accessible from:
		- [[Amazon EC2 (Elastic Compute Cloud)]]
		- [[Amazon EC2 (Elastic Compute Cloud)|Amazon ECS]] / [[Amazon Elastic Kubernetes Service (EKS)|Amazon EKS]]
		- [[AWS Lambda (Serverless)]] (via EFS for shared state)
		- On-premises via **AWS Direct Connect** or VPN.

- **Performance Modes**
	- **General Purpose (default)** → latency-sensitive apps, web serving.
	- **Max I/O** → higher throughput, parallel workloads (big data, analytics).

- **Throughput Modes**
	- **Bursting** → baseline throughput with burst capacity.
	- **Provisioned** → fixed throughput regardless of file size.

- **Storage Classes**
	- **EFS Standard** → frequent access.
	- **EFS Infrequent Access (IA)** → cost savings for cold data.
	- Lifecycle policies automatically transition files between Standard ↔ IA.

- **Security**
	- Data encrypted at rest & in transit using [[AWS Key Management Service (KMS)]] and TLS.
	- Access controlled with [[AWS Identity and Access Management (IAM)]] policies + POSIX permissions.
	- Supports VPC security groups and NACLs for network-level security.

---

## **Use Cases**
- Shared file storage for web/app servers.
- Content management systems.
- Machine learning & analytics workloads.
- Home directories for users in enterprise environments.
- Persistent, shared storage for containers or Lambda.

---

## **Exam Tips**
- **EFS = File storage**, **EBS = Block storage**, **S3 = Object storage**.  
- **Multi-AZ by default** → highly available.  
- **Elastic** → no provisioning required (vs EBS which is fixed-size).  
- If exam mentions **“shared file system for multiple instances”** → answer = EFS.  
- Use **EFS-IA** + lifecycle management for cost optimization.  

---

## **References**
- [AWS Docs: EFS](https://docs.aws.amazon.com/efs/)  
- [Amazon EFS FAQs](https://aws.amazon.com/efs/faq/)  
