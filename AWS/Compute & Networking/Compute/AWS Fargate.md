# **AWS Fargate**

## **Overview**
**AWS Fargate** is a **serverless compute engine for containers**.  
It lets you run containers without managing EC2 instances, capacity, or scaling.  
Works with both [[Amazon Elastic Container Service (ECS)]] and [[Amazon Elastic Kubernetes Service (EKS)]].

---

## **Details**
- **Core Capabilities**
	- Run Docker/OCI containers without provisioning or managing EC2 hosts.
	- Automatically allocates compute resources per task/pod.
	- Pay only for vCPU and memory requested (per second).
	- Integrated with **ECS Task Definitions** and **EKS Pods**.

- **ECS + Fargate**
	- Define tasks/services in ECS.
	- Fargate launches containers directly (no EC2 cluster needed).
	- IAM roles per task supported for fine-grained security.

- **EKS + Fargate**
	- Run Kubernetes pods directly on Fargate.
	- Useful for serverless, small, or bursty Kubernetes workloads.
	- Reduces node management overhead in EKS clusters.

- **Security**
	- Strong isolation at the task/pod level (no shared kernel across tenants).
	- Network integration with [[Amazon VPC (Virtual Private Cloud)]] security groups.
	- Encryption with [[AWS Key Management Service (KMS)]] and IAM controls.

- **Scaling & Management**
	- No need to manage Auto Scaling groups or EC2 capacity.
	- Works seamlessly with [[Amazon CloudWatch]] for monitoring.
	- Supports Spot pricing for cost-optimized workloads.

---

## **Use Cases**
- Microservices and REST APIs in containers.
- Event-driven serverless container workloads.
- Short-lived batch jobs.
- Hybrid Kubernetes workloads (EKS + Fargate).
- Organizations wanting containers without infrastructure management.

---

## **Exam Tips**
- **Fargate = serverless containers**.  
- Works with **ECS & EKS** → not standalone.  
- Choose **Fargate** when you want containers but **don’t want to manage EC2 clusters**.  
- Still need **ECS/EKS for orchestration** → Fargate just replaces the compute layer.  
- Pricing is per vCPU + memory → exam may test cost-awareness.  

---

## **References**
- [AWS Docs: Fargate](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/what-is-fargate.html)  
- [AWS Fargate FAQs](https://aws.amazon.com/fargate/faqs/)  