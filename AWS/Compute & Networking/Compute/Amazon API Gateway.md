## **Overview**
**Amazon API Gateway** is a **fully managed service** that allows you to create, publish, secure, monitor, and manage **APIs at scale**.  
It acts as an **entry point (front door)** for applications to access backend services like [[AWS Lambda (Serverless)]], [[Amazon EC2 (Elastic Compute Cloud)]], or on-prem systems.

---
## **Details**
- **Core Capabilities**
	- Supports **REST APIs**, **WebSocket APIs**, and **HTTP APIs**.
	- Handles **authorization**, **access control**, **throttling**, and **rate limiting**.
	- Integrates natively with [[AWS Lambda (Serverless)]], but can also front EC2, ECS, EKS, or on-prem backends.
	- Provides **SDK generation** for clients.
	- Can transform requests/responses (mapping templates, validation).
	- Caching layer available for performance optimization.
- **Security**
	- Authentication and authorization via:
		- [[AWS Identity and Access Management (IAM)|AWS IAM]]
		- [[Amazon Cognito]] (JWT, OAuth2)
		- Custom authorizers (Lambda)
	- TLS termination via [[AWS Certificate Manager (ACM)]].
	- Integrated with [[AWS Shield & WAF|AWS WAF]] for protection against attacks.
- **Scaling & Management**
	- Fully managed, auto scales with traffic.
	- Global deployment with low-latency endpoints.
	- Provides monitoring/metrics in [[Amazon CloudWatch]].
	- Lifecycle support for versioning and stages (dev/test/prod).
- **Pricing**
	- Pay per API call (request-based pricing).
	- Optional costs for caching, data transfer, and custom domain names.

---

## **Use Cases**
- Building **serverless applications** with Lambda backends.
- Exposing **RESTful APIs** for microservices.
- Real-time **WebSocket APIs** for chat, IoT, or notifications.
- Acting as a **front door** for hybrid systems (on-prem + cloud).
- Throttling and securing APIs for SaaS or external developers.

---

## **Exam Tips**
- **API Gateway = API front door.**  
- Best for **serverless architectures** (API Gateway + Lambda).  
- Supports **REST, HTTP, and WebSocket APIs**.  
- For **global edge caching of static/dynamic content** → [[Amazon CloudFront]], not API Gateway.  
- For **service-to-service communication within microservices** → [[AWS App Mesh]], not API Gateway.  
- Watch for scenarios about **rate limiting, request transformation, or API authentication** → API Gateway is the right answer.  

---

## **References**
- [AWS Docs: API Gateway](https://docs.aws.amazon.com/apigateway/)  
- [Amazon API Gateway FAQs](https://aws.amazon.com/api-gateway/faqs/)  