# **AWS Secrets Manager**

## **Overview**
**AWS Secrets Manager** is a **fully managed service for storing, rotating, and retrieving secrets** such as database passwords, API keys, and credentials.  
It enables secure handling of sensitive configuration data without hardcoding secrets in applications.

---

## **Details**
- **Core Capabilities**
	- Stores **secrets** securely (encrypted with [[AWS KMS|AWS Key Management Service (KMS)]]).
	- Automatically **rotates secrets** using built-in integration with AWS services (e.g., [[Amazon RDS]]).
	- Provides **fine-grained access control** using [[AWS Identity and Access Management (IAM)]] policies.
	- Retrieves secrets programmatically via SDKs, CLI, or API (no need to embed them in code).
	- Integrated with monitoring via [[AWS CloudTrail & CloudWatch|AWS CloudWatch]] and auditing via [[AWS CloudTrail & CloudWatch]].

- **Security**
	- Encryption at rest with KMS.
	- Secrets can be automatically rotated on a defined schedule.
	- Supports auditing and versioning of secrets.

- **Integrations**
	- Built-in rotation functions for RDS, Aurora, and Redshift.
	- Custom rotation with [[AWS Lambda (Serverless)]] for other services.
	- Works with containerized and serverless apps (ECS, EKS, Lambda).

- **Comparison with Parameter Store (SSM)**
	- **Secrets Manager**:
		- Designed for sensitive data (credentials, keys).
		- Supports automatic rotation.
		- Higher cost per secret.
	- **SSM Parameter Store**:
		- General configuration storage.
		- No native automatic rotation (manual or Lambda-driven).
		- Lower/no cost for standard parameters.

---

## **Use Cases**
- Storing and rotating **database credentials** for RDS or Aurora.
- Storing **API keys** for external services.
- Managing credentials in **multi-account environments**.
- Securely providing secrets to CI/CD pipelines or serverless apps.

---

## **Exam Tips**
- **Secrets Manager = sensitive secrets with rotation**.  
- If exam mentions **automatic credential rotation** → answer is **Secrets Manager**, not SSM Parameter Store.  
- Encryption handled with **KMS**.  
- Access control with **IAM policies**.  
- Pricing is higher than Parameter Store but includes rotation + audit features.  

---

## **References**
- [AWS Docs: Secrets Manager](https://docs.aws.amazon.com/secretsmanager/)  
- [AWS Secrets Manager FAQs](https://aws.amazon.com/secrets-manager/faqs/)  