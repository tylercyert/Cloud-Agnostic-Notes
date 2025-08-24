## **Overview**
**AWS Elastic Load Balancing (ELB) & Auto Scaling** work together to provide **scalability, fault tolerance, and high availability** for applications.  
- **Elastic Load Balancing (ELB):** Automatically distributes incoming traffic across multiple targets (EC2, containers, IPs).  
- **Auto Scaling:** Automatically adjusts capacity (scale out/in) to maintain performance at the lowest cost.  

## **Details**
- **Elastic Load Balancing (ELB)**
	- **Types of Load Balancers**
		1. **Application Load Balancer (ALB)**  
			- Operates at **Layer 7 (HTTP/HTTPS)**.  
			- Supports path-based and host-based routing, WebSockets, gRPC.  
			- Best for **modern web apps and microservices**.
		2. **Network Load Balancer (NLB)**  
			- Operates at **Layer 4 (TCP/UDP/TLS)**.  
			- Handles **millions of requests/sec** with **ultra-low latency**.  
			- Best for **high-performance, real-time apps**.
		3. **Gateway Load Balancer (GWLB)**  
			- Deploys and scales **3rd-party virtual appliances** (firewalls, IDS/IPS).  
			- Works at **Layer 3 (network layer)**.  
		4. **Classic Load Balancer (CLB)**  
			- Legacy option; supports basic **Layer 4/7** routing.  
			- Being phased out in favor of ALB/NLB.
	- **Integration**
		- Works with [[Amazon EC2 (Elastic Compute Cloud)]], [[Amazon ECS]], [[Amazon EKS]], and on-prem targets.
		- Integrated with [[AWS Certificate Manager]] for SSL/TLS termination.
	- **Health Checks**
		- ELB monitors registered targets and routes traffic only to healthy instances.

- **Auto Scaling**
	- **Amazon EC2 Auto Scaling**
		- Ensures the right number of EC2 instances are running.
		- Policies:
			- **Dynamic Scaling**: Responds to demand (CPU, memory, requests).  
			- **Predictive Scaling**: Uses ML forecasts to scale in advance.  
			- **Scheduled Scaling**: Scales at fixed times.  
	- **AWS Auto Scaling Service**
		- Unified scaling across **EC2, ECS, DynamoDB, Aurora Replicas**.  
	- **Key Benefits**
		- Improves availability.
		- Reduces costs (removes unused capacity).
		- Works across multiple AZs for fault tolerance.

- **ELB + Auto Scaling Together**
	- **ELB** distributes traffic → **Auto Scaling** adjusts capacity.  
	- Common architecture:  
		- **Multi-AZ deployment** with ELB distributing to EC2 Auto Scaling group.  
		- Instances automatically replaced if unhealthy.  

## **Exam Tips**
- **ALB** = Layer 7 (HTTP/HTTPS, microservices).  
- **NLB** = Layer 4 (high-performance, millions of req/sec).  
- **GWLB** = deploy firewalls/IDS at scale.  
- **CLB** = legacy, avoid unless exam mentions older workloads.  
- **Auto Scaling** = dynamic, predictive, or scheduled scaling.  
- **Use ELB + Auto Scaling together** for **HA + fault tolerance**.  

## **References**
- [AWS Elastic Load Balancing](https://aws.amazon.com/elasticloadbalancing/)
- [AWS Auto Scaling](https://aws.amazon.com/autoscaling/)
- [Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html)
