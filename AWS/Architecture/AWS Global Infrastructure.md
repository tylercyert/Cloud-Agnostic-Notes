## **Overview**
**AWS Global Infrastructure** is the worldwide foundation of AWS services, built for **scalability, high availability, and low latency**.  
- **Regions**: Geographic areas hosting multiple isolated Availability Zones (AZs).  
- **Availability Zones**: Independent, fault-isolated data centers within a region.  
- **Edge Locations**: Global endpoints for caching, acceleration, and low-latency access.  

Together, they provide **fault tolerance, performance, and global reach**.

## **Details**
- **AWS Regions**
	- Each region is a **separate geographic area** (e.g., `us-east-1` in N. Virginia).
	- Contains **2–6 Availability Zones (AZs)**.
	- Regions are **isolated from each other** to provide fault tolerance and compliance boundaries.
	- Customers choose regions based on:
		- **Latency** (proximity to end users).
		- **Data residency/legal compliance**.
		- **Service availability** (not all services are in every region).

- **Availability Zones (AZs)**
	- Each AZ = **one or more independent data centers** with separate power, networking, and cooling.
	- AZs within a region are connected by **high-bandwidth, low-latency links**.
	- Enable **fault-tolerant and highly available** architectures:
		- Example: Deploying EC2 instances across multiple AZs ensures resiliency.
	- Best practice: Use **at least 2 AZs** for critical workloads.

- **Edge Locations**
	- Global endpoints that extend AWS services closer to users.
	- Part of **Amazon CloudFront**, [[AWS Global Accelerator]], and [[Amazon Route 53]].
	- Found in **hundreds of cities worldwide**.
	- Functions:
		- **Caching content** for faster delivery (Content Delivery Network).
		- **Reducing latency** by serving requests locally.
		- **Enhancing security** (DDoS protection with [[AWS Shield & WAF]]).
	- Also leveraged by:
		- **S3 Transfer Acceleration** (faster uploads/downloads).
		- **API Gateway edge-optimized endpoints**.

## **Exam Tips**
- **Region** = geographic location (e.g., N. Virginia).  
- **AZ** = isolated data centers within a region (fault isolation + HA).  
- **Edge location** = improves **performance & latency**, supports CloudFront, Route 53, Global Accelerator.  
- **Multi-AZ** = high availability. **Multi-Region** = disaster recovery + global resilience.  
- **Edge ≠ AZ** — edge locations don’t run full AWS services, only **caching and acceleration**.  

## **References**
- [AWS Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/)  
- [AWS Regions and AZs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)  
- [AWS Edge Locations](https://aws.amazon.com/about-aws/global-infrastructure/edge-network/)  
