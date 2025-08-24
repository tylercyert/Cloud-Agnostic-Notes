# **Amazon WorkSpaces**

## **Overview**
**Amazon WorkSpaces** is a **fully managed Desktop-as-a-Service (DaaS)** solution.  
It provides secure, cloud-based **Windows or Linux virtual desktops** that users can access from anywhere on supported devices.

---

## **Details**
- **Core Capabilities**
	- Delivers persistent virtual desktops over the internet.
	- Integrates with [[AWS Directory Service]] for user authentication (AD/SSO).
	- Pay-as-you-go model: hourly or monthly billing.
	- Runs on secure, isolated VPC networks.

- **Use Cases**
	- Remote work and distributed teams.
	- Provide desktops without managing physical hardware.
	- Temporary desktops for contractors, developers, or students.
	- Secure environments where data stays in AWS (not on endpoints).

- **Features**
	- OS options: **Windows, Amazon Linux**.
	- Choose compute/storage bundles for CPU, memory, and disk.
	- Persistent storage: user data remains across sessions.
	- Access via desktop client, web browser, tablets, and mobile.
	- Supports GPU-enabled bundles for high-performance apps.

- **Security**
	- User authentication via [[AWS Directory Service]] or on-prem AD with **AD Connector**.
	- MFA support with RADIUS integration.
	- Data encrypted in transit and at rest with [[AWS KMS]].
	- Integrates with [[Amazon WorkDocs]] for document collaboration.

- **Management**
	- Fully managed service → AWS handles infrastructure, patching, and updates.
	- Auto-scaling capacity with AWS global infrastructure.
	- Admins manage via AWS Console, CLI, or API.
	- Monitored via [[AWS CloudWatch]] and logged with [[AWS CloudTrail & CloudWatch]].

---

## **Exam Tips**
- **Amazon WorkSpaces = DaaS** (desktop virtualization in AWS).  
- Always integrates with **Directory Services** for identity.  
- Secure alternative to physical desktops; data never leaves AWS.  
- **WorkSpaces vs AppStream 2.0**:  
	- WorkSpaces = full persistent desktop.  
	- AppStream 2.0 = streaming of individual apps (no full desktop).  

---

## **References**
- [AWS Docs: Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces/)  
- [Amazon WorkSpaces FAQs](https://aws.amazon.com/workspaces/faqs/)  
