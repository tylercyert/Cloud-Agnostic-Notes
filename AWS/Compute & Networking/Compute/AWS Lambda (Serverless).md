## **Overview**
**AWS Lambda** is a **serverless compute service** that lets you run code without provisioning or managing servers.  
You upload your function code, define triggers, and Lambda automatically handles **scaling, availability, and execution**.

## **Details**
- **Core Concept**
	- Event-driven, serverless compute.  
	- Pay only for the **compute time consumed** (milliseconds).  
	- No need to manage infrastructure.  

- **Triggers / Event Sources**
	- Invoked by events from:
		- [[Amazon S3]] (e.g., object upload).  
		- [[Amazon DynamoDB]] Streams.  
		- [[Amazon API Gateway]] for REST/HTTP APIs.  
		- [[Amazon EventBridge]] and [[Amazon SNS]].  
		- Direct SDK or CLI invocation.  

- **Scaling**
	- Automatically scales from **zero to thousands of requests per second**.  
	- Concurrency limit can be configured (reserved concurrency).  

- **Supported Runtimes**
	- Node.js, Python, Java, Go, Ruby, .NET Core, custom runtimes via container images.  

- **Resource Model**
	- Functions limited to:
		- **Memory**: 128 MB – 10 GB.  
		- **Execution time**: up to 15 minutes per invocation.  
		- **Ephemeral storage**: 512 MB by default (configurable up to 10 GB).  
	- Persistent state stored externally (e.g., [[Amazon S3]], [[Amazon RDS]], [[DynamoDB]]).  

- **Networking**
	- By default, Lambda runs in AWS-managed VPC.  
	- Can connect to customer VPC for access to private resources.  

- **Integration**
	- Works with [[AWS CloudFormation]] and IaC tools for deployment.  
	- Use with [[AWS Identity and Access Management (IAM)]] for execution role permissions.  
	- Monitoring via [[AWS CloudWatch]] (logs, metrics, alarms).  

- **Pricing**
	- Pay per **invocation** and per **GB-second** of compute used.  
	- 1M requests and 400,000 GB-seconds free per month (Free Tier).  

## **Exam Tips**
- **Lambda = serverless compute**.  
- **Max runtime = 15 minutes**.  
- Scales automatically, no provisioning.  
- Common exam hook: **event-driven triggers** (S3 uploads, API Gateway calls, DynamoDB streams).  
- For persistent data → must use external storage (S3, DynamoDB, RDS).  
- Compare: **EC2 = servers**, **ECS/EKS = containers**, **Lambda = serverless functions**.  

## **References**
- [AWS Lambda](https://aws.amazon.com/lambda/)
- [AWS Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
