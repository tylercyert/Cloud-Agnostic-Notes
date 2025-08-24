## **Overview**
**Amazon WorkMail** is a **secure, managed business email and calendar service**.  
It provides cloud-based email, contacts, and calendaring that integrates with existing corporate directories and popular email clients.

---

## **Details**
- **Core Capabilities**
	- Business-grade **email, contacts, and calendar**.
	- Fully managed → AWS handles patching, scaling, and availability.
	- Accessible via **Microsoft Outlook**, native iOS/Android apps, and web browsers.
	- Works with SMTP, IMAP, and ActiveSync protocols.

- **Use Cases**
	- Cloud-based email system for enterprises.
	- Replacement for on-premises Microsoft Exchange or Lotus Notes.
	- Secure email hosting for organizations using AWS Directory integration.
	- Hybrid environments where email must integrate with existing AD.

- **Features**
	- Native integration with [[AWS Directory Service]] for user authentication.
	- Compatible with existing desktop and mobile email clients.
	- Shared calendars and global address book.
	- Message archiving and mobile device policies.
	- Integration with [[Amazon WorkDocs]] for file collaboration.

- **Security**
	- Data encrypted at rest with [[AWS KMS]].
	- Encryption in transit using TLS.
	- Administrators can enforce **MFA, mobile device management policies, and mailbox rules**.
	- HIPAA eligible and compliant with major security standards.
	- Activity auditable via [[AWS CloudTrail & CloudWatch]].

- **Management**
	- Centralized management through AWS Console or APIs.
	- Supports migration from existing mail services.
	- Pay-as-you-go pricing model with per-user billing.

---

## **Exam Tips**
- **Amazon WorkMail = managed email and calendar service.**  
- Integrates tightly with **Directory Service** (AD authentication).  
- **WorkMail vs WorkDocs**: WorkMail = email/calendar, WorkDocs = content collaboration.  
- **WorkMail vs WorkSpaces**: WorkMail = email, WorkSpaces = desktop virtualization.  

---

## **References**
- [AWS Docs: Amazon WorkMail](https://docs.aws.amazon.com/workmail/)  
- [Amazon WorkMail FAQs](https://aws.amazon.com/workmail/faqs/)  