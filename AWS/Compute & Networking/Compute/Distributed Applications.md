## **Overview**
A **distributed application** is one where **components run on multiple computers or services** but work together as a single system.  
AWS enables distributed architectures through **scalability, elasticity, and decoupling** of workloads across Regions, AZs, and services.

---

## **Details**
- **Characteristics**
	- Components deployed across multiple servers, AZs, or Regions.
	- Loosely coupled services connected via APIs, queues, or messaging systems.
	- Highly available and fault-tolerant design.
	- Scalable horizontally (adding more nodes/services).

- **Core AWS Services for Distributed Apps**
	- **Compute**:
		- [[Amazon EC2 (Elastic Compute Cloud)]], [[AWS Lambda (Serverless)]], [[Amazon Elastic Container Service (ECS)|Amazon ECS]], [[Amazon Elastic Kubernetes Service (EKS)|Amazon EKS]], [[AWS Fargate]].
	- **Storage**:
		- [[Amazon S3|S3]], [[Amazon EBS]], [[Amazon EFS]], [[Amazon DynamoDB]], [[Amazon RDS]].
	- **Networking & Routing**:
		- [[Elastic Load Balancing (ELB) & Auto Scaling]], [[Amazon Route 53]], [[AWS Global Accelerator]].
	- **Messaging & Decoupling**:
		- [[Amazon SQS & SNS]], [[Amazon EventBridge]], [[Amazon Kinesis]], [[AWS Step Functions]].
	- **Observability & Security**:
		- [[Amazon CloudWatch]], [[AWS X-Ray]], [[AWS Config]], [[Amazon GuardDuty]], [[AWS Security Hub]].

- **Design Patterns**
	- **Microservices** → small, independent services (often in containers).
	- **Event-driven architecture** → services communicate via events (SNS, EventBridge).
	- **Loose coupling** → services connected via queues (SQS), not hard dependencies.
	- **Stateless services** → scale easily since no data stored locally.
	- **Resiliency patterns** → multi-AZ deployments, retries with exponential backoff, active-active or standby DR.

- **Benefits**
	- **Scalability** → easily handle variable workloads.
	- **Resilience** → fault-tolerance by distributing across AZs/Regions.
	- **Flexibility** → use purpose-built services.
	- **Cost optimization** → scale components independently.

---

## **Use Cases**
- Web apps with separate frontend, backend, and database tiers.
- Global applications serving millions of users (e.g., SaaS platforms).
- Event-driven apps using queues and serverless functions.
- Data streaming and analytics pipelines.
- Microservices running on ECS/EKS/Fargate.

---

## **Exam Tips**
- **Distributed applications = loosely coupled, scalable, resilient.**  
- AWS exam may describe this as **multi-tier architecture** or **microservices**.  
- If scenario asks about **decoupling services** → use **SQS/SNS/EventBridge**.  
- If scenario mentions **global scale + low latency** → use **CloudFront/Global Accelerator/Route 53**.  
- Observability = **CloudWatch (metrics/logs) + X-Ray (tracing)**.  

---

## **References**
- [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/)  
- [AWS Microservices on AWS](https://aws.amazon.com/microservices/)  