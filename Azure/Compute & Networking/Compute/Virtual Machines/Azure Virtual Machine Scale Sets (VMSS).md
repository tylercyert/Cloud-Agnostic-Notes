## **Overview**
**Azure Virtual Machine Scale Sets (VMSS)** let you deploy and manage a set of identical VMs that automatically scale based on demand or a schedule. This ensures high availability and elasticity for workloads without manually provisioning VMs.
## **Details**
- **Scaling**: Automatically increases or decreases VM instances based on load or schedule.  
- **Uniform Configuration**: All VMs share the same image/configuration (e.g., OS, extensions, applications).  
- **High Availability**: Integrates with [[Azure Availability Zones]] and [[Availability Sets]] to protect against datacenter or hardware failures.  
- **Load Balancing**: Often combined with an [[Azure Load Balancer]] or [[Application Gateway]] to distribute traffic across instances.  
- **Use Cases**:  
	- Large-scale compute (e.g., HPC, simulations)  
	- Web applications needing elasticity  
	- Batch processing jobs  
- **Management**: Supports automatic OS updates, extensions, and integration with [[Azure Autoscale]].  
## **Exam Tips**
- Think of VMSS as **auto-scaling IaaS**.  
- All VMs are **identical** → unlike availability sets where you place different VMs for redundancy.  
- VMSS = scalability; Availability Set = fault tolerance.  
## **References**
- [Microsoft Learn: Virtual Machine Scale Sets](https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview)  