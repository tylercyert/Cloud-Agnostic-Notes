## **Overview**
When deploying a [[Azure Virtual Machines (VMs)]], you must select both an **image** (the OS and preinstalled software) and a **size** (the hardware resources such as CPU, memory, and storage throughput). Together, these determine the functionality, performance, and cost of the VM.

---
## **VM Images**
- **Definition**: Templates that include an operating system + optional software.  
- **Types**:  
	- **Marketplace Images** → Provided by Microsoft or 3rd parties (e.g., Windows Server, Ubuntu, SQL Server).  
	- **Custom Images** → Created by you from existing VMs or uploaded from on-premises.  
	- **Shared Image Gallery (SIG)** → Lets you manage, version, and replicate custom images across regions.  
- **Purpose**: Simplifies deployment by ensuring consistent OS/software setup across environments.

---
## **VM Sizes**
- **Definition**: Defines the VM’s allocated compute, memory, storage performance, and networking throughput.  
- **Families**:  
	- **General Purpose (B, Dsv3, Av2)** → Balanced CPU/memory.  
	- **Compute Optimized (F-series)** → Higher CPU-to-memory ratio.  
	- **Memory Optimized (Esv3, M-series)** → Larger memory per vCPU.  
	- **Storage Optimized (Lsv2)** → High disk throughput/IOPS.  
	- **GPU (NC, ND, NV)** → Accelerated computing and visualization.  
	- **High Performance Compute (H-series)** → Specialized for HPC workloads.  
- **Resizing**: VMs can usually be resized to a larger/smaller SKU depending on region and availability.

---
## **Exam Tips**
- **Image = software layer** (OS + apps).  
- **Size = hardware layer** (vCPU, RAM, storage perf).  
- Use **Shared Image Gallery** for scaling custom images across regions.  
- Choose VM size based on workload needs (general vs memory vs compute vs storage vs GPU).  
- Remember: **Resizing may require stopping the VM** if the target size is not available on the same host.

---
## **References**
- [Microsoft Learn: VM sizes](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes)  
- [Microsoft Learn: VM images](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/imaging)  