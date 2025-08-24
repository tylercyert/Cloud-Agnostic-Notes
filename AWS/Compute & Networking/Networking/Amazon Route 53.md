## **Overview**
**Amazon Route 53** is AWS’s **scalable Domain Name System (DNS) service**.  
It provides **domain registration, DNS routing, and health checking**, enabling highly available and low-latency user access to applications.

## **Details**
- **Core Functions**
	- **Domain Registration** – Register new domain names directly in Route 53.  
	- **DNS Service** – Translate domain names into IP addresses (IPv4/IPv6).  
	- **Health Checks & Monitoring** – Automatically route traffic away from unhealthy endpoints.  
	- **Traffic Flow** – Visual editor for advanced routing policies.  

- **Routing Policies**
	1. **Simple Routing**
		- One domain → one resource (e.g., `example.com` → single EC2).  
	2. **Weighted Routing**
		- Split traffic by percentage across resources (e.g., 70% → ALB, 30% → EC2).  
	3. **Latency-Based Routing**
		- Routes users to the region with the lowest latency.  
	4. **Failover Routing**
		- Active-passive setup; traffic fails over to backup if primary is unhealthy.  
	5. **Geolocation Routing**
		- Route traffic based on user’s geographic location.  
	6. **Geoproximity Routing**
		- Route based on location **and weighting bias** (shift traffic between regions).  
	7. **Multivalue Answer Routing**
		- Return multiple healthy IPs, like a basic load balancer.  

- **Integration**
	- Works with [[Elastic Load Balancing (ELB) & Auto Scaling]], [[Amazon CloudFront]], and [[AWS Global Accelerator]].  
	- Supports private DNS within a [[Amazon VPC (Virtual Private Cloud)]].  
	- Often used with **health checks** to enable high availability.  

- **Security & Reliability**
	- Globally distributed, highly available DNS service.  
	- Integrated with [[AWS Identity and Access Management (IAM)]].  
	- DNSSEC support for domain registration.  

- **Billing**
	- Pay for hosted zones, queries, health checks, and domain registrations.  

## **Exam Tips**
- **Route 53 = DNS + domain registration + health checks**.  
- **Know routing policies** (Simple, Weighted, Latency, Failover, Geo-based, Multivalue).  
- **Failover routing** is key for DR scenarios.  
- **Latency-based routing** improves user experience globally.  
- **Weighted routing** = canary or A/B testing.  
- Exam may test **Route 53 vs ELB vs Global Accelerator**:
	- Route 53 = DNS-level traffic routing.  
	- ELB = application/network load balancing.  
	- Global Accelerator = static IPs + global routing optimization.  

## **References**
- [Amazon Route 53](https://aws.amazon.com/route53/)  
- [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html)  
