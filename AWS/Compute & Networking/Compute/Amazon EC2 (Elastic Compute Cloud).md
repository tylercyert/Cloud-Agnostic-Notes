## **Overview**
**Amazon EC2 (Elastic Compute Cloud)** provides **scalable virtual servers** (instances) in the AWS Cloud.  
It offers flexible compute capacity with different **instance types, operating systems, and pricing models**, making it the foundation of most AWS workloads.

## **Details**
- **Instance Types**
	- **General Purpose** – Balanced compute, memory, networking.  
	- **Compute Optimized** – High-performance processors for compute-heavy tasks.  
	- **Memory Optimized** – High memory for databases, analytics.  
	- **Storage Optimized** – High I/O performance for big data, logging.  
	- **Accelerated Computing** – GPUs/FPGA for ML, HPC, graphics.  

- **Key Features**
	- **Elasticity**: Quickly scale up/down based on demand.  
	- **OS Flexibility**: Run Linux, Windows, or custom AMIs.  
	- **Storage**:
		- [[Amazon Elastic Block Store (EBS)]] for persistent block storage.  
		- [[Amazon S3]] for object storage.  
		- [[Amazon Elastic File System (EFS)]] for shared file storage.  
	- **Networking**:
		- Launch into a [[Amazon VPC (Virtual Private Cloud)]].  
		- Control access with **Security Groups** and **NACLs**.  
	- **Placement Groups**:
		- Cluster (low-latency, same rack), Spread (fault tolerance), Partition (HDFS, large distributed workloads).  

- **Pricing Options**
	- **On-Demand** – Pay by the second/minute, no commitment.  
	- **Reserved Instances (RI)** – 1 or 3-year terms, cheaper rates.  
	- **Savings Plans** – Flexible commitment, even cheaper.  
	- **Spot Instances** – Spare capacity, up to 90% off, but can be terminated.  
	- **Dedicated Hosts/Instances** – Physical isolation for compliance/licensing.  

- **Integration**
	- Works with [[AWS Elastic Load Balancing (ELB) & Auto Scaling]].  
	- Integrated with [[AWS CloudFormation]] for automated deployments.  
	- Can use [[AWS Identity and Access Management (IAM)]] for access control.  

## **Exam Tips**
- EC2 = **virtual servers in the cloud**.  
- **Know instance families**: General, Compute, Memory, Storage, Accelerated.  
- **Spot = cheapest, but interruptible**.  
- **Reserved/Savings Plan = long-term savings**.  
- **Placement groups**: Cluster = performance, Spread = fault tolerance.  
- Storage: EBS = persistent, S3 = object, EFS = shared.  

## **References**
- [AWS Docs: Amazon EC2](https://docs.aws.amazon.com/ec2/)
- [Amazon EC2 Overview](https://aws.amazon.com/ec2/)
