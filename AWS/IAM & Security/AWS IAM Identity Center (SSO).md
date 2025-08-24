# **AWS IAM Identity Center (SSO)**

## **Overview**
**AWS IAM Identity Center** (formerly AWS Single Sign-On) provides a **centralized identity and access management solution**.  
It allows workforce users to sign in once and securely access **multiple AWS accounts and applications** using a single set of credentials.

---
## **Details**
- **Core Capabilities**
	- Central **SSO access** for AWS accounts, applications, and services.
	- Integrated with [[AWS Organizations & Accounts]] for **multi-account governance**.
	- Provides **permission sets** (collections of IAM policies) assigned to users/groups.
	- Supports **MFA** and enforces security best practices.

- **Identity Sources**
	- Built-in **Identity Center directory**.
	- External IdPs via **SAML 2.0** (Okta, Azure AD, Google Workspace, etc.).
	- [[AWS Directory Service]] for integration with on-prem AD.
	- Supports **SCIM** for automated user provisioning.

- **Access Management**
	- Assign permissions at the **account or application level**.
	- Works with **IAM roles** to provide temporary credentials.
	- Provides access via **AWS Console, CLI, and SDKs**.

- **Security & Governance**
	- Supports **federated access** across accounts and apps.
	- Enforces **least privilege** through permission sets.
	- Auditable via [[AWS CloudTrail & CloudWatch]].
	- Works with **SCPs** in [[AWS Organizations & Accounts]] to set guardrails.

- **Integrations**
	- Third-party SaaS applications (via SAML/OIDC).
	- Custom applications through SAML/OIDC federation.
	- Fully replaces **AWS SSO** (old branding).

---

## **Exam Tips**
- **AWS IAM Identity Center = Centralized workforce identity management.**  
- Use for **multi-account SSO** with AWS Organizations.  
- **Permission sets** = predefined policies mapped to groups/users.  
- Expect questions on **federation (SAML/OIDC)** and **MFA enforcement**.  
- On the exam, AWS may still mention “AWS SSO” → both mean **IAM Identity Center**.  

---

## **References**
- [AWS Docs: IAM Identity Center](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)  
- [AWS IAM Identity Center Best Practices](https://docs.aws.amazon.com/singlesignon/latest/userguide/best-practices.html)  
- [AWS SAA-C03 Exam Guide (PDF)](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS-Certified-Solutions-Architect-Associate_Exam-Guide.pdf)  