# **AWS Certificate Manager (ACM)**

## **Overview**
**AWS Certificate Manager (ACM)** is a service that lets you **provision, manage, and deploy SSL/TLS certificates** for use with AWS services and internal resources.  
It simplifies securing network communications without manually handling certificates.

---

## **Details**
- **Core Capabilities**
	- Provides **public certificates** (issued by Amazon) at no extra cost.
	- Supports **private certificates** using **ACM Private CA** (paid add-on).
	- Automates **certificate renewal and deployment**.
	- Certificates used to enable **HTTPS and secure TLS connections**.

- **Integrations**
	- Commonly integrated with:
		- [[Elastic Load Balancing (ELB) & Auto Scaling|ELB]] (ALB, NLB, CLB).
		- [[Amazon CloudFront]].
		- [[Amazon API Gateway]].
		- [[AWS Elastic Beanstalk]].
	- Works with internal services when paired with **Private CA**.

- **Security**
	- Encrypts data **in transit** using TLS.
	- Private keys never leave ACM (securely managed).
	- Can enforce compliance by using managed certificates instead of manually importing.

- **Certificate Types**
	- **Public certificates** → free, validated through DNS/email.  
	- **Private certificates** → through ACM Private CA (enterprise/private PKI).  
	- **Imported certificates** → upload third-party certificates if required.

---

## **Use Cases**
- Enabling **HTTPS** on websites behind CloudFront or ALB.  
- Securing APIs in API Gateway.  
- Managing enterprise PKI with ACM Private CA.  
- Automatically renewing certificates to avoid downtime.  

---

## **Exam Tips**
- **ACM provides free public SSL/TLS certs** (for use with AWS services).  
- **Auto-renewal** is a key differentiator — no manual rotation needed.  
- For **internal apps needing private certs**, use **ACM Private CA**.  
- If exam mentions “simplify certificate management” → answer is **ACM**.  
- **At rest encryption** → use [[AWS Key Management Service (KMS)]], but **in transit encryption (TLS)** → ACM.  

---

## **References**
- [AWS Docs: Certificate Manager](https://docs.aws.amazon.com/acm/)  
- [ACM FAQs](https://aws.amazon.com/certificate-manager/faqs/)  
- 