---
aliases: []
---
## **Summary**
Resource Providers act like a **list of activated services** in [[Azure Subscriptions]]. Each provider (e.g., `Microsoft.Compute`, `Microsoft.Storage`) defines the resources and operations available. When a provider is registered, it makes those services usable in that subscription. Unregistered providers still exist in Azure globally, but they can’t be deployed in that subscription until registered.

## **Overview**
A Resource Provider in [[Azure]] is a service that supplies the **set of resources and operations** you can use through [[Azure Resource Manager (ARM)]]. Each provider offers a specific type of resource (e.g., VMs, storage accounts, SQL databases).

Azure's core services are pre-registered out of the box.
## **Details**
- **Namespace**  
	- Each resource provider is identified by a namespace (e.g., `Microsoft.Compute`, `Microsoft.Storage`, `Microsoft.Network`).  
- **Resource Types**  
	- Within each provider, you get access to resource types:  
		- `Microsoft.Compute` → [[Azure Virtual Machines (VMs)]], scale sets, images.  
		- `Microsoft.Storage` → [[*Azure Storage]] accounts, blob/file/queue/table.  
		- `Microsoft.Network` → [[Azure Virtual Network (VNet)]], load balancers, NICs.  
- **Registration**  
	- Some resource providers must be **registered** in a subscription before use.  
	- Registration can be automatic (common providers) or manual (specialized ones).  
- **Management**  
	- Accessed through ARM via [[Azure Portal]], [[Azure CLI]], [[Azure PowerShell]], or REST API.  
## **Exam Tips**
- **Resource Provider = service namespace** (e.g., `Microsoft.Compute`).  
- They define the **resources you can create/manage** in Azure.  
- You may need to **register** some providers before deploying their resources.  
## **References**
- [Microsoft Learn: Resource providers and types](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-providers-and-types)  
