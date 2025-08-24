## **Overview**
**Microsoft Entra Domain Services (EDS)** provides **managed domain services** such as **domain join, LDAP, Kerberos, and Group Policy** without requiring on-premises domain controllers.  
It allows organizations to run **legacy applications** that depend on traditional Active Directory features in an Azure-hosted environment.

---
## **Details**
- Creates a **managed domain** in Azure that is automatically synced with [[Microsoft Entra ID (Azure AD)]].  
- Provides **traditional domain services**:
	- Domain join for Windows VMs.  
	- LDAP read support.  
	- Kerberos & NTLM authentication.  
	- Group Policy objects (GPOs).  
- Does **not** require deploying or managing your own domain controllers.  
- Used mainly for **lift-and-shift migrations** of legacy apps to Azure.  
- High availability built-in (Microsoft manages replication and failover).  

---
## **Key Features**
- **Compatibility bridge** → Run legacy AD-dependent apps in Azure.  
- **Integration** → Syncs identities from [[Microsoft Entra ID (Azure AD)]] into the managed domain.  
- **Simplified management** → No need to patch or manage domain controllers.  
- **Secure** → Azure handles redundancy, patching, and monitoring.  

---
## **Exam Tips**
- **Entra ID vs Domain Services** →  
	- **Entra ID (IAM)**: Modern identity/auth for cloud-native apps.  
	- **Entra Domain Services**: Legacy domain services (Kerberos, LDAP, GPO).  
- Best for **legacy apps** that can’t use modern auth (SSO, OAuth, etc.).  
- You **cannot extend schema** or manage domain controllers directly.  
- Still part of the same **tenant**, but only for workloads that need “classic AD” functions.  

---
## **References**
- [Microsoft Learn: What is Microsoft Entra Domain Services?](https://learn.microsoft.com/en-us/entra/domain-services/overview)  