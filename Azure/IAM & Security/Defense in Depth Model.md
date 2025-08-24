## **Overview**
**Defense in Depth** is a layered approach to security in Azure. Instead of relying on a single control, multiple layers of defense are implemented across identity, network, applications, and data. The goal is to slow down attackers, reduce the attack surface, and provide redundancy in protection.

## **Details**
- **Concept**  
	- Security is applied in **layers**, so if one layer is compromised, others still protect the system.  
	- Based on the principle of **Zero Trust** — never trust, always verify.  

- **Layers of Defense (Microsoft’s Model)**  
	1. **Physical Security** → Microsoft datacenters (gates, cameras, guards, biometric access).  
	2. **Identity & Access** → [[Microsoft Entra ID (Azure AD)]], [[Multifactor Authentication (MFA)]], [[Conditional Access]], and [[Azure Role Based Access Control (RBAC)]].  
	3. **Perimeter** → [[Azure DDoS Protection]], [[Azure Firewall]], VPN/[[Azure ExpressRoute]].  
	4. **Network** → [[Azure Virtual Network (VNet)]], [[Subnets]], [[Network Security Groups (NSG)]], segmentation, microsegmentation.  
	5. **Compute** → [[Azure Virtual Machines (VMs)]], [[Azure Kubernetes Service (AKS)]], VM hardening, patching, antimalware.  
	6. **Application** → Secure development practices, [[Azure App Service]], [[Microsoft Defender for Cloud Apps]].  
	7. **Data** → Encryption at rest & in transit, [[Azure Key Vault]], [[Azure Storage encryption]].  

- **Key Principles**  
	- **Assume breach**: plan as if attackers already got inside.  
	- **Least privilege access**: only grant permissions required.  
	- **Visibility & Monitoring**: continuous auditing with [[Microsoft Defender for Cloud]].  

## **Exam Tips**
- Know the **seven layers** of defense in depth.  
- Remember: **Physical → Identity → Perimeter → Network → Compute → Application → Data**.  
- Defense in depth supports and enforces the **Zero Trust model**.  
- Each layer adds redundancy and slows down attackers.  

## **References**
- [Microsoft Learn: Defense in Depth](https://learn.microsoft.com/en-us/azure/security/fundamentals/defense-in-depth)  