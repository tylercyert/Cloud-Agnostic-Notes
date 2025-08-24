# **Amazon Simple Notification Service (SNS)**

## **Overview**
**Amazon SNS** is a **fully managed pub/sub messaging service**.  
It allows applications, microservices, and distributed systems to **send notifications and messages** to multiple subscribers (fan-out model).

---

## **Details**
- **Core Capabilities**
	- **Publish/Subscribe Model**:
		- **Publisher** sends a message to an **SNS topic**.
		- **Subscribers** (endpoints) receive the message.
	- Delivery protocols: HTTP/S, email, SMS, Lambda, SQS, mobile push.
	- **Fan-out architecture**: one message → many subscribers.
	- Fully managed, scales automatically.

- **Message Types**
	- **Topic-based messaging**: decouple publishers from subscribers.
	- **Direct messaging**: send SMS or mobile push directly to a device.

- **Use Cases**
	- Event-driven applications (e.g., trigger Lambda functions).
	- Fan-out to multiple services (e.g., SNS → SQS queues for processing).
	- Mobile push notifications or SMS/email alerts.
	- Decoupling microservices in distributed systems.

- **Security**
	- Supports encryption at rest with [[AWS KMS|AWS Key Management Service (KMS)]].
	- Access control with [[AWS Identity and Access Management (IAM)]] policies.
	- Message delivery status logging via [[AWS CloudTrail & CloudWatch|AWS CloudWatch]].
	- VPC endpoints for private message delivery.

- **Integrations**
	- Commonly paired with:
		- [[Amazon SQS & SNS]] (SNS → SQS fan-out).
		- [[AWS Lambda (Serverless)]] event triggers.
		- [[AWS CloudTrail & CloudWatch|AWS CloudWatch]] alarms (alerting).
		- Mobile push (iOS/Android).

---

## **Exam Tips**
- **SNS = Pub/Sub**; **SQS = Queue (polling)**.  
- Use **SNS + SQS fan-out** to guarantee message delivery and persistence.  
- **SNS is push-based**, **SQS is pull-based**.  
- Expect exam scenarios where **multiple systems need the same event** → use SNS.  
- Secure with **IAM policies and KMS encryption**.  

---

## **References**
- [AWS Docs: SNS](https://docs.aws.amazon.com/sns/)  
- [Amazon SNS FAQs](https://aws.amazon.com/sns/faqs/)  