## **Overview**
**AWS Cognito** is a fully managed **identity and authentication service** for web and mobile applications.  
It provides **user sign-up/sign-in, federated identities, and access control** without needing to build custom authentication systems.

## **Details**
- **Core Features**
	- **User Pools**
		- Managed user directories for app users.  
		- Provide sign-up, sign-in, password reset, MFA, and account recovery.  
		- Support OAuth2, SAML, and OpenID Connect (OIDC).  
	- **Identity Pools (Federated Identities)**
		- Grant temporary AWS credentials to users.  
		- Allow federation from external identity providers:  
			- Social: Google, Facebook, Apple, Amazon.  
			- Enterprise: SAML-based IdPs, OIDC providers.  
	- **Hosted UI**
		- Prebuilt login UI for apps, customizable with branding.  

- **Security**
	- Supports **MFA**, password policies, and advanced security features (risk-based authentication).  
	- Integrates with [[AWS Identity and Access Management (IAM)]] to assign roles/permissions.  
	- Provides **temporary AWS credentials** using **STS** for authenticated users.  

- **Integration**
	- Works with [[Amazon API Gateway]], [[AWS Lambda (Serverless)]], and mobile SDKs.  
	- Common in serverless architectures to handle authentication/authorization.  
	- Can be extended with **Lambda triggers** (e.g., custom auth flows, pre/post sign-up actions).  

- **Use Cases**
	- Adding authentication to web/mobile apps.  
	- Federating external identities (e.g., login with Google).  
	- Controlling access to AWS resources from client apps.  

- **Billing**
	- Free tier includes monthly active users.  
	- Pay based on **monthly active users (MAUs)** and features used (e.g., MFA, advanced security).  

## **Exam Tips**
- **User Pools = authentication** (sign-up/sign-in).  
- **Identity Pools = authorization** (temporary AWS credentials).  
- Cognito integrates with **IAM roles**.  
- Social logins = via Identity Pools.  
- Cognito is commonly paired with **API Gateway + Lambda** in exam scenarios for serverless apps.  

## **References**
- [Amazon Cognito](https://aws.amazon.com/cognito/)  
- [Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html)  
