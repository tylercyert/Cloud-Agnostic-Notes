## **Overview**
**Kubernetes** is an **open-source container orchestration platform**.  
It automates deployment, scaling, networking, and management of containerized applications across clusters of servers.

---

## **Details**
- **Core Capabilities**
	- **Orchestration**: Schedules and runs containers (pods) on cluster nodes.
	- **Scaling**: Horizontal scaling of pods based on load (HPA).
	- **Networking**: Service discovery and load balancing across pods.
	- **Self-healing**: Automatically restarts failed containers and reschedules pods.
	- **Configuration & Secrets**: Manages app config and sensitive data.
	- **Rolling updates & rollbacks** for zero-downtime deployments.

- **Architecture**
	- **Control Plane**: API server, etcd (state store), scheduler, controllers.
	- **Nodes (workers)**: Run pods (containers) managed by kubelet and container runtime.
	- **Pods**: Smallest deployable unit → 1 or more tightly coupled containers.
	- **Services**: Stable endpoints that abstract pods (load-balanced internally).
	- **Ingress**: External traffic routing into the cluster.

- **Security**
	- Role-Based Access Control (RBAC) for authorization.
	- Secrets management (encrypted at rest/in transit).
	- Network policies for pod-to-pod traffic.

- **Ecosystem & Tools**
	- Works with many container runtimes (Docker, containerd).
	- Integrated monitoring/logging with Prometheus, Grafana, ELK.
	- Service mesh add-ons (e.g., Istio, [[AWS App Mesh]]).

---

## **Kubernetes on AWS**
- **Amazon EKS (Elastic Kubernetes Service)**:
	- AWS-managed Kubernetes control plane.
	- Worker nodes run on EC2 or [[AWS Fargate]].
	- Deep integration with [[Amazon Elastic Container Registry (ECR)]], [[Amazon VPC]], [[Elastic Load Balancing (ELB) & Auto Scaling]], and [[AWS Identity and Access Management (IAM)]].
- **EKS Anywhere**: Run Kubernetes clusters on-prem with AWS tooling.
- **EKS Distro**: AWS’s open-source Kubernetes distribution.

---

## **Use Cases**
- Running microservices across hybrid or multi-cloud.
- Enterprises standardizing on Kubernetes APIs for portability.
- Scalable SaaS platforms with many services.
- Workloads requiring rolling updates, CI/CD automation, and portability.

---

## **Exam Tips**
- **ECS = AWS-native orchestration**, **EKS = managed Kubernetes**.  
- Choose **EKS** if the org already uses Kubernetes or needs multi-cloud portability.  
- **Fargate** can run workloads in both ECS and EKS without EC2 servers.  
- Kubernetes knowledge is not required in detail for SAA-C03, but knowing **ECS vs EKS** differences is critical.  

---

## **References**
- [Kubernetes Official Docs](https://kubernetes.io/docs/home/)  
- [AWS Docs: Amazon EKS](https://docs.aws.amazon.com/eks/)  