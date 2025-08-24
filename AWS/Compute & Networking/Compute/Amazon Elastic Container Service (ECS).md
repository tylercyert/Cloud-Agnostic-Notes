---
aliases:
  - Amazon ECS
---
## **Overview**
**Amazon ECS** is a **fully managed container orchestration service**.  
It allows you to **run and scale Docker/OCI containers** across AWS infrastructure without needing to manage your own control plane.

---
## **Details**
- **Core Capabilities**
	- Orchestrates container workloads on AWS.
	- Two launch types:
		- **EC2 Launch Type** → run containers on self-managed EC2 clusters.
		- **Fargate Launch Type** → serverless containers (no EC2 management).
	- Deep integration with [[Amazon Elastic Container Registry (ECR)]] for storing images.
	- Networking with [[Amazon VPC (Virtual Private Cloud)]] and [[Elastic Load Balancing (ELB) & Auto Scaling]].
	- Supports IAM roles per task for fine-grained security.
- **Service & Task Model**
	- **Task Definition** → blueprint for running containers (CPU, memory, IAM role, image).
	- **Task** → running instance of a task definition (like a container group).
	- **Service** → ensures the desired number of tasks are always running.
	- **Cluster** → logical grouping of EC2/Fargate resources running tasks.
- **Integrations**
	- Works with [[AWS Fargate]] for serverless container execution.
	- Auto Scaling supported via [[Amazon CloudWatch]] metrics.
	- Integrated with [[AWS App Mesh]] for service-to-service communication.
	- Logging and monitoring with CloudWatch and [[AWS X-Ray]].
- **Security**
	- IAM roles for tasks → containers can access AWS services securely.
	- Network isolation with VPC subnets and security groups.
	- Data encrypted at rest in ECR with [[AWS Key Management Service (KMS)]].

---
## **Use Cases**
- Running microservices in containers.
- Batch jobs and event-driven workloads.
- Hybrid applications using EC2 + Fargate.
- Lift-and-shift containerized legacy apps.

---
## **Exam Tips**
- **ECS = container orchestration**, **ECR = container registry**, **EKS = Kubernetes orchestration**.  
- **Fargate = serverless containers** (no EC2).  
- ECS tightly integrates with AWS services → easier than running Kubernetes (EKS) if you want “all AWS-native.”  
- IAM roles per task = important exam keyword.  
- If exam scenario: *“Run containers without managing servers”* → ECS on **Fargate**.  

---
## **References**
- [AWS Docs: ECS](https://docs.aws.amazon.com/AmazonECS/)  
- [Amazon ECS FAQs](https://aws.amazon.com/ecs/faqs/)  