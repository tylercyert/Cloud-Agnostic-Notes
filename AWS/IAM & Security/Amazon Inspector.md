# **Amazon Inspector**

## **Overview**
**Amazon Inspector** is an **automated vulnerability management service**.  
It continuously scans AWS workloads for **software vulnerabilities, unintended network exposure, and compliance risks**.

---

## **Details**
- **Core Capabilities**
	- **EC2 scanning**: Finds unpatched OS packages, CVEs, and insecure network configurations.
	- **ECR scanning**: Scans container images in [[Amazon Elastic Container Registry (ECR)]] for vulnerabilities.
	- **Lambda scanning**: Identifies vulnerable libraries in serverless functions.
	- Generates a **risk score** based on exploitability and asset context.
	- Findings integrated into [[AWS Security Hub]].

- **Detection**
	- Uses continuously updated CVE (Common Vulnerabilities and Exposures) database.
	- Identifies exposed ports, unpatched software, and misconfigurations.
	- Provides prioritized recommendations for remediation.

- **Integrations**
	- Findings go to **Amazon EventBridge** for automated workflows.
	- Consolidated in **Security Hub** for compliance visibility.
	- Works with **Systems Manager Patch Manager** to apply fixes.

- **Security & Management**
	- **Agentless** for most use cases (leverages AWS services data).
	- Scans run **continuously** or on-demand.
	- Multi-account support with [[AWS Organizations & Accounts]].

---

## **Use Cases**
- Vulnerability scanning for EC2 fleets.
- Container security for images stored in ECR.
- Securing serverless apps (Lambda dependency scanning).
- Meeting compliance requirements for vulnerability management.

---

## **Exam Tips**
- **Inspector = vulnerability scanning** (CVE checks).  
- **GuardDuty = threat detection** (malicious activity).  
- **Macie = sensitive data discovery** (PII in S3).  
- **Security Hub = aggregation & compliance dashboard**.  
- Exam scenarios: if the question mentions **patches, CVEs, or scanning workloads/containers** → answer is **Inspector**.  

---

## **References**
- [AWS Docs: Amazon Inspector](https://docs.aws.amazon.com/inspector/)  
- [Amazon Inspector FAQs](https://aws.amazon.com/inspector/faqs/)  