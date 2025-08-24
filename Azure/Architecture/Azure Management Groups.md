---
aliases:
  - Azure hierarchy
---

## **Overview**
[[Management Groups]], [[Subscriptions]], and [[Resource Groups]] form the **management hierarchy** in [[Azure]]. This structure organizes resources for **governance, billing, and access control**.

## **Details**
![[Pasted image 20250817123126.png]]
- **Management Groups**  
	- Top-level containers that organize multiple subscriptions.  
	- Allow applying [[Azure Policy]] and [[RBAC (Role-Based Access Control)]] across many subscriptions at once.  
	- Useful for large orgs with multiple departments, environments or regions.

- **[[Azure Subscriptions]]**  
	- Logical containers that define **billing, quotas, and RBAC boundaries**.  
	- Each subscription is tied to **one [[Entra ID]] tenant**.  
	- Can contain multiple resource groups.  

- **[[Azure Resources and Resource Groups|Resource Groups]]**  
	- Logical containers within a subscription.  
	- Group related resources that share the same lifecycle.  
	- Resources can only belong to **one resource group at a time**, but you can move them.  

## **Hierarchy Summary**
- **Management Group → Subscription → Resource Group → Resources**  
	- Management groups = Governance at scale.  
	- Subscriptions = Billing + access boundaries.  
	- Resource groups = Lifecycle management for resources. Resources in the group are expected to be deployed together, maintained together and retired together. 

## **Exam Tips**
- Management groups apply **policies & RBAC across subscriptions**.  
- Subscriptions define **billing + limits**.  
- Resource groups define **lifecycle + organization**.  

## **References**
- [Microsoft Learn: Management groups](https://learn.microsoft.com/en-us/azure/governance/management-groups/overview)  
- [Microsoft Learn: Resource groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)  