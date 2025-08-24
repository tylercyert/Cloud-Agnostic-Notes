# **AWS App Mesh**

## **Overview**
**AWS App Mesh** is a **service mesh** that provides **application-level networking** for microservices.  
It standardizes service-to-service communication by handling **traffic routing, observability, and security** without changing application code.

---

## **Details**
- **Core Capabilities**
	- Provides **service discovery** and routing for microservices.
	- Works with [[Amazon Elastic Container Service (ECS)|Amazon ECS]], [[Amazon Elastic Container Service (ECS)|Amazon EKS]], [[AWS Fargate]], and on-premises services.
	- Controls **east-west traffic** (service-to-service) inside applications.
	- Implements **Envoy proxy** as a sidecar to each service.

- **Traffic Control**
	- Fine-grained routing (e.g., canary deployments, blue/green).
	- Weighted routing for version rollouts.
	- Retries and timeouts built in.
	- Enables advanced deployment strategies without custom logic.

- **Observability**
	- Collects metrics, logs, and traces for each service.
	- Integrated with [[Amazon CloudWatch]], [[AWS X-Ray|AWS X-Ray]], and Prometheus/Grafana.
	- Provides insight into microservice-to-microservice communications.

- **Security**
	- Encrypts service-to-service traffic with TLS.
	- Uses [[AWS Identity and Access Management (IAM)]] for authentication and authorization.
	- Can enforce **mTLS (mutual TLS)** between services.

- **Architecture**
	- Services are registered as **virtual services**.
	- **Virtual nodes** represent actual tasks/pods/instances.
	- **Virtual routers** define routing logic.
	- **Envoy proxies** intercept traffic to apply routing and policies.

---

## **Use Cases**
- Microservice architectures that require:
	- Secure and observable communication between services.
	- Advanced routing (canary, blue/green, weighted).
	- Consistent network behavior across ECS/EKS clusters.
- Service-to-service encryption and compliance.
- Unified observability in distributed systems.

---

## **Exam Tips**
- **App Mesh = service mesh** → focuses on **service-to-service communication** (not external traffic like ALB/NLB).  
- Uses **Envoy sidecars** for traffic routing.  
- Key benefits = **traffic control, observability, security**.  
- If exam scenario asks: *“How to manage microservice communication with retries, encryption, and observability without modifying app code?”* → **App Mesh**.  
- Don’t confuse with **API Gateway** (north-south external traffic) → App Mesh is **east-west internal traffic**.  

---

## **References**
- [AWS Docs: App Mesh](https://docs.aws.amazon.com/app-mesh/)  
- [AWS App Mesh FAQs](https://aws.amazon.com/app-mesh/faqs/)  