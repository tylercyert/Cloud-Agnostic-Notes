---
aliases:
  - Azure Resources
  - Resource Groups
---
## **Overview**
An Azure resource is any manageable item available in [[Azure]] (e.g., [[Virtual Machines (VMs)]], [[Storage accounts]], [[Databases]], or [[Virtual Networks]]). Resource groups are logical containers that hold and organize these resources.
## **Details**
![[Pasted image 20250817122546.png]]
- **Azure Resources**  
	- Individual services you deploy, such as a VM, web app, or database.  
	- Each resource exists in exactly **one resource group**.  
- **Resource Groups**  
	- Logical containers for managing and organizing multiple resources.  
	- Enable **grouped management**: deploy, update, and delete resources together.  
	- Resources in a group should share the same **lifecycle** (created, managed, retired together).  
	- Provide a boundary for applying **[[RBAC (Role-Based Access Control)]], [[Azure Policy]], and tagging.  
	- A resource can only belong to **one resource group at a time**, but you can move it between groups.  
	- Resource groups can span regions, but the group itself resides in a **specific region** (used to store metadata).  
## **Exam Tips**
- Think of a resource group as a **folder** that contains your Azure resources.  
- Best practice: group by **lifecycle and purpose** (not just by region).  
## **References**
- [Microsoft Learn: Azure Resource Groups](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)  