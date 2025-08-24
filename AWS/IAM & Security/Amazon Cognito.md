# **Amazon Cognito**

## **Overview**
**Amazon Cognito** is a **user identity and authentication service** for web and mobile applications.  
It provides **sign-up, sign-in, and access control** for app users, with built-in integration for social identity providers and enterprise directories.

---

## **Details**
- **Core Capabilities**
	- **User Pools**: Managed user directories for app users.
		- Handles sign-up, sign-in, MFA, password recovery.
		- Supports OAuth 2.0, SAML, and OpenID Connect (OIDC).
	- **Identity Pools (Federated Identities)**:
		- Grants temporary AWS credentials via [[AWS Security Token Service (STS)]].
		- Lets app users access AWS services directly (e.g., S3, DynamoDB).
	- **Social & Enterprise Federation**:
		- Integrates with Facebook, Google, Apple, Amazon.
		- Integrates with SAML IdPs (e.g., Okta, Azure AD).
	- **Security**:
		- MFA support, password policies, adaptive authentication.
		- Token-based (JWT, OAuth) authentication.
		- Encryption with [[AWS Key Management Service (KMS)]].

- **Integration**
	- Works with web and mobile SDKs.
	- Can be combined with API Gateway + Lambda for **serverless authentication**.
	- Often paired with [[AWS IAM Identity Center (SSO)]] for workforce users, while Cognito is for **application end-users**.

---

## **Use Cases**
- Adding **sign-up/sign-in** functionality to apps without building your own auth system.
- Federating **social or enterprise identities** into your app.
- Providing **temporary AWS access** to mobile/web app users.
- Secure authentication layer for SaaS or consumer-facing applications.

---

## **Exam Tips**
- **Cognito = end-user identity (apps)** vs **IAM = AWS account/workforce identity**.  
- **User Pools** = authentication (who can log in).  
- **Identity Pools** = authorization (what they can access in AWS).  
- For **federation to social IdPs** → Cognito.  
- For **federation to workforce accounts** → [[AWS IAM Identity Center (SSO)]].  
- Exam questions often test: **User Pools vs Identity Pools distinction**.  

---

## **References**
- [AWS Docs: Amazon Cognito](https://docs.aws.amazon.com/cognito/)  
- [Amazon Cognito FAQs](https://aws.amazon.com/cognito/faqs/)  