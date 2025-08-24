## **Overview**
**Public Endpoints** in Azure are network interfaces that expose a resource to the public internet. They allow clients to connect to services using a **public IP address**, making them reachable outside of the private **[[Azure Virtual Network (VNet)]]**.  
## **Details**
- A **public endpoint** = resource tied to a **public IP**.  
- Commonly used for:  
	- [[Azure App Service (Web Apps)]]  
	- [[Azure Virtual Machines (VMs)]] with public IPs  
	- [[Azure Storage Accounts]] or [[Azure SQL Database]] when configured with public access.  
- Provides internet accessibility for:  
	- End users  
	- APIs  
	- Cross-region / hybrid connectivity (if private link isn’t configured).  
- Security considerations:  
	- By default, public endpoints are open to the internet → must be restricted with **NSGs, firewalls, or service endpoint policies**.  
	- Best practice is to use **[[Private Endpoints]]** unless public exposure is required.  
## **Exam Tips**
- **Public endpoint = internet-accessible.**  
- Use when external clients must connect directly.  
- Lock down access with **firewall rules** or **NSGs** to avoid exposure.  
- Compare to [[Private Endpoints]] → for secure, private-only access via Azure backbone.  
## **References**
- [Microsoft Learn: Public and private endpoints](https://learn.microsoft.com/en-us/azure/private-link/private-endpoint-overview)  