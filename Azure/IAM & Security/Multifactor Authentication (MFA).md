## **Overview**
**Multifactor Authentication (MFA)** adds an extra layer of security by requiring users to provide **two or more forms of verification** when signing in. It protects accounts even if a password is compromised.  

## **Details**
- **Factors used**  
	1. **Something you know** – password, PIN.  
	2. **Something you have** – phone, hardware token, authenticator app.  
	3. **Something you are** – fingerprint, face recognition.  
- **How it works in Azure**  
	- Managed through [[Microsoft Entra ID (Azure AD)]].  
	- Enforced via [[Microsoft Entra Conditional Access]] policies.  
	- Can use Microsoft Authenticator app, SMS, phone call, FIDO2 security key, or Windows Hello.  
- **Use cases**  
	- Protecting privileged accounts (admins).  
	- Securing access to sensitive data.  
	- Meeting compliance requirements (HIPAA, PCI-DSS, etc.).  

## **Exam Tips**
- MFA = **two+ factors** from different categories (not just two passwords).  
- Strongly recommended for all accounts; required for administrators.  
- Works seamlessly with SSO → after signing in once, MFA can be required only when risk policies trigger.  

## **References**
- [Microsoft Learn: What is multifactor authentication?](https://learn.microsoft.com/en-us/azure/active-directory/authentication/concept-mfa-howitworks)  