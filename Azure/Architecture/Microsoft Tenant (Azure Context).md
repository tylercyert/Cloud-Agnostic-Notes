---
aliases:
  - Azure tenant
  - Entra ID tenant
---
## **Overview**
A Microsoft tenant (or [[Entra ID]] tenant) is a dedicated instance of [[Entra ID]] for an organization. It acts as the **identity and authentication boundary** in [[Azure]].
## **Details**
- Provides **directory services** for users, groups, and applications.  
- **Global scope**: a tenant is not tied to a single region and can span all Azure regions.  
- Every tenant is associated with **one or more subscriptions**.  
- Each subscription belongs to exactly **one tenant**.  
- Tenants ensure centralized management of identities, authentication, and security policies.  
## **Exam Tips**
- **Tenant = identity boundary**  
- **Subscription = billing + resource boundary**  
- **1 tenant → many subscriptions**  
- **1 subscription → 1 tenant only**  
## **References**
- [Microsoft Learn: Tenants, users, and subscriptions](https://learn.microsoft.com/en-us/entra/fundamentals/whatis#tenants-users-and-subscriptions)  
- [[Microsoft Tenant (Azure Context)]]