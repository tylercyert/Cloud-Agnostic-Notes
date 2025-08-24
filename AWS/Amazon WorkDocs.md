# **Amazon WorkDocs**

## **Overview**
**Amazon WorkDocs** is a **secure, fully managed content creation, storage, and collaboration service**.  
It allows teams to **create, edit, share, and collaborate** on documents and files in the AWS Cloud.

---

## **Details**
- **Core Capabilities**
	- Centralized document storage with web, desktop, and mobile access.
	- Real-time collaboration: users can leave comments and track changes.
	- Fully managed → AWS handles scaling, availability, and backups.
	- Integrates with **Microsoft Office** and other productivity tools.

- **Use Cases**
	- Team collaboration on documents and projects.
	- File sharing across internal teams or with external partners.
	- Secure replacement for traditional file servers.
	- Compliance-driven environments needing centralized content control.

- **Features**
	- File versioning and activity tracking.
	- Access from **web, desktop sync client, or mobile app**.
	- Offline access with automatic sync when reconnected.
	- APIs for custom application integration.
	- Works with [[Amazon WorkSpaces]] to provide content for virtual desktops.

- **Security**
	- User authentication with [[AWS Directory Service]] or AD Connector.
	- Fine-grained access controls: per-user, per-document, or folder-level.
	- Data encrypted in transit and at rest (with [[AWS KMS]]).
	- Auditable via [[AWS CloudTrail & CloudWatch]].
	- HIPAA eligible and compliant with common standards.

- **Management**
	- Administrators can manage users, storage quotas, and permissions centrally.
	- Supports feedback workflows with commenting and annotation.
	- API access for integration with other enterprise applications.

---

## **Exam Tips**
- **Amazon WorkDocs = file collaboration and content management.**  
- Integrates with **WorkSpaces** (desktop-as-a-service).  
- Always tied to **Directory Service** for authentication.  
- Exam distinction: **WorkDocs = document collaboration** vs **WorkMail = email**.  

---

## **References**
- [AWS Docs: Amazon WorkDocs](https://docs.aws.amazon.com/workdocs/)  
- [Amazon WorkDocs FAQs](https://aws.amazon.com/workdocs/faqs/)  