## **Overview**
The **AWS Shared Responsibility Model** defines the split of **security and compliance duties** between AWS and the customer.  
- **AWS = “Security *of* the Cloud.”**  
- **Customer = “Security *in* the Cloud.”**

## **Details**
- **AWS Responsibilities (Security of the Cloud)**
	- Protecting the infrastructure that runs AWS services.
	- Physical security of data centers, networking, hardware, and facilities.
	- Maintaining redundancy, availability, and global infrastructure.
	- Managed services (like [[Amazon S3]], [[Amazon DynamoDB]]) — AWS handles the OS, platform, and physical layer.

- **Customer Responsibilities (Security in the Cloud)**
	- Depends on the type of service:
		- **IaaS (e.g., [[Amazon EC2]])**
			- Customer manages the **OS, applications, network/firewall configuration, IAM policies, and data**.
		- **PaaS (e.g., [[Amazon RDS]])**
			- AWS manages database engine and patching; customer secures **data, IAM, and access management**.
		- **SaaS (e.g., [[Amazon S3]])**
			- AWS manages almost everything; customer still secures **data, access, and user permissions**.
	- Always responsible for:
		- **Data classification & encryption**
		- **Identity & Access Management (IAM)**
		- **Application security**
		- **Compliance with laws/regulations**

- **Examples**
	- AWS secures the **physical server**; customer secures the **data on the server**.
	- AWS patches **hypervisors**; customer patches their **OS/applications** on EC2.
	- AWS maintains **network infrastructure**; customer configures **VPC security groups and NACLs**.

## **Exam Tips**
- **Memorize the phrase**: AWS = “security *of* the cloud,” customer = “security *in* the cloud.”  
- **Service type matters**: More customer responsibility with IaaS, less with SaaS.  
- **Data, IAM, and customer applications are *always* the customer’s responsibility.**  
- Shared responsibility can shift, but never fully goes away for customers.  

## **References**
- [AWS Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/)
- [AWS Security Documentation](https://docs.aws.amazon.com/security/)
