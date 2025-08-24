## **Overview**
**Amazon CloudFront** is a **Content Delivery Network (CDN)** that caches and delivers content (static, dynamic, streaming, APIs) from **edge locations worldwide**.  
It improves **latency, performance, scalability, and security** for applications by serving users from the **nearest AWS edge location**.

---

## **Details**

- **Core Capabilities**
	- Distributes static and dynamic content (HTML, CSS, JS, images, videos, APIs).
	- Content cached at edge locations; reduces load on origin.
	- Origins can be:
		- [[Amazon S3|S3]] (static websites, objects).
		- [[Elastic Load Balancing (ELB) & Auto Scaling|ALB/NLB]].
		- [[Amazon EC2 (Elastic Compute Cloud)]], [[Amazon API Gateway]].
		- Non-AWS on-premises servers.
	- Integrated with **AWS Shield**, [[AWS WAF]], and [[AWS Certificate Manager (ACM)]] for security.

- **Caching & Performance**
	- **Edge caching** reduces round trips to origin.
	- Configurable **TTL** for cached objects.
	- **Cache invalidation** for updates.
	- Supports **signed URLs and signed cookies** for restricted access.
	- Supports HTTP/2, HTTP/3, and WebSocket.

- **Security**
	- DDoS protection with AWS Shield.
	- Web Application Firewall (WAF) for L7 protection.
	- Encrypted traffic with TLS/SSL via ACM.
	- Origin Access Control (OAC) to protect S3 from direct public access.

- **Global Reach**
	- 400+ edge locations worldwide (as of 2025).
	- Uses **AWS edge network** for lower latency delivery.

---

## **Use Cases**
- Accelerating websites (static + dynamic content).
- Video and live streaming delivery.
- Serving APIs at scale.
- Protecting applications with WAF + Shield.
- Reducing load on origins by caching frequently accessed content.
- Restricting access with signed URLs (e.g., paid video platforms).

---

## **Exam Tips**
- **CloudFront = CDN** → caches content at AWS edges.  
- If scenario says *“reduce latency for static/dynamic web content”* → CloudFront.  
- If scenario says *“provide DDoS + WAF + TLS for global content delivery”* → CloudFront.  
- Don’t confuse with:
	- **Global Accelerator** → accelerates TCP/UDP traffic, static IPs, no caching.
	- **Route 53** → DNS resolution, not content delivery.
- For **private S3 content**: use **CloudFront + OAC** (not public bucket).  

---

## **References**
- [AWS Docs: CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/)  
- [Amazon CloudFront FAQs](https://aws.amazon.com/cloudfront/faqs/)  