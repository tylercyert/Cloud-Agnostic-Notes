## **Overview**
**External identities** in [[Microsoft Entra ID (Azure AD)]] allow organizations to securely collaborate with users outside their tenant, such as partners, vendors, or customers.  
**Guest access** extends these identities into resources like Microsoft Teams, SharePoint, or Azure resources, with controlled permissions.

## **Details**
- **External Identities**  
	- Lets you invite and manage **B2B (business-to-business)** users in your directory.  
	- External users authenticate with their **own identity provider** (e.g., Microsoft account, Google, Facebook, or another Entra ID tenant).  
	- Uses the **Azure AD B2B** model (no need to create a new local account).  

- **Guest Access**  
	- Guest accounts appear in Entra ID with **user type = Guest**.  
	- Guests can be assigned roles/permissions via [[Azure Role Based Access Control (RBAC)]].  
	- Access is limited and can be governed by policies such as:  
		- [[Microsoft Entra Conditional Access]] (MFA, device compliance).  
		- Expiration/automatic removal of guest accounts.  
		- Least privilege assignment.  

- **Use Cases**  
	- Vendors collaborating in Teams/SharePoint.  
	- Contractors accessing specific Azure resources.  
	- Customers using external-facing apps that authenticate via Azure AD B2C (business-to-customer).  

## **Exam Tips**
- **External identities** = authentication mechanism for outside users.  
- **Guest access** = how those identities are represented in your tenant.  
- External users don’t need a new username/password—**they bring their own identity**.  
- Be able to distinguish **B2B (collaboration)** vs **B2C (customer-facing apps)**.  

## **References**
- [Microsoft Learn: External Identities](https://learn.microsoft.com/en-us/azure/active-directory/external-identities/what-is-b2b)  
- [Microsoft Learn: Guest Access in Azure AD](https://learn.microsoft.com/en-us/azure/active-directory/external-identities/guest-access)  