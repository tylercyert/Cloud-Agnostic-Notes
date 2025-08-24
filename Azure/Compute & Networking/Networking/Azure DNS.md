---
aliases:
  - DNS
---

## **Overview**
Azure DNS is a cloud-based **Domain Name System (DNS) hosting service** in [[Azure]]. It allows you to host and manage your domain’s DNS records using [[Azure Resource Manager (ARM)]], providing high availability and low-latency name resolution.
## **Details**
- **DNS Hosting**  
	- Lets you host your domains in [[Azure]], managing DNS zones and records just like with traditional registrars.  
	- Supports all common record types (A, AAAA, CNAME, MX, TXT, SRV).  
- **Integration**  
	- Managed through the same tools as other Azure resources: [[Azure Portal]], [[Azure CLI]], [[PowerShell]], or ARM templates.  
	- Provides Role-Based Access Control ([[RBAC (Role-Based Access Control)]]) for DNS management.  
- **Availability & Performance**  
	- Built on a **global, highly available network** of Azure DNS name servers.  
	- Uses **anycast routing** to direct queries to the closest DNS server.  
- **Limitations**  
	- Azure DNS **does not provide domain registration**. You must register the domain with a third-party registrar and then delegate DNS to Azure.  
- **Use Cases**  
	- Hosting DNS for web applications in [[Azure App Service (Web Apps)]].  
	- Managing DNS for hybrid cloud environments.  
	- Centralized DNS record management for enterprise apps.  
## **Exam Tips**
- Azure DNS = **host and manage DNS records in Azure**.  
- Does **not** register domain names (needs external registrar).  
- Benefits: high availability, global performance, integration with ARM + RBAC.  
## **References**
- [Microsoft Learn: What is Azure DNS?](https://learn.microsoft.com/en-us/azure/dns/dns-overview)  