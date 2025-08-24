# Azure Architecture

---
aliases:
  - Azure Architecture
---

## **Overview**
Azure’s architecture is built on both **physical** and **logical** groupings that define how services are deployed, managed, and scaled.  
- **Physical concepts** (e.g., regions, availability zones, datacenters) define the geographic and infrastructure layout.  
- **Logical concepts** (e.g., resources, resource groups, subscriptions, management groups) define how services are organized, secured, and billed.  
### **Key Terms**
- **Physical Grouping** → Hardware and infrastructure components organized by geography and datacenter location.  
- **Logical Grouping** → Abstracted components managed through [[Azure Resource Manager (ARM)|software-defined controls]], such as resources, groups, and subscriptions.  
## **Notes**
- [[Azure Regions, Region Pairs, and Sovereign Regions]]  
- [[Azure Availability Zones]]  
- [[Azure Resources and Resource Groups]]  
- [[Azure Subscriptions]]  
- [[Azure Management Groups]]  

## **Exam Tips**
- **Physical = where resources live.**  
- **Logical = how resources are organized.**  
- Be clear on the hierarchy: **Management Group → Subscription → Resource Group → Resource**.  
- Physical reliability: [[Azure Regions, Region Pairs, and Sovereign Regions]] + [[Azure Availability Zones]].  
- Logical governance: [[Azure Subscriptions]] + [[Azure Management Groups]] + [[Azure Resources and Resource Groups]].  

## **References**
- [Microsoft Learn: Azure global infrastructure](https://learn.microsoft.com/en-us/azure/reliability/global-infrastructure)  
- [Microsoft Learn: Azure management hierarchy](https://learn.microsoft.com/en-us/azure/governance/management-groups/overview)  
- [[Azure Resource Manager (ARM)]]
- [[Resource Providers]]
- 