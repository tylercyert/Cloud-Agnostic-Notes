## **Overview**
**Availability Zones (AZs)** are physically separate datacenters within a cloud region, designed to improve availability, resiliency, and fault tolerance.
## **Details**
- Each **zone** is an independent physical location with its own power, cooling, and networking.  
- A region typically contains **multiple zones** (often 3 or more, depending on the provider).  
- Protects against **datacenter-level failures**.  
- Workloads can be deployed as:  
  - **Zonal** (pinned to a single zone).  
  - **Zone-redundant** (replicated across multiple zones).  
- Enables high availability for critical workloads such as VMs, databases, and storage.  
- Cloud providers often guarantee higher **uptime SLAs** when resources span multiple zones.  
## **References**
- [Microsoft Learn: Availability Zones](https://learn.microsoft.com/en-us/azure/reliability/availability-zones-overview)  
- [AWS: Regions and Availability Zones](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)  
- [Google Cloud: Regions and Zones](https://cloud.google.com/compute/docs/regions-zones)  