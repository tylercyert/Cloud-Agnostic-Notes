## **Overview**
**AWS Security Hub** is a **centralized security and compliance service**.  
It aggregates findings from multiple AWS security services and third-party tools into a **single dashboard** to provide a **holistic view of security posture**.

---

## **Details**
- **Core Capabilities**
	- Collects and normalizes findings from:
		- [[Amazon GuardDuty]]
		- [[Amazon Inspector]]
		- [[Amazon Macie]]
		- [[AWS Config]]
		- Partner/third-party security products.
	- Provides a **consolidated dashboard** for alerts and compliance status.
	- Uses the **AWS Security Finding Format (ASFF)** to standardize findings.
	- Supports automated remediation via [[Amazon EventBridge]] + [[AWS Lambda (Serverless)]].

- **Compliance Frameworks**
	- CIS AWS Foundations Benchmark.
	- PCI DSS.
	- NIST 800-53.
	- Other industry standards.
	- Conformance packs integrate with [[AWS Config]] rules.

- **Security & Management**
	- Regional service but supports multi-account aggregation via [[AWS Organizations & Accounts]].
	- Findings can be filtered, prioritized, and sent to SIEM/SOAR tools.
	- Integrates with ticketing/incident management (Jira, Splunk, etc.).

---

## **Use Cases**
- Centralizing findings from multiple AWS security services.
- Compliance monitoring against CIS, PCI DSS, NIST standards.
- Reducing “alert fatigue” with a single pane of glass.
- Automating remediation workflows across accounts.

---

## **Exam Tips**
- **Security Hub = aggregation + compliance reporting.**  
- **GuardDuty = threat detection**, **Inspector = vulnerability scanning**, **Macie = sensitive data discovery**.  
- Security Hub does not generate findings itself → it **collects and consolidates**.  
- If exam asks: *“Where do you centralize security findings and compliance checks?”* → **Security Hub**.  
- Often paired with EventBridge + Lambda for **auto-remediation**.  

---

## **References**
- [AWS Docs: Security Hub](https://docs.aws.amazon.com/securityhub/)  
- [AWS Security Hub FAQs](https://aws.amazon.com/security-hub/faqs/)  