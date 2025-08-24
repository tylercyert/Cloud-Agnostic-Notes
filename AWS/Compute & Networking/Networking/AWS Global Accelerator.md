## **Overview**
**AWS Global Accelerator** is a **networking service** that improves the **availability, performance, and resiliency** of applications by routing user traffic through the AWS global network to the **optimal endpoint**.  
It provides **static anycast IP addresses** that act as a fixed entry point to your app, even if endpoints change.

---
## **Details**
- **Core Capabilities**
	- Provides **two static IPs** (or BYOIP) → front door for global apps.
	- Uses the **AWS global network backbone**, not the public internet, to reduce latency and jitter.
	- Routes traffic to the **closest healthy endpoint** via health checks.
	- Supports traffic across multiple AWS Regions and endpoints.

- **Endpoint Types**
	- Application Load Balancers (ALB).
	- Network Load Balancers (NLB).
	- EC2 instances.
	- Elastic IPs.

- **Traffic Management**
	- **Anycast routing** → users automatically directed to nearest AWS edge location.
	- Health checks monitor endpoint availability; unhealthy endpoints removed from routing.
	- **Traffic dials** allow percentage-based traffic control across Regions.
	- Weighted routing for testing, failover, or blue/green deployments.

- **Security**
	- DDoS protection via integration with [[AWS Shield]].
	- Works with [[AWS Certificate Manager (ACM)]] for TLS.
	- IAM integration for access controls.

---

## **Use Cases**
- Global applications needing low-latency access (e.g., SaaS, gaming, media).
- Multi-Region active-active or active-passive failover.
- Disaster recovery strategies (redirect to healthy Region).
- Consistent static IPs for enterprise firewalls and client apps.

---
## **Exam Tips**
- **Global Accelerator ≠ CloudFront**:  
	- **CloudFront** → caches content at edge (CDN, static + dynamic content).  
	- **Global Accelerator** → routes traffic to nearest healthy Region (no caching).  
- Provides **static anycast IPs** → stable DNS/IP mapping.  
- Improves **availability + performance for global users**.  
- If scenario mentions **multi-Region app with static IPs + failover** → Global Accelerator.  

---

## **References**
- [AWS Docs: Global Accelerator](https://docs.aws.amazon.com/global-accelerator/)  
- [AWS Global Accelerator FAQs](https://aws.amazon.com/global-accelerator/faqs/)  