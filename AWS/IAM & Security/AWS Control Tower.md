## **Overview**
**AWS Control Tower** is a **governance and account management service** for multi-account AWS environments.  
It automates the setup of a secure, compliant **landing zone** by using services like [[AWS Organizations & Accounts]], [[AWS IAM Identity Center (SSO)]], and guardrails.

---
## **Details**
- **Core Capabilities**
	- Automates multi-account setup with **best practices**.
	- Creates a **landing zone** → a secure, multi-account AWS environment.
	- Uses **guardrails**:
		- **Preventive guardrails** → enforced via **SCPs** (service control policies).
		- **Detective guardrails** → enforced via [[AWS Config]] rules.
	- Provides a **dashboard** for visibility into accounts and guardrail compliance.

- **Integrations**
	- Built on:
		- [[AWS Organizations & Accounts]] → multi-account management.
		- [[AWS IAM Identity Center (SSO)]] → centralized access.
		- [[AWS Config]] → compliance checks.
	- Works with [[AWS Service Catalog]] for provisioning standardized accounts.

- **Governance & Security**
	- Ensures **least privilege** via SCPs and account baselines.
	- Provides **account vending** → automated creation of new accounts under governance.
	- Enforces **logging and auditing** standards:
		- Centralized logs with [[AWS CloudTrail & CloudWatch]].
		- Dedicated security and audit accounts.

- **Use Cases**
	- Large organizations managing many AWS accounts.
	- Enterprises that need centralized compliance and governance.
	- Setting up secure, repeatable environments for teams.
	- Reducing overhead of account-by-account manual setup.

---

## **Exam Tips**
- **Control Tower = easiest way to set up a governed multi-account environment.**  
- Uses **guardrails**: preventive = SCPs, detective = Config rules.  
- Automates **landing zone creation**.  
- If the exam mentions **"quickly set up multi-account governance with best practices"**, answer is **Control Tower**.  
- Control Tower builds on **Organizations, IAM Identity Center, and Config** → not a standalone solution.  

---

## **References**
- [AWS Docs: AWS Control Tower](https://docs.aws.amazon.com/controltower/)  
- [AWS Control Tower FAQs](https://aws.amazon.com/controltower/faqs/)  