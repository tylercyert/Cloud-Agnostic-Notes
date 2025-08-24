# **Amazon GuardDuty**

## **Overview**
**Amazon GuardDuty** is a **threat detection service** that continuously monitors AWS accounts, workloads, and data for **malicious activity and unauthorized behavior**.  
It uses **machine learning, anomaly detection, and threat intelligence feeds** to identify potential security risks.

---

## **Details**
- **Data Sources Analyzed**
	- **AWS CloudTrail** logs (API activity).
	- **VPC Flow Logs** (network traffic).
	- **DNS logs**.
	- Optional: [[Amazon S3|S3]] data events (object-level activity).

- **Detection Capabilities**
	- Compromised IAM credentials (suspicious API calls).
	- Cryptocurrency mining activity in EC2.
	- Port scanning, unusual network traffic patterns.
	- Data exfiltration from S3.
	- Known malicious IP/domain communication (via AWS + third-party threat intel).

- **Integrations**
	- Findings sent to [[Amazon CloudWatch]] Events/EventBridge.
	- Automated responses with [[AWS Lambda (Serverless)]], [[AWS Security Hub]], or SIEM tools.
	- Multi-account support via [[AWS Organizations & Accounts]].

- **Security & Management**
	- **No agents required** → works natively with AWS logs.
	- Continuously updated threat intel from AWS and partners.
	- Findings categorized by severity (Low, Medium, High).

---

## **Use Cases**
- Detect unusual login patterns or brute-force attempts.
- Spot compromised EC2 instances running crypto mining.
- Alert on unauthorized access to sensitive S3 buckets.
- Continuous compliance monitoring for security operations.

---

## **Exam Tips**
- **GuardDuty = threat detection service.**  
- Data sources: **CloudTrail, VPC Flow Logs, DNS logs, (optional) S3 data events.**  
- **Findings only** → does not block; use Lambda/Security Hub for remediation.  
- If exam asks about **detecting malicious activity** or **unauthorized behavior across AWS accounts** → GuardDuty.  
- Remember: It’s **regional**, but can be managed centrally via Organizations.  

---

## **References**
- [AWS Docs: GuardDuty](https://docs.aws.amazon.com/guardduty/)  
- [Amazon GuardDuty FAQs](https://aws.amazon.com/guardduty/faqs/)  