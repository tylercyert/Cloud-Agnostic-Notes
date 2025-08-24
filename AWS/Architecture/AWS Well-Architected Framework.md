## **Overview**
The **AWS Well-Architected Framework** is a set of best practices and design principles for building secure, reliable, efficient, and cost-effective cloud workloads.  
It helps architects evaluate their architectures and implement designs that scale with business needs.

## **Details**
- **Five Pillars of the Framework**
	1. **Operational Excellence**
		- Focus on operations management, monitoring, and continuous improvement.
		- Use automation and Infrastructure as Code (IaC).
	2. **Security**
		- Protect data, systems, and assets.
		- Use [[AWS Identity and Access Management (IAM)]], encryption, and logging (e.g., [[AWS CloudTrail & CloudWatch]]).
	3. **Reliability**
		- Ensure workloads can recover from failures and meet availability requirements.
		- Use multi-AZ/Region deployments, automated recovery, and scaling.
	4. **Performance Efficiency**
		- Use computing resources efficiently.
		- Choose the right instance types, leverage autoscaling, serverless (e.g., [[AWS Lambda (Serverless)]]), and managed services.
	5. **Cost Optimization**
		- Avoid unnecessary costs, pay only for what you use.
		- Use pricing models (On-Demand, Reserved, Spot), rightsizing, and monitoring.

- **Well-Architected Tool**
	- AWS Console service that provides **structured reviews** against the five pillars.
	- Offers improvement plans and best-practice recommendations.

- **Key Practices**
	- Design for **failure and automation**.
	- Use **scalable architectures** (multi-AZ/Region).
	- Implement **monitoring, logging, and alerting**.
	- Continuously review and iterate architecture against the pillars.

## **Exam Tips**
- **Remember the 5 pillars**: Operational Excellence, Security, Reliability, Performance Efficiency, Cost Optimization.  
- Exam questions often test **which pillar applies** to a scenario.  
- **Security** = least privilege, encryption, logging.  
- **Reliability** = multi-AZ, backups, failover.  
- **Cost Optimization** = Spot, Reserved Instances, rightsizing.  

## **References**
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
- [AWS Well-Architected Tool](https://docs.aws.amazon.com/wellarchitected/latest/userguide/what-is-wellarchitected.html)
