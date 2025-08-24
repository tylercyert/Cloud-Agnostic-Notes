# **Amazon SQS & SNS**

## **Overview**
- **Amazon SQS (Simple Queue Service)** = **fully managed message queuing service**.  
	- Decouples producers and consumers with a **pull-based** model.  
	- Consumers poll the queue for messages.  
- **Amazon SNS (Simple Notification Service)** = **fully managed pub/sub messaging service**.  
	- Sends messages to multiple subscribers using a **push-based** model. 
	- Publishers send to a **topic**, which fans out to subscribers.  

Together, **SNS + SQS** enable **scalable, decoupled, event-driven architectures**.  

---

## **Details**

### **Amazon SQS**
- **Types of Queues**
	- **Standard Queue**: Unlimited throughput, at-least-once delivery, possible duplicates.  
	- **FIFO Queue**: Ordered delivery, exactly-once processing, limited throughput.  
- **Features**
	- Message retention: up to 14 days.  
	- Visibility timeout: hides messages while being processed.  
	- Dead-letter queues (DLQ) for failed messages.  
	- Fully managed and serverless.  
- **Use Cases**
	- Decoupling microservices.  
	- Buffering requests between systems.  
	- Handling burst traffic with consumers that scale out.  

### **Amazon SNS**
- **Core Model**
	- **Publisher → Topic → Subscribers**.  
	- Supported subscribers: HTTP/S, Lambda, SQS, email, SMS, mobile push.  
	- Fan-out: one message → many subscribers.  
- **Use Cases**
	- Application alerts (SMS/email).  
	- Event notifications triggering Lambdas.  
	- Distributing messages to multiple queues for parallel processing.  

### **SQS + SNS Fan-Out Pattern**
- SNS topic receives a message.  
- SNS pushes it to multiple **SQS queues**.  
- Each queue can be processed by different consumers in parallel.  
- Ensures durability (SQS persists messages) + scalability.  

---

## **Security**
- Both support **IAM policies** for access control.  
- Messages can be encrypted at rest using [[AWS Key Management Service (KMS)]].  
- [[Amazon CloudWatch]] can monitor message delivery and failures.  
- VPC endpoints available for private messaging.  

---

## **Exam Tips**
- **SQS = Queue (polling, persistence)**; **SNS = Pub/Sub (push, fan-out)**.  
- **SQS Standard** = high throughput but possible duplicates; **FIFO** = strict order and exactly-once.  
- Use **SNS + SQS** when multiple applications must reliably process the same message.  
- **SNS alone = real-time notification** (e.g., SMS/email); **SQS alone = decouple producer/consumer**.  
- Common scenario: **CloudWatch Alarm → SNS Topic → SQS Queue + Lambda subscribers**.  

---

## **References**
- [AWS Docs: Amazon SQS](https://docs.aws.amazon.com/sqs/)  
- [AWS Docs: Amazon SNS](https://docs.aws.amazon.com/sns/)  
- [SNS + SQS Fan-Out Pattern](https://docs.aws.amazon.com/sns/latest/dg/sns-sqs-as-subscriber.html)  

# **SNS & SQS – Typical I/O and Config (Exam Cheat Sheet)**

## **Amazon SNS (publish/subscribe – push)**
- **Message size:** up to **256 KB** per publish.
- **Throughput:** **Standard topics** scale horizontally (high fan‑out; effectively “unlimited” within account limits).  
  **FIFO topics** preserve order & exactly-once with **lower throughput** (hundreds to low‑thousands msg/s; batching improves it).
- **Latency:** Push delivery is typically **sub‑second** to AWS targets (e.g., SQS/Lambda); email/SMS/HTTP(S) depends on downstream.
- **Protocols (subscribers):** **SQS**, **Lambda**, **HTTP/S**, **email**, **SMS**, **mobile push**, etc.
- **Filtering:** **Message attribute filters** at subscription level to cut downstream load.
- **Security:** IAM policies, KMS encryption at rest, VPC endpoints for private access.
- **Reliability:** Retries with exponential backoff for HTTP/S; for durable processing pair **SNS → SQS** per subscriber (“fan‑out”).
- **Ordering/Exactly‑once:** Use **SNS FIFO topics** (with message group IDs + deduplication IDs) when order matters.

## **Amazon SQS (queue – pull)**
- **Queue types:**
	- **Standard:** **At‑least‑once**, best‑effort order, **virtually unlimited throughput**.
	- **FIFO:** **Exactly‑once**, strict order per **message group**; **lower throughput** (boost with **batching** and multiple groups).
- **Message size:** up to **256 KB** each. For larger payloads, use **S3 + SQS Extended Client** to store the body in S3.
- **Retrieve patterns:**
	- **Long polling** (preferred): `WaitTimeSeconds` up to **20s** reduces empty receives/costs.
	- **Batch receive:** up to **10 messages** per call improves throughput.
- **Key timeouts & retention:**
	- **Visibility timeout:** default **30s**, configurable **0s–12h** (set ≥ your max processing time).
	- **Message retention:** default **4 days**, configurable **1 minute–14 days**.
	- **Delivery delay (delay queue / per‑message delay):** up to **15 minutes**.
- **Reliability controls:**
	- **DLQ (dead‑letter queue):** via **redrive policy** with `maxReceiveCount`.
	- **Idempotency:** make consumers idempotent (esp. with Standard queues’ possible duplicates).
- **Security:** SSE with **SSE‑SQS** or **KMS‑CMK**, IAM policies, VPC endpoints for private access.
## **Putting them together (common patterns)**
- **Fan‑out:** **SNS topic → multiple SQS queues**, each with its own consumer fleet (durable, scalable, decoupled).
- **Targeted delivery:** Use **SNS message filtering** so each SQS subscription only receives relevant events.
- **Strict order end‑to‑end:** **SNS FIFO → SQS FIFO** with consistent **message group IDs**.

## **Quick “when to use” memory hooks**
- Need **push** to many and/or outside AWS? → **SNS (Standard)**.  
- Need **durable buffer**, **back‑pressure**, or **consumer‑paced pull**? → **SQS (Standard/FIFO)**.  
- Need **ordering/exactly‑once**? → **FIFO** variants (SNS FIFO + SQS FIFO).  