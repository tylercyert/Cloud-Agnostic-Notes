---
aliases:
  - Azure compute
  - Azure networking
---

## **Overview**
Azure provides multiple **compute** and **networking** services to run applications, host workloads, and connect securely across on-premises and cloud environments.  
- **Compute**: Options include [[Azure Virtual Machines (VMs)]], [[Azure Container Instances (ACI)]], and [[Azure Functions]], giving flexibility from infrastructure-level control to serverless execution.  
- **Networking**: Services like [[Azure Virtual Network (VNet)]], [[Azure VPN Gateway]], and [[Azure ExpressRoute]] provide secure, scalable connectivity across regions, subnets, and hybrid environments.  
### **Key Terms**
- **Compute Types** → How applications/workloads run (VMs, containers, functions).  
- **VM Options** → Deployment choices for scaling, availability, and desktops.  
- **Application Hosting** → Where apps are run (App Services, containers, VMs).  
- **Networking** → VNets, subnets, DNS, gateways, and private connections.  
- **Endpoints** → Public vs. private access points.  
## **Notes**
### Compute Types
- [[Azure Container Instances (ACI)]]  
- [[Azure Virtual Machines (VMs)]]  
- [[Azure Functions]]  
### Virtual Machine Options
- [[Azure Virtual Machines (VMs)]]  
- [[Azure Virtual Machine Scale Sets (VMSS)]]  
- [[Availability Sets | Azure Availability Sets]]  
- [[Azure Virtual Desktop (AVD)]] 
### VM Requirements
- [[Azure VM Networking (NIC, VNet, Subnet)]]  
- [[Azure VM Storage (Managed Disks)]]  
- [[Azure VM Images and Sizes]]  
### Application Hosting
- [[Azure App Service (Web Apps)]]  
- [[Azure Container Instances (ACI)]]  
- [[Azure Virtual Machines (VMs)]]  
### Virtual Networking
- [[Azure Virtual Network (VNet)]]  
	- [[Azure Subnets]]  
	- [[Azure VNet Peering]]  
	- [[Azure DNS]]  
- [[Azure VPN Gateway]] 
- [[Azure ExpressRoute]]  
### Endpoints
- [[Azure Public Endpoints]]
- [[Azure Private Endpoints]]
## **Exam Tips**
- **Compute**:  
	- VMs = IaaS, full control.  
	- ACI = containerized workloads, fast startup.  
	- [[Functions (Azure Context)]] = serverless, event-driven.  
- **VM Options**:  
	- VMSS = horizontal scaling.  
	- Availability Sets = protect from hardware failures.  
	- AVD = desktop virtualization.  
- **Networking**:  
	- VNet = isolation + communication.  
	- VPN Gateway = encrypted tunnel over internet.  
	- ExpressRoute = private dedicated connection.  
- **Endpoints**:  
	- Public = internet accessible.  
	- Private = VNet-only, more secure.  

## **References**
- [Microsoft Learn: Introduction to Azure compute services](https://learn.microsoft.com/en-us/training/modules/intro-to-azure-compute/)  
- [Microsoft Learn: Introduction to Azure networking](https://learn.microsoft.com/en-us/training/modules/intro-to-azure-networking/)  