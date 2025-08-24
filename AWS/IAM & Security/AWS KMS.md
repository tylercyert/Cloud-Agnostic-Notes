# **AWS Key Management Service (KMS)**

## **Overview**
**AWS Key Management Service (KMS)** is a **fully managed encryption and key management service**.  
It allows you to **create, manage, and control cryptographic keys** used to protect data across AWS services and applications.

---

## **Details**
- **Core Capabilities**
	- Centralized management of **encryption keys**.
	- Integrated with most AWS services (e.g., [[Amazon S3|S3]], [[Amazon EBS]], [[Amazon RDS]], [[Amazon DynamoDB]]).
	- Supports both **symmetric** and **asymmetric** keys.
	- Keys never leave AWS KMS → secure and FIPS 140-2 validated HSMs.

- **Types of Keys**
	- **AWS Managed Keys**: Automatically created by AWS services (prefixed `aws/`).
	- **Customer Managed Keys (CMKs)**: Created and controlled by customers; full flexibility with key policies and rotation.
	- **Customer Provided Keys (Import)**: Bring your own keys (BYOK).
	- **CloudHSM-backed Keys**: Use dedicated hardware HSMs for compliance requirements.

- **Security & Policies**
	- **Key Policies**: Define who can use and manage keys.
	- **IAM Policies**: Control which IAM users/roles can call KMS APIs.
	- **Grants**: Temporary delegated access for specific use cases.
	- Supports **automatic key rotation** (yearly) for customer-managed keys.
	- Integrated with **CloudTrail** for auditing every API call.

- **Use Cases**
	- Encrypt data at rest (S3 objects, EBS volumes, RDS snapshots).
	- Encrypt data in transit (integrated with [[AWS Certificate Manager (ACM)]] for TLS).
	- Manage API request signing or digital signatures.
	- Meet compliance requirements (HIPAA, PCI DSS, FedRAMP, etc.).

---

## **Exam Tips**
- **Default encryption** in many AWS services uses **KMS-managed keys**.  
- **AWS Managed Key** = service-controlled, **Customer Managed Key** = more control.  
- **Explicit deny in key policy overrides IAM allows.**  
- Expect questions about **BYOK (imported keys)** and **key rotation**.  
- For **FIPS 140-2 compliance**, use **AWS CloudHSM** with KMS.  

---

## **References**
- [AWS Docs: KMS](https://docs.aws.amazon.com/kms/)  
- [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/overview.html)  