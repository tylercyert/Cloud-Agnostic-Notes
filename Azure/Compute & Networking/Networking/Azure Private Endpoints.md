## **Overview**
An **Azure Private Endpoint** is a network interface that connects you privately and securely to Azure services, ensuring that traffic never traverses the public internet. Instead, it uses a **private IP address from your VNet** to reach the service.  

## **Details**
- **Purpose**:  
	- Eliminates exposure of services through **public endpoints**.  
	- Ensures data flows only within **Microsoft’s backbone network**.  
- **How it works**:  
	- When you create a private endpoint, Azure assigns it a **private IP** from your **[[Azure Subnets]]**.  
	- A private DNS zone maps the service’s FQDN (e.g., `blob.core.windows.net`) to that private IP.  
	- Applications resolve the service name → connect through private IP → reach service securely.  
- **Supported services**:  
	- [[Azure Storage Accounts]] (Blob, File, Queue, Table).  
	- [[Azure SQL Database]].  
	- [[Azure Web Apps|App Service]].  
	- Many others (Key Vault, Cosmos DB, etc.).  
- **Security Benefits**:  
	- No internet exposure.  
	- Traffic stays in the Azure backbone, reducing risk of data exfiltration.  
	- Can integrate with **Network Security Groups (NSGs)** and **Azure Firewall**.  

## **Exam Tips**
- **Private Endpoint = private IP connection to a service**.  
- Requires **Private DNS** setup for name resolution.  
- Ensures services are **not accessible from the public internet**.  
- Use for compliance, zero-trust, and high-security environments.  

## **References**
- [Microsoft Learn: Private Endpoints](https://learn.microsoft.com/en-us/azure/private-link/private-endpoint-overview)  