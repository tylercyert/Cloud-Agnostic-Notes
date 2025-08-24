---
aliases:
  - AWS CloudWatch
  - AWS CloudTrail
  - Amazon CloudWatch
---

## **Overview**
**AWS CloudTrail & CloudWatch** are core AWS monitoring and governance services.  
- **AWS CloudTrail**: Records **API calls and user activity** across AWS accounts for auditing and compliance.  
- **Amazon CloudWatch**: Collects **logs, metrics, and events** for monitoring, alerting, and automated responses.  

Together, they provide **visibility, security, and operational monitoring**.

## **Details**
- **AWS CloudTrail**
	- Tracks **all API activity** in your account (who did what, when, and from where).  
	- Logs:  
		- API calls via Console, CLI, SDKs, or AWS services.  
		- User identity, timestamp, source IP, request/response details.  
	- Stores logs in [[Amazon S3]].  
	- Can integrate with [[AWS CloudTrail & CloudWatch|AWS CloudWatch]] Logs for real-time monitoring.  
	- Key use cases: **security auditing, compliance, troubleshooting**.  
	- **Enabled by default** for account activity (90-day event history).  

- **Amazon CloudWatch**
	- **Metrics**
		- System and service-level metrics (CPU, memory, latency, errors).  
		- Custom metrics supported.  
	- **Logs**
		- Collect logs from applications, Lambda, and system agents.  
	- **Alarms**
		- Trigger notifications or actions (e.g., scale EC2, send SNS alerts).  
	- **Events (EventBridge)**
		- Respond to AWS service events with automated actions (e.g., trigger [[AWS Lambda (Serverless)]]).  
	- **Dashboards**
		- Visualize metrics and health status of resources.  

- **Integration**
	- CloudTrail → compliance & audit trail.  
	- CloudWatch → performance monitoring & alerting.  
	- Together:  
		- Detect unusual activity (CloudTrail logs → CloudWatch alarms).  
		- Automate remediation (CloudWatch Events + Lambda).  

## **Exam Tips**
- **CloudTrail = “who did what”** (API logging, auditing).  
- **CloudWatch = “what’s happening”** (metrics, logs, alarms).  
- CloudTrail logs → stored in S3.  
- CloudWatch alarms can trigger auto-scaling, SNS, or Lambda.  
- Exam trick: CloudTrail = **governance/audit**, CloudWatch = **monitoring/operations**.  

## **References**
- [AWS CloudTrail](https://aws.amazon.com/cloudtrail/)  
- [Amazon CloudWatch](https://aws.amazon.com/cloudwatch/)  
- [AWS Monitoring & Observability](https://aws.amazon.com/products/management-tools/)  
