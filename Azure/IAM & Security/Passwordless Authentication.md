## **Overview**
**Passwordless Authentication** removes the need for traditional passwords by using **strong authentication methods** such as biometrics, hardware tokens, or authentication apps. It reduces risk from phishing, brute force, and password reuse.

## **Details**
- **Why passwordless?**
	- Passwords are the weakest link (phishing, leaks, reuse).  
	- Passwordless reduces IT overhead (no reset requests).  
	- Improves user experience (faster, frictionless sign-in).  

- **Azure-supported passwordless methods** (via [[Microsoft Entra ID (Azure AD)]]):  
	1. **Windows Hello for Business** – biometric sign-in (face, fingerprint, PIN tied to device).  
	2. **Microsoft Authenticator App** – user approves a push notification or enters a code.  
	3. **FIDO2 Security Keys** – physical keys (USB, NFC, Bluetooth) with public/private key cryptography.  

- **How it works**  
	- User signs in with a passwordless method.  
	- Entra ID validates identity using strong authentication + device/credential binding.  
	- Can be combined with [[Microsoft Entra Conditional Access]] for risk-based policies.  

## **Exam Tips**
- Passwordless ≠ MFA, but can **satisfy MFA** if multiple factors are used (e.g., FIDO2 key + PIN).  
- Expect to know the **3 main passwordless methods**: Windows Hello, Authenticator App, FIDO2 keys.  
- Benefits: higher security, reduced password fatigue, lower IT support costs.  

## **References**
- [Microsoft Learn: Passwordless authentication options](https://learn.microsoft.com/en-us/azure/active-directory/authentication/concept-authentication-passwordless)  