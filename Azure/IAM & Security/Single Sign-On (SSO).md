## **Overview**
**Single Sign-On (SSO)** in Azure allows a user to authenticate **once** and then gain access to multiple applications and services without being prompted to sign in again. This improves security, reduces password fatigue, and enhances productivity.

## **Details**
- **How it works**  
	- The user signs in with their identity in [[Microsoft Entra ID (Azure AD)]].  
	- An **authentication token** is issued and reused across sessions/apps.  
	- Applications trust Entra ID as the **identity provider (IdP)**.  
- **Benefits**  
	- Fewer credentials for users to remember.  
	- Centralized access management and logging.  
	- Reduced attack surface for credential theft.  
- **Where it applies**  
	- Microsoft 365 apps (Outlook, Teams, SharePoint, etc.).  
	- SaaS apps integrated with [[Microsoft Entra ID (Azure AD)]].  
	- On-prem apps federated via [[Microsoft Entra Domain Services (Managed Domain)]].  
- **Protocols used**  
	- SAML, OAuth 2.0, OpenID Connect, WS-Fed.  

## **Exam Tips**
- SSO = Authenticate **once**, access **many apps**.  
- Depends on **trust** between Entra ID and the app.  
- Cuts down on password prompts, centralizes policies (like MFA, Conditional Access).  

## **References**
- [Microsoft Learn: What is single sign-on?](https://learn.microsoft.com/en-us/azure/active-directory/manage-apps/what-is-single-sign-on)  