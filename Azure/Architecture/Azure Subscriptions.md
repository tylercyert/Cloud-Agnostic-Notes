---
aliases: []
---
## **Overview**
An Azure subscription is a **logical container** that holds a collection of [[Azure resources]]. It defines **billing, access control boundaries, and quotas** for those resources.

## **Details**
![[Pasted image 20250817122749.png]]
- **Identity & Access**  
	- Subscriptions are linked to an [[Entra ID]] tenant (identity and ~~access~~ (RBAC does this; see below) management).  
	- [[RBAC (Role-Based Access Control)]] permissions are applied at the subscription level.  

- **Billing & Management**  
	- Each subscription has its own billing relationship.  
	- Consolidated billing is possible when managing multiple subscriptions.  

- **Resource Organization**  
	- A subscription can contain multiple [[Resource Groups]].  
	- Resources must belong to exactly **one subscription**.  
	- Subscriptions can be used to separate environments (e.g., Dev, Test, Prod) or departments.  

- **Limits & Quotas**  
	- Each subscription has limits on resources (can be increased with support requests).  

## **Exam Tips**
- Think of a subscription as the **billing + management boundary** in Azure.  
- **Tenant → Subscription → Resource Group → Resources** is the hierarchy.  
- Multiple subscriptions can be associated with a single tenant.  
- Subscriptions are often used as 

## **References**
- [Microsoft Learn: Subscriptions in Azure](https://learn.microsoft.com/en-us/azure/cost-management-billing/manage/create-subscription)  
- [[Microsoft Tenant (Azure Context)]]