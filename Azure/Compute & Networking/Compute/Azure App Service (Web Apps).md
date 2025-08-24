## **Overview**
**Azure App Service (Web Apps)** is a **Platform as a Service (PaaS)** offering that allows you to build, host, and scale web applications without managing the underlying infrastructure. It supports multiple languages and frameworks, integrates with DevOps pipelines, and provides built-in scaling and monitoring.

---
## **Details**
- **Supported Languages & Frameworks**:  
	- .NET, Java, Python, PHP, Node.js, Ruby  
	- Custom containers (via Docker)
- **Key Features**:  
	- **Fully Managed Hosting** → Microsoft manages servers, OS patches, and scaling.  
	- **Deployment Options** → GitHub, Azure DevOps, Bitbucket, FTP, or CI/CD pipelines.  
	- **Scaling**:  
	    - **Vertical** → Scale up by choosing a bigger App Service Plan.  
	    - **Horizontal** → Scale out across multiple instances automatically.  
	  - **Networking** → Supports VNet integration, private endpoints, and hybrid connections.  
	  - **Security** → Managed identities, SSL certificates, authentication/authorization integration with [[Azure Entra ID (IAM)]].  
	  - **Monitoring** → Built-in logging, metrics, and integration with [[Azure Monitor]].  

- **App Service Plan**:  
	- Defines the region, VM size, scaling, and pricing tier.  
	- Multiple apps can share the same plan (cost optimization).  

---
## **Exam Tips**
- **App Service = PaaS web hosting** (no VM management).  
- Runs **web apps, APIs, and mobile app backends**.  
- Uses an **App Service Plan** to define compute resources + pricing.  
- Compare with:  
	- **VMs** → Full control but higher management overhead.  
	- **Containers (ACI / AKS)** → More portable, but requires orchestration.  
	- **Functions** → Event-driven, serverless code execution.  

---

## **References**
- [Microsoft Learn: App Service Overview](https://learn.microsoft.com/en-us/azure/app-service/overview)  
- [Microsoft Learn: App Service Plans](https://learn.microsoft.com/en-us/azure/app-service/overview-hosting-plans)  