## **Overview**
**AWS Config** is a **configuration tracking and compliance service**.  
It records the **state of AWS resources over time**, evaluates them against rules, and helps with **auditing, compliance, and change management**.

---

## **Details**
- **Core Capabilities**
	- Tracks **resource configuration changes** (who changed what, and when).
	- Maintains a **configuration history** and relationships between resources.
	- Continuously evaluates resources against **Config Rules** (AWS managed or custom).
	- Provides a **compliance dashboard** across accounts/regions.
	- Integrates with [[AWS Control Tower]] guardrails for **detective controls**.

- **Config Rules**
	- **Managed Rules**: AWS provides prebuilt compliance checks (e.g., “S3 buckets must not be public”).
	- **Custom Rules**: Defined via [[AWS Lambda (Serverless)]] functions for specific compliance logic.
	- Supports **conformance packs** → bundles of rules aligned to compliance frameworks (e.g., HIPAA, PCI DSS).

- **Data & Storage**
	- Configuration snapshots and history delivered to [[Amazon S3]].
	- Change notifications sent via [[Amazon SNS]].
	- Integrated with [[AWS CloudTrail & CloudWatch]] for auditing and alerts.

- **Security & Governance**
	- Cross-account compliance visibility when integrated with [[AWS Organizations & Accounts]].
	- Central to regulatory compliance (e.g., PCI DSS, HIPAA, FedRAMP).
	- Often paired with [[AWS Security Hub]] for centralized compliance findings.

---

## **Use Cases**
- Auditing and compliance reporting.  
- Detecting non-compliant resources (e.g., open security groups, unencrypted volumes).  
- Investigating resource changes after a security incident.  
- Automating remediation with Config + Lambda.  

---

## **Exam Tips**
- **Config = detective control**, **Control Tower = governance setup**.  
- Stores **point-in-time snapshots** of resources → useful for audits.  
- **Config Rules** are central: managed vs custom (Lambda).  
- **SNS + S3 integration** → notifications + storage.  
- If the question asks about **who changed what/when** → answer is **Config**, not CloudTrail (CloudTrail = API activity; Config = resource state).  

---

## **References**
- [AWS Docs: AWS Config](https://docs.aws.amazon.com/config/)  
- [AWS Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)  