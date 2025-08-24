# **Amazon EventBridge**

## **Overview**
**Amazon EventBridge** is a **serverless event bus service** that makes it easy to build **event-driven applications**.  
It ingests, filters, and routes events from AWS services, SaaS apps, and custom applications to targets like [[AWS Lambda (Serverless)]], [[Amazon SQS & SNS]], and other AWS services.

---

## **Details**

- **Core Capabilities**
	- Acts as a **central event bus** for event-driven architectures.
	- Sources:
		- AWS service events (e.g., S3 object created, EC2 instance state change).
		- Integrated SaaS apps (Zendesk, Datadog, Shopify, etc.).
		- Custom applications via API.
	- Routes events to targets:
		- [[AWS Lambda (Serverless)]], [[Amazon SQS & SNS]], [[Amazon Kinesis]], Step Functions, EC2, ECS, etc.
	- Uses **rules** with JSON-based event patterns to filter which events go where.
	- Near real-time event delivery.

- **Security & Management**
	- Fine-grained permissions with [[AWS Identity and Access Management (IAM)]].
	- Fully managed, no servers to provision.
	- Integrated with **CloudWatch** for monitoring event throughput and failures.
	- Supports **schema registry** for event formats.

- **Performance**
	- Highly available, serverless.
	- Scales automatically with volume of events.
	- Typical latency < half a second for event delivery.

---

## **Use Cases**
- Trigger a Lambda function when an object is uploaded to S3.
- Send alerts when EC2 instance state changes.
- Connect SaaS tools (e.g., Zendesk ticket → Slack message).
- Decouple microservices with an event bus.
- Automate workflows across AWS accounts and Regions.

---

## **Exam Tips**
- **EventBridge = Event bus, filtering, routing.**  
- If exam mentions **“event-driven architecture”** or **“reacting to changes in AWS resources or SaaS apps”** → EventBridge.  
- Don’t confuse with:
	- **SNS** = simple pub/sub messaging (broadcast).  
	- **SQS** = message queue (decoupling, persistence).  
	- **EventBridge** = advanced routing, filtering, SaaS integrations.  
- Exam scenarios often contrast EventBridge with SNS/SQS.  

---

## **References**
- [AWS Docs: EventBridge](https://docs.aws.amazon.com/eventbridge/)  
- [Amazon EventBridge FAQs](https://aws.amazon.com/eventbridge/faqs/)  