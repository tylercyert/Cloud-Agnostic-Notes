---
aliases:
  - Amazon EKS
---

**Overview**
**Amazon EKS** is a **fully managed Kubernetes service** on AWS.  
It makes it easier to **run, scale, and secure Kubernetes clusters** without needing to manage the Kubernetes control plane.

---

## **Details**
- **Core Capabilities**
	- Runs **vanilla upstream Kubernetes** (no AWS lock-in).
	- AWS manages the **control plane** (API servers, etcd, etc.).
	- Worker nodes can be:
		- **EC2 instances** (self-managed or managed node groups).
		- **AWS Fargate** (serverless containers).
	- Integrates with [[Amazon Elastic Container Registry (ECR)]] for images.
	- Networking via [[Amazon VPC (Virtual Private Cloud)]], security groups, and [[Elastic Load Balancing (ELB) & Auto Scaling]].
	- Storage options via [[Amazon EBS]], [[Amazon EFS]], and [[Amazon S3]]

- **Security**
	- IAM integration:
		- Map IAM roles to Kubernetes RBAC for fine-grained permissions.
		- IAM roles for service accounts (IRSA).
	- Encryption of Kubernetes secrets with [[AWS Key Management Service (KMS)]].
	- Isolated clusters per VPC.

- **Integrations**
	- [[AWS App Mesh]] for service mesh functionality.
	- Logging/monitoring with [[Amazon CloudWatch]], [[AWS X-Ray]], and partner tools (Datadog, Prometheus, Grafana).
	- Can be hybrid with on-prem Kubernetes via **EKS Anywhere**.

- **Management**
	- Supports Kubernetes updates with minimal downtime.
	- Multi-AZ control plane for high availability.
	- Managed add-ons (CoreDNS, VPC CNI, kube-proxy).
	- Autoscaling: Cluster Autoscaler, Horizontal Pod Autoscaler.

---

## **Use Cases**
- Migrating workloads from self-managed Kubernetes clusters.
- Hybrid environments (on-prem + cloud).
- Running microservices with standardized Kubernetes APIs.
- Enterprise teams already using Kubernetes tooling.

---

## **Exam Tips**
- **ECS = AWS-native container orchestration**, **EKS = Kubernetes orchestration**.  
- **Fargate** works with both ECS and EKS → serverless containers.  
- Choose **EKS** if:  
	- The org already uses Kubernetes.  
	- Needs portability (no vendor lock-in).  
- Choose **ECS** if:  
	- Want simplicity with AWS-native orchestration.  
- IAM + Kubernetes RBAC integration is a key exam concept.  

---

## **References**
- [AWS Docs: EKS](https://docs.aws.amazon.com/eks/)  
- [Amazon EKS FAQs](https://aws.amazon.com/eks/faqs/)  