## **Overview**
**AWS X-Ray** is a **distributed tracing service** that helps developers analyze and debug production, distributed, and microservice-based applications.  
It provides **end-to-end request tracking**, latency analysis, and root cause identification.

---

## **Details**
- **Core Capabilities**
	- Traces requests as they travel through applications and services.
	- Identifies performance bottlenecks, errors, and high-latency components.
	- Generates a **service map** of interactions between services.
	- Provides annotations and metadata for filtering and searching traces.

- **How It Works**
	- Applications instrumented with the X-Ray SDK or agents generate **trace data**.
	- Trace segments are collected and sent to X-Ray service.
	- Service aggregates data into a **trace map** showing dependencies and latency.

- **Integrations**
	- Works with compute services:
		- [[Amazon EC2 (Elastic Compute Cloud)]]
		- [[Amazon Elastic Container Service (ECS)|Amazon ECS]]
		- [[Amazon Elastic Kubernetes Service (EKS)|Amazon EKS]]
		- [[AWS Lambda (Serverless)]]
	- Integrated with [[Amazon API Gateway]] for tracing API calls.
	- Works with [[Amazon CloudWatch]] for metrics/logs correlation.

- **Security**
	- IAM controls access to trace data.
	- Encrypts data at rest using [[AWS Key Management Service (KMS)]].
	- Sampling rules limit the amount of data collected to reduce cost.

---

## **Use Cases**
- Debugging microservice applications.
- Identifying root causes of slow responses or errors.
- Understanding application dependencies and bottlenecks.
- Performance optimization of distributed workloads.

---

## **Exam Tips**
- **X-Ray = distributed tracing** (vs CloudWatch = metrics/logs, Config = compliance, GuardDuty = threat detection).  
- Provides **service maps** → visualize dependencies.  
- Exam scenario: *“Which service helps identify which microservice in a chain is causing latency?”* → **X-Ray**.  
- Use **X-Ray + CloudWatch** together for full observability.  

---

## **References**
- [AWS Docs: X-Ray](https://docs.aws.amazon.com/xray/)  
- [AWS X-Ray FAQs](https://aws.amazon.com/xray/faqs/)  