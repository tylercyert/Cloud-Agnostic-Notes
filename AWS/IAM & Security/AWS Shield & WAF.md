## **Overview**
**AWS Shield & WAF** provide protection against web-based threats and Distributed Denial of Service (DDoS) attacks.  
- **AWS Shield**: Managed **DDoS protection** for AWS workloads.  
- **AWS WAF (Web Application Firewall)**: Protects web applications from **common exploits** (SQL injection, XSS, bad bots).  

Together, they strengthen **network and application security** at the edge.

## **Details**
- **AWS Shield**
	- **Standard (free)**
		- Automatic protection against most common Layer 3/4 DDoS attacks.  
		- Included for all AWS customers.  
	- **Advanced (paid)**
		- Enhanced protection against larger/more sophisticated attacks.  
		- Includes **24/7 DDoS Response Team (DRT)** support.  
		- Cost protection (credits for scaling charges caused by attacks).  
		- Detailed attack diagnostics and real-time notifications via [[AWS CloudTrail & CloudWatch|AWS CloudWatch]].  

- **AWS WAF**
	- Protects apps running behind:
		- [[Amazon CloudFront]],  
		- [[Application Load Balancer (ALB)]],  
		- [[API Gateway]],  
		- [[AWS AppSync]].  
	- **Rules**
		- Allow, block, or count requests.  
		- Match by IP, country, headers, URIs, SQL injection, XSS.  
		- Custom rules + AWS Managed Rules (preconfigured protections).  
	- **Rate-based rules** – block excessive requests (mitigates brute force/bot traffic).  
	- Integrates with **AWS Firewall Manager** for centralized rule management.  

- **Integration**
	- Often deployed together:  
		- **Shield** → protects against DDoS at the network/transport level.  
		- **WAF** → protects against application-layer attacks.  
	- Both integrate with [[AWS CloudTrail & CloudWatch]] for monitoring and logging.  

- **Use Cases**
	- Shield Standard: default DDoS protection for any AWS service.  
	- Shield Advanced: critical apps (e.g., financial, healthcare) needing SLA-backed DDoS mitigation.  
	- WAF: Protect APIs, web apps, and content delivery from malicious input and bots.  

## **Exam Tips**
- **Shield Standard = always on, free DDoS protection**.  
- **Shield Advanced = paid, extra protections + DRT support + cost safeguards**.  
- **WAF = protect against SQL injection, XSS, bots** at Layer 7.  
- **WAF works with CloudFront, ALB, API Gateway, AppSync**.  
- **Shield = network/transport layer (L3/L4)**, **WAF = application layer (L7)**.  

## **References**
- [AWS Shield](https://aws.amazon.com/shield/)  
- [AWS WAF](https://aws.amazon.com/waf/)  
- [AWS Firewall Manager](https://aws.amazon.com/firewall-manager/)  
