# **Elastic Load Balancing (ELB) & Auto Scaling**

## **Overview**
**Elastic Load Balancing (ELB)** and **Auto Scaling** work together to deliver **high availability, fault tolerance, and elasticity** in AWS.  
- **ELB** distributes incoming traffic across multiple targets.  
- **Auto Scaling** adjusts capacity by adding/removing compute resources automatically.  

---

## **Details**

### **Elastic Load Balancing (ELB)**
- **Load Balancer Types**
	- **Application Load Balancer (ALB)** → Layer 7 (HTTP/HTTPS), path- or host-based routing, WebSockets, WAF integration. Best for microservices and APIs.
	- **Network Load Balancer (NLB)** → Layer 4 (TCP/UDP), ultra-low latency, millions of requests/sec. Best for real-time or high-throughput workloads.
	- **Gateway Load Balancer (GWLB)** → Deploy/scale third-party network appliances (firewalls, intrusion detection) transparently.
	- **Classic Load Balancer (CLB)** → Legacy; supports Layer 4 & 7, limited features (mostly for older apps).
- **Features**
	- Health checks → route only to healthy targets.
	- Cross-zone load balancing.
	- TLS termination with [[AWS Certificate Manager (ACM)]].
	- Logging via [[Amazon CloudWatch]] and S3.
- **Targets**
	- EC2 instances, ECS tasks, EKS pods, Lambda functions, IP addresses.

---

### **Auto Scaling**
- **Two Key Services**
	- **EC2 Auto Scaling** → scales EC2 instances in/out based on metrics.
	- **AWS Auto Scaling** → unified service for scaling EC2, DynamoDB, ECS, Aurora replicas.
- **Scaling Policies**
	- **Target Tracking** → e.g., keep CPU utilization at 50%.
	- **Step Scaling** → scale by a defined amount when a threshold is breached.
	- **Scheduled Scaling** → scale at known times (e.g., business hours).
	- **Predictive Scaling** → uses ML to forecast and scale ahead of demand.
- **Features**
	- Integrated with ELB for health checks and traffic routing.
	- Launch templates/launch configurations define how to provision instances.
	- Multi-AZ support for HA.

---

## **Use Cases**
- Web apps needing HA and elasticity (ALB + Auto Scaling group).
- APIs with path-based routing (ALB).
- Real-time financial apps or gaming (NLB).
- Security appliances scaling (GWLB).
- Seasonal or bursty workloads (Scheduled + Predictive scaling).

---

## **Exam Tips**
- **ALB = Layer 7, NLB = Layer 4, GWLB = appliances.**  
- **Auto Scaling works best with ELB** → ELB distributes traffic, Auto Scaling adjusts capacity.  
- **Target Tracking = easiest scaling method** (like a thermostat).  
- If scenario asks for **cost efficiency + elasticity**, answer = **Auto Scaling + ELB**.  
- ELB integrates with **ACM** for HTTPS, **CloudWatch** for metrics, and supports Lambda as a target (serverless integration).  

---

## **References**
- [AWS Docs: Elastic Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/)  
- [AWS Docs: Auto Scaling](https://docs.aws.amazon.com/autoscaling/)  
- [AWS ELB FAQs](https://aws.amazon.com/elasticloadbalancing/faqs/)  