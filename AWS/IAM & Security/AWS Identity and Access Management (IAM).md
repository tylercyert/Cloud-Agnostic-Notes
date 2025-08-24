## **Overview**
**AWS Identity and Access Management (IAM)** is the service that controls **authentication and authorization** in AWS.  
It lets you securely manage **users, groups, roles, and policies** to define who can access which AWS resources.

## **Details**
- **Core Concepts**
	- **Users** – Identities for individuals or applications.  
	- **Groups** – Collections of users with shared permissions.  
	- **Roles** – Temporary credentials for trusted entities (AWS services, apps, federated users).  
	- **Policies** – JSON documents defining allowed/denied actions on resources.  

- **Policy Types**
	- **Identity-based policies** – Attached to users, groups, or roles.  
	- **Resource-based policies** – Attached to resources (e.g., S3 bucket policy).  
	- **Permissions boundaries** – Limit the maximum permissions a user/role can have.  
	- **Service control policies (SCPs)** – Used in [[AWS Organizations & Accounts]] to restrict account permissions.  
	- **Access Control Lists (ACLs)** – Legacy, resource-level access for some services.  

- **Authentication**
	- **Access keys** (programmatic access via CLI/SDK).  
	- **Console passwords** (management console access).  
	- Supports **MFA (Multi-Factor Authentication)**.  
	- Can integrate with identity providers via **SAML 2.0, OIDC, or Cognito** for federation.  

- **Best Practices**
	- Follow **principle of least privilege**.  
	- Use **roles instead of long-term credentials** for applications.  
	- Enable **MFA for root and privileged accounts**.  
	- Regularly rotate access keys.  
	- Use IAM Access Analyzer to review unused/overly broad permissions.  

- **Integration**
	- Required by all AWS services to control access.  
	- Works with [[AWS CloudTrail & CloudWatch]] for logging and monitoring IAM activities.  

- **Pricing**
	- IAM is provided **at no additional cost**.  

## **Exam Tips**
- **IAM = authentication + authorization**.  
- **Users = identities, Groups = collections, Roles = temporary credentials**.  
- **Policies = JSON documents** that define permissions.  
- **Resource-based policies** (e.g., S3 bucket) vs **identity-based policies** (attached to users/roles).  
- Root user = avoid using; secure with **MFA**.  
- IAM is **global (not region-specific)**.  

## **References**
- [AWS IAM](https://aws.amazon.com/iam/)  
- [IAM Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)  
****