---
aliases:
  - ARM
  - Resource Manager
---

## **Overview**
Azure Resource Manager (ARM) is the **management layer** in [[Azure]] that allows you to create, update, and delete [[Azure resources]]. All requests from the [[Azure Portal]], [[Azure CLI]], [[Azure PowerShell]], or REST APIs pass through ARM.
## **Details**
![[Pasted image 20250817131003.png]]
- **Management Layer**  
	- Provides a consistent interface for interacting with Azure resources.  
	- Enforces compliance, RBAC, and policies during resource deployment.  
- **Features**  
	- **Declarative Templates** → Supports ARM templates and [[Bicep]] for infrastructure-as-code.  
	- **Resource Organization** → Deploys resources into [[Resource Groups]] and [[Azure Subscriptions]].  
	- **Access Control** → Integrates with [[RBAC (Role-Based Access Control)]] to manage permissions.  
	- **Tagging** → Apply tags for cost tracking and organization.  
	- **Policies** → Works with [[Azure Policy]] to enforce governance rules.  
- **Integration**  
	- Everything in Azure — from a [[Virtual Machines (VMs)|VM]] to a [[Virtual Network (VNet)]] — is created through ARM.  
	- Tools like [[Terraform]] or [[Bicep]] compile down into ARM templates/REST API calls.  
## **Exam Tips**
- **ARM = management engine** for all Azure resources.  
- All interactions (Portal, CLI, PowerShell, APIs) go through ARM.  
- ARM enables **infrastructure as code** via templates.  
## **References**
- [Microsoft Learn: Azure Resource Manager overview](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)  
- [[Resource Providers]] 