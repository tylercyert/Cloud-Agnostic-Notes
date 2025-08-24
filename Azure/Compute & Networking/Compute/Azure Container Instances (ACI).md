---
aliases:
  - ACI
  - Azure ACI
---

## **Overview**
Azure Container Instances (ACI) is a **serverless container service** in [[Azure]] that allows you to run Docker containers without managing virtual machines or container orchestration platforms. It’s the fastest way to deploy containers in the cloud with per-second billing.
## **Details**
- **Serverless Containers**  
	- No need to manage VMs, clusters, or orchestrators.  
	- Ideal for **short-lived, stateless tasks**.  
- **Deployment**  
	- Runs Linux or Windows containers.  
	- Can be started quickly and shut down when not needed.  
	- Billed by **seconds of execution + resources used (vCPU + memory)**.  
- **Integration**  
	- Works with [[Azure Virtual Network (VNet)]] for secure networking.  
	- Can be used with [[Azure Logic Apps]], [[Azure Functions]], and [[Azure Kubernetes Service (AKS)]] for more complex workflows.  
- **Use Cases**  
	- Simple application workloads without orchestration.  
	- Batch processing / jobs that run and then stop.  
	- Development/testing environments.  
	- Event-driven processing when combined with other services.  
## **Exam Tips**
- ACI = **containers without orchestration**.  
- Cheaper and faster to start than VMs for **ephemeral workloads**.  
- Use [[Azure Kubernetes Service (AKS)]] if you need orchestration, scaling, or complex deployments.  
- Pay only for the **time and resources consumed**.  
## **References**
- [Microsoft Learn: Azure Container Instances](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-overview)  