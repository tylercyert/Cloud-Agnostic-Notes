## **Overview**
**Azure Queue Storage** is a service for storing and retrieving large numbers of messages. It provides a **simple message queue** that applications can use to communicate asynchronously. Messages are typically used for **decoupling** components in distributed systems.
## **Details**
- **Message storage**
	- Each message can be up to **64 KB** in size.  
	- A queue can contain **millions of messages** (up to the storage account limit).  
- **Access**
	- Messages are retrieved and processed by consumers in **FIFO (First-In, First-Out)** order.  
	- Access controlled via **Shared Key, SAS, or Entra ID**.  
- **Usage**
	- Enables **asynchronous communication** between cloud services, VMs, or on-premises apps.  
	- Commonly used for **workload balancing** and **task scheduling**.  
- **Differences from Service Bus Queues**
	- **Queue Storage** = simple, basic queuing, cheap, massive scale. 
	- **Service Bus Queues** = advanced features (topics, sessions, duplicate detection, transactions).  
## **Scenarios**
- Processing tasks asynchronously (e.g., image processing jobs).  
- Buffering requests to prevent system overload.  
- Reliable communication between loosely coupled components.  
## **Exam Tips**
- Azure Queues = **basic, large-scale message storage**.  
- Service Bus Queues = **advanced enterprise messaging**.  
- Messages limited to **64 KB** each.  
- Supports **millions of messages per queue**.  
## **References**
- [Microsoft Learn: Queue Storage](https://learn.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction)  
- [Microsoft Learn: Compare storage options for queues](https://learn.microsoft.com/en-us/azure/service-bus-messaging/service-bus-azure-and-service-bus-queues-compared)  