---
aliases:
  - Azure Functions
---

## **Overview**
[[Azure Functions]] is a **serverless compute service** that lets you run small pieces of code (“functions”) without managing infrastructure. The cloud provider automatically handles scaling, reliability, and resource provisioning.
## **Details**
- **Serverless model**  
	- No need to provision or manage servers.
	- You only pay for **execution time** (consumption-based billing).  
	- Only a single logical function can be assigned to a single Azure Function
- **Event-driven**  
	- Functions are triggered by events such as:  
		- HTTP requests  
		- Queue messages  
		- Timers/schedules  
		- [[*Azure Storage]] or [[Azure Event Grid]] events  
- **Scaling**  
	- Automatically scales up/down based on demand.  
	- Ideal for unpredictable workloads.  
- **Use cases**  
	- API backends (responding to HTTP requests).  
	- Data processing (resizing images, ETL jobs).  
	- IoT event handling.  
	- Automating operational tasks.  
- **Comparison to VMs and Containers**  
	- **VMs** → Full control, always running, more expensive for burst workloads.  
	- **Containers** → Lightweight, portable, but still require orchestration.  
	- **Functions** → Small, event-driven tasks, cheapest for sporadic workloads.  
## **Exam Tips**
- Functions = **event-driven, serverless compute**.  
- Best for **short-lived, stateless tasks**.  
- Pay only when code runs (**consumption plan**).  
- Competes with AWS Lambda and GCP Cloud Functions.  
- Functions are stateless
- Spin Up -> Run -> Spin Down
## **References**
- [Microsoft Learn: Azure Functions overview](https://learn.microsoft.com/en-us/azure/azure-functions/functions-overview)  