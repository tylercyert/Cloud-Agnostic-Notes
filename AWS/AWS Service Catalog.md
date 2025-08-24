# **AWS Service Catalog**

## **Overview**
**AWS Service Catalog** allows organizations to **create, manage, and distribute approved IT services** (like EC2 instances, RDS databases, VPCs, or custom apps) as **predefined products and portfolios**.  
It ensures teams use **pre-approved, compliant resources** without giving them full AWS administrative access.

---

## **Details**
- **Core Capabilities**
	- Provides a **catalog of approved services** (called *products*).
	- Groups products into **portfolios** for different teams or projects.
	- Built on [[AWS CloudFormation]] templates for consistent deployments.
	- Enforces organizational standards, governance, and compliance.

- **Governance**
	- Ensures developers/provisioners can **only deploy pre-approved configurations**.
	- Administrators define **constraints** (e.g., instance types, regions, network limits).
	- Integrated with [[AWS IAM Identity Center (SSO)]] / [[AWS Identity and Access Management (IAM)]] for role-based access.

- **Management**
	- Admins (IT/security teams) build and curate the catalog.
	- End-users (developers, business units) launch products from the catalog without needing deep AWS knowledge.
	- Integrates with [[AWS Organizations & Accounts]] for multi-account distribution.

- **Use Cases**
	- Enterprise “self-service portal” for launching AWS workloads.
	- Enforcing **standardized architectures** for compliance (e.g., HIPAA, PCI DSS).
	- Preventing “wild west” resource creation by developers.
	- Supporting DevOps pipelines with controlled infrastructure patterns.

---

## **Exam Tips**
- **Service Catalog = governance + self-service for approved AWS resources.**  
- Backed by **CloudFormation templates** → ensures consistent provisioning.  
- Difference from Control Tower:  
	- **Control Tower** = sets up **accounts + guardrails**.  
	- **Service Catalog** = sets up **pre-approved resources for teams to deploy**.  
- If exam mentions **“give developers access to only approved configurations”** → answer is **Service Catalog**.  

---

## **References**
- [AWS Docs: Service Catalog](https://docs.aws.amazon.com/servicecatalog/)  
- [AWS Service Catalog FAQs](https://aws.amazon.com/servicecatalog/faqs/)  