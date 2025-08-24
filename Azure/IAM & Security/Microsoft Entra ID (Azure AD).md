## **Overview**
**Microsoft Entra ID** (formerly **Azure Active Directory**) is **Azure’s cloud-based identity and access management (IAM) service**.  
It manages **users, groups, devices, and applications** while providing **authentication and authorization** for resources both in Azure and external SaaS apps.

---

## **Details**
- Provides **single sign-on (SSO)** to thousands of SaaS apps (e.g., Office 365, Salesforce).  
- Integrates with **multifactor authentication (MFA)**, **passwordless authentication**, and [[Microsoft Entra Conditional Access]].  
- Supports **RBAC (Role-Based Access Control)** for Azure resources.  
- Manages **external identities and guest access**, allowing secure B2B/B2C collaboration.  
- Integrates with **on-prem Active Directory** through **Azure AD Connect** for hybrid identity.  
- Enables **device identity and compliance policies** (via Microsoft Intune).  

---

## **Key Features**
- **Identity management** → Users, groups, service principals, and managed identities.  
- **Access management** → Authentication (who you are) + Authorization (what you can do).  
- **Security** → Conditional access, MFA, passwordless.  
- **Hybrid support** → Sync on-prem directories with the cloud.  
- **Compliance** → Centralized identity for auditing and governance.  

---

## **Exam Tips**
- **Do not confuse with Entra Domain Services** → Entra ID is **modern IAM**, Domain Services is **legacy domain join/LDAP support**.  
- **Identity = who you are. Access = what you can do.**  
- Works with **internal + external identities** (employees, contractors, customers).  
- Provides the backbone for **Zero Trust** in Azure.  

---

## **References**
- [Microsoft Learn: What is Microsoft Entra ID?](https://learn.microsoft.com/en-us/entra/fundamentals/whatis)  