## **Overview**
**Azure Entra ID** manages identities (users, groups, service principals) and their authentication, often via group memberships. **Azure RBAC** assigns those identities roles at different scopes (management group, subscription, resource group, or resource), which define what actions they can perform on Azure resources.
## **Key Points**
- **Entra ID:** Identity management (who you are)
- **RBAC:** Access management (what you can do)
## **AWS Parallel**
In AWS, **IAM** is a single service that handles both identity and access management. In Azure, these responsibilities are split:
- **Azure Entra ID** → Identity management (authentication, users, groups, service principals)
- **Azure RBAC** → Access control (roles and permissions across resources)
Together, they provide the equivalent functionality of **AWS IAM**.
## **References**
- [Microsoft Learn: What is Microsoft Entra ID?](https://learn.microsoft.com/en-us/entra/fundamentals/whatis)
- [Microsoft Learn: What is Azure RBAC?](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview)