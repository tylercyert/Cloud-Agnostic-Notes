# **Amazon Macie**

## **Overview**
**Amazon Macie** is a **data security and privacy service** that uses **machine learning and pattern matching** to automatically discover, classify, and protect **sensitive data** (like PII or financial records) in AWS.  
It focuses on securing **Amazon S3** data.

---

## **Details**
- **Core Capabilities**
	- Automatically discovers and classifies sensitive data in S3 buckets.
	- Detects personally identifiable information (PII), financial data, credentials, and secrets.
	- Continuously monitors S3 for **policy misconfigurations** (public buckets, encryption disabled).
	- Generates detailed findings (security and compliance insights).

- **Integrations**
	- Findings are sent to [[Amazon CloudWatch]] and [[AWS Security Hub]].
	- Can trigger automated remediation with [[Amazon EventBridge]] + [[AWS Lambda (Serverless)]].
	- Works alongside [[Amazon GuardDuty]] (threat detection) and [[Amazon Inspector]] (vulnerability scanning).

- **Security**
	- Uses managed machine learning models to detect sensitive data.
	- Scales across petabytes of S3 data.
	- Data never leaves AWS; scanning is serverless and regional.

---

## **Use Cases**
- Identify PII for compliance (GDPR, HIPAA, PCI DSS).
- Detect unencrypted or publicly exposed sensitive files in S3.
- Automate remediation of risky S3 configurations.
- Maintain continuous compliance posture in regulated industries.

---

## **Exam Tips**
- **Macie = sensitive data discovery (PII in S3).**  
- Do not confuse with:  
	- [[Amazon GuardDuty]] → threat detection (malicious behavior).  
	- [[Amazon Inspector]] → vulnerability scanning (EC2/ECR/Lambda).  
	- [[AWS Security Hub]] → centralize findings.  
- If exam mentions **“discover PII in S3”** → answer is **Macie**.  

---

## **References**
- [AWS Docs: Macie](https://docs.aws.amazon.com/macie/)  
- [Amazon Macie FAQs](https://aws.amazon.com/macie/faqs/)  