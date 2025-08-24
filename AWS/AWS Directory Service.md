# **AWS Directory Service**

## **Overview**
**AWS Directory Service** provides multiple ways to run and manage **Microsoft Active Directory (AD)** in the AWS Cloud.  
It supports authentication, authorization, and domain services for AWS resources, on-premises systems, and applications that rely on AD.

---
## **Details**
- **Deployment Options**
	- **AWS Managed Microsoft AD**
		- Fully managed AD domain controllers in AWS.
		- Supports **trust relationships** with on-prem AD.
		- Highly available across multiple AZs.
		- Best for enterprises needing full AD compatibility.
	- **AD Connector**
		- Proxy service that connects AWS resources to on-prem AD without storing directory data in AWS.
		- Ideal for extending existing AD to AWS workloads.
	- **Simple AD**
		- Lightweight, Samba-based AD-compatible directory.
		- Low-cost option for small environments (basic AD features only).
		- Not suitable for enterprise-grade workloads.

- **Use Cases**
	- Centralized **identity and access** management for AWS and on-premises resources.
	- Enable **SSO** with on-prem AD and AWS apps.
	- Required for Windows workloads such as:
		- [[Amazon WorkSpaces]]
		- [[Amazon WorkDocs]]
		- [[Amazon WorkMail]]
	- Integrates with [[AWS IAM Identity Center (SSO)]] for federated workforce access.

- **Security & Integration**
	- Supports **Kerberos & LDAP protocols**.
	- Provides **MFA integration** with AD.
	- Can integrate with [[AWS Key Management Service (KMS)]] and other security services.
	- Auditable via [[AWS CloudTrail & CloudWatch]].

---

## **Exam Tips**
- **AWS Managed Microsoft AD** = enterprise use, trust relationships, full AD features.  
- **AD Connector** = extend on-prem AD, no directory data stored in AWS.  
- **Simple AD** = cheap & basic, only for small-scale/simple apps.  
- Expect exam questions comparing **Managed Microsoft AD vs AD Connector**.  

---

## **References**
- [AWS Docs: Directory Service](https://docs.aws.amazon.com/directoryservice/)  
- [AWS Directory Service FAQs](https://aws.amazon.com/directoryservice/faqs/)  