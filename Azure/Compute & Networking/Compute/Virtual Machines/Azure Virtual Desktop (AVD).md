## **Overview**
**Azure Virtual Desktop (AVD)** is a **Desktop-as-a-Service (DaaS)** solution that allows users to access a virtualized Windows desktop and applications hosted in [[Azure Virtual Machines (VMs)]]. It enables secure remote work with centralized management, cost efficiency, and scalability.  

---
## **Details**
- **Service Type**: Platform service built on top of [[Azure Virtual Machines (VMs)]].  
- **Purpose**: Provides virtualized desktops and apps to end users over the internet.  
- **Key Features**:  
	- **Multi-session Windows 10/11** → Multiple users share a single VM session host.  
	- **Remote Apps** → Publish only specific applications, not a full desktop.  
	- **Centralized management** → Admins manage desktops, apps, users, and policies from the Azure portal.  
	- **Integration** → Works with [[Microsoft 365]] (Teams, Office) and [[Azure Active Directory (Entra ID)]].  
	- **Security** → Identity secured via [[Azure Active Directory (Entra ID)]] + MFA, and traffic secured with TLS.  
- **Use Cases**:  
	- Remote/hybrid workforce access.  
	- Secure access to corporate apps from unmanaged devices.  
	- Seasonal or temporary workers (scale desktops up/down).  
	- Bring-your-own-device (BYOD) environments.  

---
## **Exam Tips**
- Remember: **AVD runs on top of Azure VMs** (Microsoft provides the management plane, you manage the session hosts).  
- **Cheaper than traditional VDI** → multi-session capability saves cost.  
- **Security**: Integrated with Entra ID, Conditional Access, and MFA.  
- Distinguish between:  
	- **Full desktops** (Windows 10/11 multi-session).  
	- **Remote apps** (only deliver certain apps).  

---
## **References**
- [Microsoft Learn: Azure Virtual Desktop](https://learn.microsoft.com/en-us/azure/virtual-desktop/overview)  